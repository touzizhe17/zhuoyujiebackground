<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018/4/8
 * Time: 21:48
 */
namespace app\index\controller;

use think\Controller;
use think\Request;

class User extends Controller {

    public function __construct(Request $request = null)
    {
        parent::__construct($request);
//        $this->view->engine->layout(false);
    }

    public function login(){
        $request=$this->request;
        $user=db('user');
        if($request->isPost()){
            $param=$request->post();

            $res=$user->where('username|email|mobile',$param['user'])->where('password',$param['pwd'])->find();
            if($res!=null){
                // 登录成功
//                $this->redirect('index/index/index');

            }




        }

        return $this->fetch();
    }
    public function register(){

        return $this->fetch();
    }
}
