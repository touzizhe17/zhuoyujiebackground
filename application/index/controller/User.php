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
use app\common\model\User as UserModel;

class User extends Controller{
    private $user;
    public function __construct(Request $request = null)
    {
        parent::__construct($request);
        $this->view->engine->layout(false);
        $this->user=new UserModel();
        $id=session(config('USER_ID'));
        if($id==null){
            $this->redirect('index/login/login');
        }

    }
    //整个后台
    public function index(){

        return $this->fetch();
    }
    //后台首页
    public function main(){

        return $this->redirect('info');
    }
    //
    public function logout(){
        session(null);

      return  $this->redirect('index/login/logout');

    }
    // 用户信息显示
    public function info(){
        $request=$this->request;
        $id=session(config('USER_ID'));
        if($request->isPost()){
            $param=$request->param();
            $this->user->allowField(true)->save($param,['id'=>$id]);

        }else{
            $info=$this->user->find($id);
            $this->assign('info',$info);
        }
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

        $file=$this->request->file('file');


        if($file){

            $info = $file->move(ROOT_PATH . 'public' . DS . 'uploads/head');

            if($info){
                // 成功上传后 获取上传信息
                $result='uploads/head/'.$info->getSaveName();

            }else{
                // 上传失败获取错误信息
                $result=$file->getError();
            }
        }
        return json($result);
    }

}