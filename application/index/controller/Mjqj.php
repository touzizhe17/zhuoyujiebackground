<?php
/**
 * 民间巧匠
 */
namespace app\index\controller;
use think\Controller;
use think\Request;

class Mjqj extends Controller
{
    public function index()
    {
        return $this->fetch('mjqj');
    }
}