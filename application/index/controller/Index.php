<?php
namespace app\index\controller;

use think\Controller;
use think\Request;
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
        $user_id=session('userId');

        if($user_id==null){
            //最多显示12个作品
            $article_list = $this->article_model
                ->alias('a')
                ->where('a.cid',1)
                ->field('a.*,g.thumb c,g.id aid,g.name name')
                ->join('grand g','a.author=g.id','LEFT')
                ->order(['a.publish_time' => 'DESC'])
                ->paginate(12);

        }else{
            //最多显示12个作品
            $article_list = $this->article_model
                ->alias('a')
                ->where('a.cid',1)
                ->join('grand g','a.author=g.id','LEFT')
                ->join('user_good_bad u','a.id=u.goods_id','LEFT')
                ->field('a.*,g.thumb c,g.id aid,g.name name,u.is_good')
                ->order(['a.publish_time' => 'DESC'])
                ->paginate(12);
        }

        //玉雕大师，最多显示12个大师
        $field = 'id,name,introduction,thumb,status,publish_time,sort';
        $grand_list  = $this->grand_model
            ->order(['publish_time' => 'DESC'])
            ->paginate(12);

        $this->assign('article_list', $article_list);
        $this->assign('grand_list', $grand_list);

        return $this->fetch('index');

    }



}
