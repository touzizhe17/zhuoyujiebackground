<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018/4/8
 * Time: 21:48
 */
namespace app\index\controller;

use think\Controller;

class User extends Controller {

    public function login(){

        return $this->fetch();
    }
    public function register(){

        return $this->fetch();
    }
}
