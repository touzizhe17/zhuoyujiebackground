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

class Order extends Base{

    //订单
    public function order(){

        return $this->fetch();
    }
    //收藏
    public function favorite(){

        return $this->fetch();
    }
    //优惠劵
    public function coupons(){

        return $this->fetch();
    }
}