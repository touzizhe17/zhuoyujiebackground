<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018/4/29
 * Time: 10:26
 */
namespace app\user\controller;

use think\Request;
use think\Db;
use app\common\model\User as UserModel;

class User extends Base{
    private $user;
    public function __construct(Request $request = null)
    {
        parent::__construct($request);
        $this->user=new UserModel();
    }

    // 用户信息显示
    public function info(){
        $request=$this->request;
        $id=session(config('USER_ID'));
        if($request->isPost()){
            //执行修改逻辑
            $param=$request->param();
            $this->user->allowField(true)->save($param,['id'=>$id]);

        }
            $info=$this->user->find($id);
            $this->assign('info',$info);

        return $this->fetch();
    }
    // 安全设置，修改密码等
    public function changepwd(){
        $error='';
        $success='';
        $request=$this->request;
        $id=session(config('USER_ID'));
        if($request->isPost()){
            //执行修改逻辑
            $param=$request->param();
            $old=$param['old'];
            $res=$this->user->field('password')->find($id);

            if($old==$res['password']){
                //旧密码正确，更新密码
                $this->user->allowField(true)->save($param,['id'=>$id]);
                $success='修改成功';
            }else{
                $error='旧密码不正确';
            }

        }
        $this->assign('success',$success);
        $this->assign('error',$error);
        return $this->fetch();
    }
    // 收货地址
    public function address(){
        $id=session(config('USER_ID'));
        $request=$this->request;
        $user_address=Db::name('user_address');

        if($request->isPost()){

            $param=$request->param();
            $param['user_id']=$id;
            $user_address->insert($param);

        }
        $address_list=$user_address->where('user_id',$id)->select();
        $this->assign('address_list',$address_list);
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
                //修改session中头像地址
                session(config('USER_HEAD'),$result);

            }else{
                // 上传失败获取错误信息
                $result=$file->getError();
            }
        }
        return json($result);
    }

}