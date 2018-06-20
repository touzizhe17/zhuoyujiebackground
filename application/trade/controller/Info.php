<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018/4/29
 * Time: 10:26
 */
namespace app\trade\controller;

use app\common\model\UserAddress;
use think\Request;
use app\common\model\TradeAdmin;

class Info extends Base{
    private $tradeAdmin;
    
    public function __construct(Request $request = null)
    {
        parent::__construct($request);
        $this->tradeAdmin=new TradeAdmin();
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
            $res=$this->tradeAdmin->field('password')->find($this->id);
            if($old==$res['password']){
                //旧密码正确，更新密码
                $this->tradeAdmin->where('id',$this->id)->setField(['password'=>$param['new_password']]);
                $code='200';

            }
        }
        //返回一个错误码，如果是200则修改成功
        $this->assign('code',$code);
        return $this->fetch();
    }
    public function setHead(){
        if($this->request->isPost()){
            $param=$this->request->param();
            $this->tradeAdmin->allowField(true)->save($param,['id'=>$this->id]);
            //更新session
            session('head_url',$param['head_url']);
            $this->redirect('index/index');
        }
        $info=$this->tradeAdmin->field('head_url')->find($this->id);
        $this->assign('info',$info);
        return $this->fetch('set-head');
    }
    //ajax上传头像,做上传预览
    public function upload(){
        //最大上传图片2M
        $config = [
            'size' => 2097152,
            'ext'  => 'jpg,gif,png,bmp'
        ];

        $file=$this->request->file('file');

        if($file){
            $info = $file->validate($config)->move(ROOT_PATH . 'public' . DS . 'uploads');
            if($info){
                // 成功上传后 获取上传信息
                $result['url']='/public/uploads/'.$info->getSaveName();
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