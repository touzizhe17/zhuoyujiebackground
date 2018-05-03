<?php
/**
 * 民间巧匠
 */
namespace app\index\controller;
use think\Controller;
use think\Db;
use app\common\model\Article as ArticleModel;
use app\common\model\Grand as GrandModel;
class Mjqj extends Controller
{
    protected function _initialize()
    {
        parent::_initialize();
        $this->article_model  = new ArticleModel();

        $this->grand  = new GrandModel();
    }
    public function index()
    {
        $userGood=Db::name('user_good_bad');
        $where=['a.cid'=>3];
        //根据分类ID ,属于作民间巨匠
        $zuopin_list=getGoodsList($this->article_model,$userGood,$where,12);
        $page=$zuopin_list->render();
        $this->assign('page',$page);
        $this->assign('zuopin_list',$zuopin_list);
        return $this->fetch('mjqj');
    }
}