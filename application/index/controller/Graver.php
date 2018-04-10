<?php
/**
 * 玉雕名家
 */
namespace app\index\controller;
use think\Controller;
use think\Request;

class Graver extends Controller
{
    public function index()
    {
        return $this->fetch('graver');
    }
    public function graverDetail()
    {
        return $this->fetch();
    }
}