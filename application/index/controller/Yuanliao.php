<?php
/**
 * 原石玉料
 *
 */
namespace app\index\controller;
use think\Controller;
use think\Db;
use app\common\model\Article as ArticleModel;
use app\common\model\Grand as GrandModel;

class Yuanliao extends Controller
{
    protected function _initialize()
    {
        parent::_initialize();
        $this->article_model  = new ArticleModel();

        $this->grand  = new GrandModel();
    }
    public function index()
    {
        //根据分类ID ,属于作原石玉料
        //最多显示12个作品
        $userGood=Db::name('user_good_bad');
        $where=['a.cid'=>2];
        $zuopin_list=getGoodsList($this->article_model,$userGood,$where,12);
        $page=$zuopin_list->render();
        $this->assign('page',$page);
        $this->assign('zuopin_list',$zuopin_list);
        return $this->fetch('yuanliao');
    }
}