<?php
/**
 * 收藏
 */
namespace app\index\controller;
use think\Controller;
use think\Request;

class Collect extends Controller
{
    public function index()
    {
        return $this->fetch('collect');
    }
}