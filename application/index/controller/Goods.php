<?php
/**
 * 作品
 */
namespace app\index\controller;
use think\Controller;
use think\Request;
use app\common\model\Article as ArticleModel;
use app\common\model\Grand as GrandModel;

class Goods extends Controller
{
    protected function _initialize()
    {
        parent::_initialize();
        $this->article_model  = new ArticleModel();

        $this->grand  = new GrandModel();
    }

    public function index()
    {
        $zuopin_list = $this->article_model->alias('a')->field('a.*,g.thumb c,g.id aid,g.name name')->join('grand g','a.author=g.id','LEFT')->order(['a.publish_time' => 'DESC'])->paginate(15, false, ['page' => 1]);
        $this->assign('zuopin_list',$zuopin_list);
        return $this->fetch('goods');
    }
    public function goodsDetail($id,$page=0)
    {
        //根据传入的id,查找当前这件作品
        $zuopin = $this->article_model->find($id);
        //查找找到作者信息
        $auth=$zuopin['author'];
        $authinfo=$this->grand->where('id', $auth)->find();
        // 查找到该作者的其他相关作品

        $zuopin_list = $this->article_model->where('author', $auth)->limit(4)->select();

//        dump($zuopin_list);die;
        $this->assign('zuopin',$zuopin);
        $this->assign('authinfo',$authinfo);
        $this->assign('zuopin_list',$zuopin_list);

        return $this->fetch('goodsdetail');
    }
}