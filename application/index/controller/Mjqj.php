<?php
/**
 * 民间巧匠
 */
namespace app\index\controller;
use think\Controller;
use think\Request;
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
        //根据分类ID ,属于作民间巨匠
        $zuopin_list = $this->article_model
            ->where('cid',3)
            ->order(['publish_time' => 'DESC'])
            ->paginate(20);

        $this->assign('zuopin_list',$zuopin_list);
        return $this->fetch('mjqj');
    }
}