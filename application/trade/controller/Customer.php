<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018/6/19
 * Time: 17:14
 */
namespace app\trade\controller;

use app\common\model\User;

class Customer extends Base{

    public $user;

    public function _initialize()
    {
        parent::_initialize(); // TODO: Change the autogenerated stub
        $this->user= new User();

    }
    public function index(){
        $result=$this->user->paginate(10);
        $this->assign('result',$result);
        return $this->fetch('customer-list');
    }
}