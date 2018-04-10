<?php
/**
 * 私人订制
 */
namespace app\index\controller;
use think\Controller;
use think\Request;

class Siren extends Controller
{
    public function index()
    {
        return $this->fetch('siren');
    }
}