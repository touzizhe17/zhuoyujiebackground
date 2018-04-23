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
        //根据分类ID ,属于作品类
        $zuopin_list = $this->article_model
            ->alias('a')
            ->where('a.cid',1)
            ->field('a.*,g.thumb c,g.id aid,g.name name')
            ->join('grand g','a.author=g.id','LEFT')
            ->order(['a.publish_time' => 'DESC'])
            ->paginate(20);

        $this->assign('zuopin_list',$zuopin_list);
        //左边栏，所有玉雕师
        $authList=$this->grand->field('id,name')->select();
        $this->assign('authList',$authList);

        return $this->fetch('goods');
    }



    public function goodsDetail($id)
    {
        //根据传入的id,查找当前这件作品
        $zuopin = $this->article_model->find($id);
        $auth=$zuopin['author'];
        $this->assign('zuopin',$zuopin);
        $cid=$zuopin['cid'];

        //查找找到作者信息
        $authinfo=$this->grand->where('id', $auth)->find();
        $this->assign('authinfo',$authinfo);

        if($cid===1){

            // 查找到该作者的其他相关作品
            $zuopin_list = $this->article_model->where('author', $auth)->paginate(20);
            $this->assign('zuopin_list',$zuopin_list);
        }else{
            $zuopin_list = $this->article_model->where('cid', $cid)->paginate(20);
            $this->assign('zuopin_list',$zuopin_list);
        }


        return $this->fetch('goodsdetail');
    }
}