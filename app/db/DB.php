<?php

require('config.php');
class DB
{
    function __construct()
    {
        try {
            $this->db = new PDO(
                'mysql:host=' . DB_HOST . ';port=' . DB_PORT . ';dbname=' . DB_NAME,
                DB_USER,
                DB_PASSWORD
            );
        } catch (Exception $e) {
            print_r("Не удалось подлкючиться к БД");
            die();
        }
    }

    function __destruct()
    {
        $this->db = null;
    }


    // возвращение массива из запроса
    private function getArray($query) {
        $count = 0;
        $stmt = $this->db->query($query);
        $result = array();
         while($row = $stmt->fetchObject()) {
            $result[] = $row;
            $count++;
        }
        
        return $result;
    }

    // поиск пользователя по email
    public function getUser($email)
    {
        $query = 'SELECT * FROM users WHERE email="' . $email . '"';
        return $this->db->query($query)->fetchObject();
    }


    // добавление данных нового пользователя
    public function registration($login, $email, $password)
    {
        $token = md5(rand());

        $query = "INSERT INTO 
        `users`(`login`, `email`, `password`, `token`) 
        VALUES ('$login','$email','$password','$token')";

        $this->db->query($query);
        return true;
    }

    //возвращает уровень "массив символов"
    public function getLevel($levelId, $sublevel)
    {
        $query = "SELECT levels.str 
        FROM `levels` 
        WHERE level = '$levelId' 
        AND sublevel = '$sublevel' ";

        $str = $this->db->query($query)->fetchObject();
        return $str->{'str'};
    }

    public function getUserData($token){
        $query = "SELECT users.login, users.email 
        FROM `users` 
        WHERE token = '$token'";

        $str = $this->db->query($query)->fetchObject();
        return $str;
    }

    // возвращает id пользователя 
    public function getUserId($token)
    {
        $query = "SELECT users.id 
        FROM `users` 
        WHERE token = '$token'";

        $str = $this->db->query($query)->fetchObject();
        return $str->{'id'};
    }

    // метод вызывается после каждого прохождения уровня
    // обновляет результаты, если точность (accuarcy) стала выше предыдущей
    // если уровень пройден в первый раз, то записывает любые результаты
    public function updateResultLevel($levelId, $sublevel, $token, $cpm, $wpm, $accuracy)
    {
        $userId = $this->getUserId($token);

        $query = "SELECT results.cpm, results.wpm, results.accuracy 
        FROM `results` 
        WHERE level = '$levelId' 
        AND sublevel = '$sublevel' 
        AND user_id = '$userId'";

        $results = $this->db->query($query)->fetchObject();

        if ($results && $accuracy > $results->{'accuracy'}) {
            $query = "UPDATE `results` SET 
            `cpm`='$cpm',
            `wpm`='$wpm',
            `accuracy`='$accuracy' 
            WHERE user_id = '$userId' 
            AND level = '$levelId' 
            AND sublevel = '$sublevel' ";
            $this->db->query($query)->fetchObject();

        }else if(!$results){
            $query = "INSERT INTO `results`
            (`user_id`, `level`, `sublevel`, `cpm`, `wpm`, `accuracy`) 
            VALUES ('$userId','$levelId','$sublevel' ,'$cpm','$wpm','$accuracy' )";
            $this->db->query($query)->fetchObject();
        }

        return true;
    }

    
    // возвращает массив успешно пройденых уровней конкретного пользователя,
    // где точность (accuracy) выше 90%
    public function getUserLevels($token)
    {
        $userId = $this->getUserId($token);
        $query = "SELECT `level`, `sublevel` 
        FROM `results` 
        WHERE user_id = '$userId' 
        AND accuracy > 90";
        $results = $this->getArray($query);
        if($results){
            return $results;
        }else{
            return "nothing";
        }
    }

    // возвращает level, sublevel, cpm, wpm и accuracy пользователя,
    // где находится наилучший результат точности (accuracy) и cpm или просто accuracy.
    // если нет результатов -> ни один уровень не был пройден (на любой результат)
    public function getBestResult($token)
    {
        $userId = $this->getUserId($token);
        $query = "SELECT results.cpm, results.wpm, results.accuracy, results.level, results.sublevel, results.user_id  
        FROM `results` WHERE
        accuracy = (SELECT MAX(accuracy) FROM results WHERE results.user_id = '$userId')
        AND cpm = (SELECT MAX(cpm) FROM results WHERE results.user_id = '$userId')
        OR accuracy = (SELECT MAX(accuracy) FROM results WHERE results.user_id = '$userId')
        AND results.user_id = '$userId' ";

        return $this->db->query($query)->fetchObject();
    }

    
}