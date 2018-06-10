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

    public function login($username='',$password='',$url=''){


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
                if($url!=''){
                    return   $this->redirect($url);
                }else{
                    return   $this->redirect('index/index/index');
                }


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
        $json=file_get_contents($url);
        $json=json_decode($json,true);
//        dump($json);die;
        if($json['error_code']==0){
            return json(['error'=>0,'code'=>$code]);
        }
        return json(['error'=>1]);
    }


    //微信登录步骤一,获取code
    public function wxlogin(){
        $red_url='https://www.zhuoyujie.com/index/login/wxinfo';

        $url='https://open.weixin.qq.com/connect/qrconnect?';
        $params['appid']='wx15841791eb74949f';
        $params['redirect_uri']=urlencode($red_url);
        $params['response_type']='code';
        $params['scope']='snsapi_login';
        $params['state']=rand(9999,99999).'#wxchat';

        $url.=$this->getparamsUrl($params);

       return $this->redirect($url);

    }
    //微信登录步骤二,获取token
    public function wxinfo($code='',$state=''){
//        dump('zou----');die;
        if($code==''){
            //用户没有授权
            return $this->redirect(url('index/index/index'));
        }

        $url='https://api.weixin.qq.com/sns/oauth2/access_token?';

        $params['appid']='wx15841791eb74949f';
        $params['secret']='3ade2085e7fee07ed886cbd2376c52d2';
        $params['code']=$code;
        $params['grant_type']='authorization_code';

        $url.=$this->getparamsUrl($params);
        //获取token
        $result=file_get_contents($url);

        $json=json_decode($result,true);

        //步骤三通过token获取用户信息
        $temp['access_token']=$json['access_token'];
        $temp['openid']=$json['openid'];

        $info_url='https://api.weixin.qq.com/sns/userinfo?';

        $result2=$info_url.$this->getparamsUrl($temp);
        //获取用户信息
        $result_info=file_get_contents($result2);

        file_put_contents('info.txt',$result_info);

        $json_info=json_decode($result_info,true);

        $res=$this->user->where('username',$json_info['openid'])->find();

        if($res==null){
            //用户信息
            $info['username']=$json_info['openid'];
            $info['wx_nick']=$json_info['nickname'];
            $info['sex']=$json_info['sex'];
            $info['province']=$json_info['province'];
            $info['city']=$json_info['city'];
            $info['country']=$json_info['country'];
            $info['head_url']=$json_info['headimgurl'];
            $this->user->save($info);

            //保存到session
            session(config('USER_NAME'),$info['wx_nick']);
            session(config('USER_ID'),$this->user->id);
            session(config('USER_HEAD'),$info['head_url']);
        }else{
            //保存到session
            session(config('USER_NAME'),$res['wx_nick']);
            session(config('USER_ID'),$res['id']);
            session(config('USER_HEAD'),$res['head_url']);
        }

        return $this->redirect('index/index/index');

    }
    // 拼接参数并返回拼接好 params部分的url
    function getparamsUrl($params){
        $str='';
        foreach ($params as $k=>$v){
            $str.=$k.'='.$v.'&';
        }
        $p=substr($str,0,strlen($str)-1);
        return $p;
    }
}

