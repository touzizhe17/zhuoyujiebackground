<?php
/**
 * 原石玉料
 *
 */
namespace app\index\controller;
use think\Controller;
use think\Request;

class Yuanliao extends Controller
{
    public function index()
    {
        return $this->fetch('yuanliao');
    }
}