<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018/5/8
 * Time: 17:00
 */
namespace app\trade\controller;

use think\Controller;

use app\common\model\TradeAdmin;

class Login extends Controller {

    //
    public function login(){
        $param=$this->request->param();
        $tradeAdmin=new TradeAdmin();
        $res=$tradeAdmin->where($param)->find();
        $err='200';
        if($this->request->isPost()){
            if($res==null){
                $err='100';
            }else{
                $this->saveSession($res);
                return $this->redirect('trade/index/index');
            }
        }
        $this->assign('err',$err);
        return $this->fetch('login');
    }
    function saveSession($res){
        session(config('USER_ID'),$res['id']);
        session(config('USER_NAME'),$res['username']);
        session(config('USER_HEAD'),$res['head_url']);
    }

}