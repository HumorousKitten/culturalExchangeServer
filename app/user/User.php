<?php

class User
{

    function __construct($db)
    {
        $this->db = $db;
    }


    function login($email, $password)
    {
        $user = $this->db->getUser($email);

        if ($user && $email && md5($password) == $user->password) {
            return array(
                'login' => $user->login,
                'email' => $user->email,
                'token' => $user->token,
            );
        }
        return null;
    }

    function registration($login, $email, $password)
    {

        if ($this->db->getUser($email)) {
            return false;
        } else {
            return $this->db->registration($login, $email, md5($password));
        }
    }

    function getUserLevels($token)
    {
        return $this->db->getUserLevels($token);
    }

    function getUserData($token){
        return $this->db->getUserData($token);
    }

    function getUserId($token)
    {
        return $this->db->getUserId($token);
    }

    function getLevel($levelId, $sublevel)
    {
        return $this->db->getLevel($levelId, $sublevel);
    }

    function updateResultLevel($levelId, $sublevel, $token, $cpm, $wpm, $accuracy)
    {
        return $this->db->updateResultLevel($levelId, $sublevel, $token, $cpm, $wpm, $accuracy);
    }

    function getBestResult($token)
    {
        return $this->db->getBestResult($token);
    }
}
