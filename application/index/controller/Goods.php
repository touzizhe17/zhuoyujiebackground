<?php
/**
 * 作品
 */
namespace app\index\controller;
use think\Controller;
use think\Request;
use app\common\model\Article as ArticleModel;

class Goods extends Controller
{
    protected function _initialize()
    {
        parent::_initialize();
        $this->article_model  = new ArticleModel();
    }

    public function index()
    {
        return $this->fetch('goods');
    }
    public function goodsDetail($id,$page=0)
    {
        $article_list = $this->article_model->find($id)->alias('a')->field('a.*,g.thumb c,g.name n')->join('grand g','a.author=g.name','LEFT')->order(['a.publish_time' => 'DESC'])->paginate(15, false, ['page' => $page]);
        return $this->fetch('goodsdetail',['article_list'=>$article_list]);
    }
}