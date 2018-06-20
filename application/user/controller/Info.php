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

class Info extends Base{
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
        //获取自身id
        $id=$this->id;

        if($request->isPost()){
            //执行修改逻辑
            $param=$request->param();
            $this->user->allowField(true)->save($param,['id'=>$id]);
            return $this->redirect('account');
        }
        $info=$this->user->find($id);
        $this->assign('info',$info);
        return $this->fetch('set-account');
    }

    //账户信息
    public function account(){

        $info=$this->user->alias('a')->join('user_address d','a.def_address_id=d.id','LEFT')->field('a.*,d.address')->find($this->id);

        $this->assign('result',$info);
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
    // 添加收货地址
    public function addAddress(){

        $request=$this->request;

        if($request->isPost()){
            $param=$request->param();
            $param['user_id']=$this->id;
            $this->userAddress->save($param);
            return $this->redirect('addAddress');
        }
        $address_list=$this->userAddress->where('user_id',$this->id)->select();
        $def_address=$this->user->where('id',$this->id)->field('def_address_id')->find();
        $def_address_id=$def_address['def_address_id'];

        $this->assign('def_address_id',$def_address_id);
        $this->assign('address_list',$address_list);

        return $this->fetch('add-address');
    }
    //设置默认收货地址
    public function setDefaultAddress($id){
        $this->user->where('id',$this->id)->setField('def_address_id',$id);
        return 'ok';
    }
    //删除收货地址
    public function delAddress($id){
        $this->userAddress->destroy($id);
        return $this->redirect('addAddress');
    }
    //修改头像
    public function setHead(){
        if($this->request->isPost()){
            $param=$this->request->param();
            $this->user->allowField(true)->save($param,['id'=>$this->id]);
            //更新session
            session('head_url',$param['head_url']);
            $this->redirect('index/index');
        }
        $info=$this->user->field('head_url')->find($this->id);
        $this->assign('info',$info);
        return $this->fetch('set-head');
    }

}