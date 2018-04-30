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
        $this->view->engine->layout('layout/layout_user');

    }
    public function index(){

        return $this->fetch();
    }
    // 用户信息显示
    public function info(){

        return $this->fetch();
    }
    // 安全设置，修改密码等
    public function security(){

        return $this->fetch();
    }
}