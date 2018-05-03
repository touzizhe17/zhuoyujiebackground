<?php
namespace app\index\controller;

use think\Controller;
use think\Request;
use think\Db;
use app\common\model\Article as ArticleModel;
use app\common\model\Grand as GrandModel;

class Index extends  Controller
{
    protected $article_model;
    protected $category_model;
    protected $grand_model;

    protected function _initialize()
    {
        parent::_initialize();
        $this->article_model  = new ArticleModel();
        $this->grand_model  = new GrandModel();

    }
    public function index($page = 1)
    {

        //最多显示12个作品
        $userGood=Db::name('user_good_bad');
        $where=['a.cid'=>1];
        //根据分类ID ,属于作民间巨匠
        $zuopin_list=getGoodsList($this->article_model,$userGood,$where,12);

        //玉雕大师，最多显示12个大师
        $grand_list  = $this->grand_model
            ->field('id,name,thumb')
            ->order(['publish_time' => 'DESC'])
            ->paginate(12);

        $this->assign('zuopin_list', $zuopin_list);
        $this->assign('grand_list', $grand_list);

        return $this->fetch('index');

    }



}
