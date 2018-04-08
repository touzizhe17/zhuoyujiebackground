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

    public function __construct(Request $request = null)
    {
        parent::__construct($request);
        $this->view->engine->layout('layout/layout_world');
    }

    public function index(){

        return $this->fetch();
    }
    public function zuoping(){

        return $this->fetch();
    }
    public function xianchang(){

        return $this->fetch();
    }
    public function mjjy(){

        return $this->fetch();
    }
}