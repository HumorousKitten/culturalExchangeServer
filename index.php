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


