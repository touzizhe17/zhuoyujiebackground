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

    //订单
    public function index(){

        return $this->fetch(':index');
    }
    //收藏
    public function main(){

        return $this->fetch();
    }
    public function logout(){
        session(null);

        return  $this->redirect('index/login/logout');

    }
}