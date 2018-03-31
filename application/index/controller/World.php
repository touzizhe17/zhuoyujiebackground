<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018/3/24
 * Time: 16:09
 */
namespace app\index\controller;

use think\Controller;
use think\Request;

class World extends Controller{



    public function index(){

        return $this->fetch();
    }
    public function zuoping(){

        return $this->fetch();
    }
}