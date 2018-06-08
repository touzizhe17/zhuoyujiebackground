<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018/5/8
 * Time: 17:00
 */
namespace app\user\controller;

use think\Request;
use app\common\model\User as UserModel;

class Index extends Base{

    //
    public function index(){

        return $this->fetch('index');
    }
    public function logout(){
        session(null);
        return $this->redirect('index/index/index');
    }

}