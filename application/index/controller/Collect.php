<?php
/**
 * 收藏
 */
namespace app\index\controller;
use think\Controller;
use think\Db;
use app\common\model\Article as ArticleModel;
use app\common\model\Grand as GrandModel;
class Collect extends Controller
{
    protected function _initialize()
    {
        parent::_initialize();
        $this->article_model  = new ArticleModel();
        $this->grand  = new GrandModel();
    }

    public function index()
    {
        //根据分类ID ,属于作品类,而且是推荐作品20
        $userGood=Db::name('user_good_bad');
        $where=['a.is_recommend'=>1];

        $zuopin_list=getGoodsList($this->article_model,$userGood,$where,12);

        $page=$zuopin_list->render();

        $this->assign('page',$page);

        $this->assign('zuopin_list',$zuopin_list);
        //左边栏，所有玉雕师
        $authList=$this->grand->field('id,name')->select();
        $this->assign('authList',$authList);

        return $this->fetch('collect');
    }
}