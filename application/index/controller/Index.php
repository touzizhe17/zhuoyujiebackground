<?php
namespace app\index\controller;

use think\Controller;
use think\Request;

class Index extends Controller
{
    public function index()
    {
        return $this->fetch();
    }

    public function dongtai()
    {
        return $this->fetch();
    }

}
