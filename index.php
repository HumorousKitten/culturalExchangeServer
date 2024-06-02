<?php
header("Access-Control-Allow-Origin: *");
error_reporting(-1);

require('app/App.php');

function router($params)
{
    $method = $params['method'];

    if ($method) {
        $app = new App();
        switch ($method) {

            case 'login': return $app->login($params);                  // return login, email and token     [email, password]
            case 'registration': return $app->registration($params);    // if ok return true                 [login, email, password]
            case 'getUserLevels': return $app->getUserLevels($params);  // return array of completed levels  [token]
            case 'getUserData' : return $app->getUserData($params);
            case 'getUserId' : return $app->getUserId($params);         // return user_id                    [token]
            case 'getLevel': return $app->getLevel($params);            // return level (string)             [level_id, sublevel]
            case 'getBestResult': return $app->getBestResult($params);  // return best results               [token]
            case 'updateResultLevel':                                   // update results level              [level_id, sublevel, token, cpm, wpm, accuarcy]
                return $app->updateResultLevel($params);                
              
        }
    }
}



function answer($data)
{
    if ($data) {
        return array(
            'result' => 'ok',
            'data' => $data
        );
    }
    return array('result' => false);
}

echo json_encode(answer(router($_GET)));


