<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018/4/29
 * Time: 10:26
 */
namespace app\index\controller;

use think\Controller;
use think\Request;
use app\common\model\Article as ArticleModel;
use app\common\model\Grand as GrandModel;

class User extends Controller{

    public function __construct(Request $request = null)
    {
        parent::__construct($request);
        $this->view->engine->layout(false);

    }
    public function index(){

        return $this->fetch();
    }
    public function main(){

        return $this->fetch();
    }
    // 用户信息显示
    public function info(){

        return $this->fetch();
    }
    // 安全设置，修改密码等
    public function changepwd(){

        return $this->fetch();
    }
    // 收货地址
    public function address(){

        return $this->fetch();
    }
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
    //上传头像
    public function uploadHead(){
        $file=$this->request->file('head');
        return json('123');
    }

}