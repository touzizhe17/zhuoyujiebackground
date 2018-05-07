<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018/4/8
 * Time: 21:48
 */
namespace app\index\controller;
use app\common\model\User as UserModel;
use think\Controller;
use think\Request;

class Login extends Controller {
    private $user;

    public function __construct(Request $request = null)
    {
        parent::__construct($request);
        $this->user=new UserModel();

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
                session(config('USER_HEAD'),$res['head_url']);

                return   $this->redirect('index/index/index');

            }else{
                $error='用户名或密码错误';
            }

        }
        $this->assign('error',$error);

        return $this->fetch();
    }


    public function register(){
        if($this->request->isPost()){
            $param=$this->request->param();
            $usernaem=$param['username'];
            //判断用户名是否已经被注册过了
            $res=$this->user->where('username',$usernaem)->find();

            if($res==null){
                //没有被注册过
                $param['head_url']='index/images/head.jpg';
                $flag=$this->user->allowField(true)->save($param);
                if($flag){
                    //注册成功,去登陆
                    $this->success('注册成功','index/login/login');
                }
            }else{
                $this->error('注册失败，该用户名已经被注册过了，请重新注册','index/login/login');
            }

        }

        return $this->fetch();
    }

    public function logout(){
        session(null);
        return   $this->redirect('index/index/index');
    }
    //检查用户是否已经登陆
    public function check(){
        $name=session(config('USER_NAME'));
        if($name==null){
            return false;
        }
        return true;
    }
    public function queryUser($user){
        $res=$this->user->where('username',$user)->find();
        if($res!=null){
         return false;
        }
        return true;
    }
    //获取验证码
    public function yzm($mobile){
        $url='http://v.juhe.cn/sms/send?';
        $appkey='f9ccc644054bca9f730f669eafd05b34';
        $tpl_id='75727';
        $code=rand(10000,99999);

        $tpl_val='#code#='.$code;
        $tpl_val=urlencode($tpl_val);
        $param='mobile='.$mobile.'&tpl_id='.$tpl_id.'&tpl_value='.$tpl_val.'&key='.$appkey;
        $url.=$param;
        $json=file_get_contents('json.txt');
        $json=json_decode($json,true);
//        dump($json['error_code']);die;
        if($json['error_code']==0){
            return json(['error'=>0,'code'=>$code]);
        }
        return json(['error'=>1]);
    }
}

