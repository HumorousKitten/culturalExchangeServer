<?php

require('db/DB.php');
require('user/User.php');


class App
{
    function __construct()
    {
        $db = new DB();
        $this->user = new User($db);
    }

    function login($params)
    {
        if (array_key_exists('email',$params) && array_key_exists('password',$params)) {
            return $this->user->login($params['email'], $params['password']);
        }
    }

    function registration($params)
    {
        if (array_key_exists('login',$params) && array_key_exists('email',$params) && array_key_exists('password',$params)){
            return $this->user->registration($params['login'], $params['email'], $params['password']);
        }
    }

    function getUserLevels($params)
    {
        if(array_key_exists('token',$params)){
            return $this->user->getUserLevels($params['token']);
        }
    }

    function getUserData($params){
        if (array_key_exists('token', $params)) {
            return $this->user->getUserData($params['token']);
        }
    }

    function getUserId($params)
    {
        if(array_key_exists('token',$params)){
            return $this->user->getUserId($params['token']);
        }
    }

    function getLevel($params)
    {
        if(array_key_exists('level_id',$params) && array_key_exists('sublevel',$params)){
            return $this->user->getLevel($params['level_id'], $params['sublevel']);
        }
    }

    function updateResultLevel($params)
    {
        if(array_key_exists('level_id',$params) 
        && array_key_exists('sublevel',$params) 
        && array_key_exists('token',$params)
        && array_key_exists('cpm',$params)
        && array_key_exists('wpm',$params)
        && array_key_exists('accuracy',$params)){
            return $this->user->updateResultLevel($params['level_id'], $params['sublevel'], $params['token'], $params['cpm'], $params['wpm'], $params['accuracy']);
        }
    }
    function getBestResult($params)
    {
        if(array_key_exists('token',$params)){
            return $this->user->getBestResult($params['token']);
        }
    }

    



}