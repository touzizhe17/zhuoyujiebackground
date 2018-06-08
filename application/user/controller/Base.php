<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018/5/8
 * Time: 9:58
 */
namespace app\user\controller;

use think\Controller;
use think\Request;

class Base extends Controller{
    public $id;
    public $name;
    public $headUrl;
    public function __construct(Request $request = null)
    {
        parent::__construct($request);
        $this->id=session(config('USER_ID'));
        $this->name=session(config('USER_NAME'));
        $this->headUrl=session(config('USER_HEAD'));

        if($this->id==null){
            $this->redirect('index/login/login');
        }

    }
}