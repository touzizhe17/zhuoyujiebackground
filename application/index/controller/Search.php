<?php
namespace app\index\controller;
use think\Controller;
use think\Request;
use app\common\model\Grand as GrandModel;
use app\common\model\Article as ArticleModel;

class Search extends Controller{
    public function index(){
        return $this->fetch('search');
    }
}