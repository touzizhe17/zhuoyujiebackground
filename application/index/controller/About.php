<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018/3/24
 * Time: 16:09
 */
namespace app\index\controller;

use think\Controller;

class About extends Controller{

    public function index(){

        return $this->fetch();
    }
    public function contact(){

        return $this->fetch();
    }
    public function aftersale(){

        return $this->fetch();
    }
    public function howbuy(){

        return $this->fetch();
    }
}