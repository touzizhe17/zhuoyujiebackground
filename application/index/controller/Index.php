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
        $user_id=session(config('USER_ID'));


        //最多显示12个作品
        $article_list = $this->article_model
            ->alias('a')
            ->where('a.cid',1)
            ->join('grand g','a.author=g.id','LEFT')
            ->field('a.*,g.thumb c,g.id aid,g.name name')
            ->order(['a.publish_time' => 'DESC'])
            ->limit(12)
            ->select();

        //如果用户已经登录
        if($user_id!=null){
            $userGood=Db::name('user_good_bad');

            foreach ($article_list as $k=>$item){

                $res=$userGood->where(['goods_id'=>$item['id'],'user_id'=>$user_id])->find();
                if($res==null){
                    $item['is_good']=0;
                    $item['is_bad']=0;

                }else{
                    $item['is_good']=$res['is_good'];
                    $item['is_bad']=$res['is_bad'];;
                }

            }
        }

        //玉雕大师，最多显示12个大师
        $grand_list  = $this->grand_model
            ->field('id,name,thumb')
            ->order(['publish_time' => 'DESC'])
            ->paginate(12);

        $this->assign('article_list', $article_list);
        $this->assign('grand_list', $grand_list);

        return $this->fetch('index');

    }



}
