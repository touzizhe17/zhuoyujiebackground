<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018/4/29
 * Time: 10:26
 */
namespace app\user\controller;

use app\common\model\UserAddress;
use think\Request;
use app\common\model\User as UserModel;

class User extends Base{
    private $user;
    private $userAddress;
    public function __construct(Request $request = null)
    {
        parent::__construct($request);
        $this->user=new UserModel();
        $this->userAddress=new UserAddress();
    }
    //修改账户信息
    public function setAccount(){
        $request=$this->request;
        $id=$this->id;

        if($request->isPost()){
            //执行修改逻辑
            $param=$request->param();
            $this->user->allowField(true)->save($param,['id'=>$id]);
            return $this->redirect('setAccount');
        }
        $address_list=$this->userAddress->where('user_id',$this->id)->select();
        $this->assign('address_list',$address_list);

        $info=$this->user->find($id);
        $this->assign('info',$info);
        return $this->fetch('set-account');
    }

    //账户信息
    public function account(){
        $request=$this->request;
        $id=$this->id;
        $info=$this->user->find($id);
        $this->assign('info',$info);
        return $this->fetch('account');
    }


    // 安全设置，修改密码等
    public function changepwd(){
        $request=$this->request;
        $code='0';

        if($request->isPost()){
            $code='100';
            //执行修改逻辑
            $param=$request->param();
            $old=$param['old_password'];
            $res=$this->user->field('password')->find($this->id);
            if($old==$res['password']){
                //旧密码正确，更新密码
                $this->user->where('id',$this->id)->setField(['password'=>$param['new_password']]);
                $code='200';

            }
        }
        //返回一个错误码，如果是200则修改成功
        $this->assign('code',$code);
        return $this->fetch();
    }
    // 收货地址
    public function addAddress(){

        $request=$this->request;

        if($request->isPost()){
            $param=$request->param();
            $param['user_id']=$this->id;
            $this->userAddress->save($param);
            return $this->redirect('addAddress');
        }
        $address_list=$this->userAddress->where('user_id',$this->id)->select();
        $this->assign('address_list',$address_list);

        return $this->fetch('add-address');
    }
    //删除收货地址
    public function delAddress($id){
        $this->userAddress->destroy($id);
        return $this->redirect('addAddress');
    }

    //上传头像
    public function upload(){

        $file=$this->request->file('file');

        if($file){
            $info = $file->move(ROOT_PATH . 'public' . DS . 'uploads/head');
            if($info){
                // 成功上传后 获取上传信息
                $result['url']='uploads/'.$info->getSaveName();
                $result['code']=200;
            }else{
                // 上传失败获取错误信息
                $result['msg']=$file->getError();
                $result['code']=100;

            }
        }
        return json($result);
    }

}