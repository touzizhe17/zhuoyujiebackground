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

    public function __construct(Request $request = null)
    {
        parent::__construct($request);
        $id=session(config('USER_ID'));
        if($id==null){
            $this->redirect('index/login/login');
        }
    }
}