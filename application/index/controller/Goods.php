<?php
/**
 * 作品
 */
namespace app\index\controller;
use think\Controller;
use think\Request;

class Goods extends Controller
{
    public function index()
    {
        return $this->fetch('goods');
    }
    public function goodsDetail()
    {
        return $this->fetch();
    }
}