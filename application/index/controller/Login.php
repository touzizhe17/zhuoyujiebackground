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

class Login extends Controller {

    public function __construct(Request $request = null)
    {
        parent::__construct($request);
    }

    public function login($username='',$password=''){


        if(session(config('USER_NAME'))!=''){
            return   $this->redirect('index/index/index');
        }

        $request=$this->request;
        $user=db('user');
        $error='';
        if($request->isPost()){

            $res=$user->where('username|email|mobile',$username)->where('password',$password)->find();
            if($res!=null){
                // 登录成功
                session(config('USER_NAME'),$res['username']);
                session(config('USER_ID'),$res['id']);

                return   $this->redirect('index/index/index');

            }else{
                $error='用户名或密码错误';
            }

        }
        $this->assign('error',$error);

        return $this->fetch();
    }
    public function register(){

        return $this->fetch();
    }

    public function logout(){

        session(null);
        return   $this->redirect('index/index/index');
    }
    public function check(){
        $name=session(config('USER_NAME'));
        if($name==null){
            return false;
        }
        return true;
    }
}

