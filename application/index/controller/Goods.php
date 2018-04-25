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

    /**
     * @param int $cid 分类
     * @param int $price 价格
     * @param int $m 材质
     * @param int $order 排序
     * @return mixed
     */
    public function index($cid=1,$price=0,$mt=0,$order=0)
    {
        $material=db('materials')->select();

        $this->assign('materials',$material);

        switch ($price){
            case 0:
                $p1=['>',0];
                $p2=['<=',999999];
                break;
            case 1:
                $p1=['>',0];
                $p2=['<=',3000];
                break;
            case 2:
                $p1=['>',3000];
                $p2=['<=',5000];
                break;
            case 3:
                $p1=['>',5000];
                $p2=['<=',10000];
                break;
            case 4:
                $p1=['>',10000];
                $p2=['<=',20000];
                break;
            case 5:
                $p1=['>',20000];
                $p2=['<=',50000];
                break;
            case 6:
                $p1=['>',50000];
                $p2=['<=',999999];
                break;
        }
        switch ($order){
            case 0:
                $or='a.publish_time DESC';
            break;
            case 1:
                $or='a.reading DESC';
            break;
            case 2:
                $or='a.jmoney DESC';
            break;
            case 3:
                $or='a.publish_time DESC';
            break;
        }
        if($mt!=0){
            $material=db('materials')->find($mt);
            $name=$material['name'];
            $m1='a.materials';
            $m2=$name;
        }else{
            $m1=null;
            $m2=null;
        }
        //根据分类ID ,属于作品类 ,每页20
        $zuopin_list = $this->article_model
            ->alias('a')
            ->where('a.cid',$cid)
            ->where($m1,$m2)
            ->where('a.jmoney',$p1,$p2)
            ->field('a.*,g.thumb c,g.id aid,g.name name')
            ->join('grand g','a.author=g.id','LEFT')
            ->order($or)
            ->paginate(12);

            $page=$zuopin_list->render();

            if($page==null){
                $page=<<<HTML
            <div class="pagination"><span>共1页</span></div>
HTML;
            }


        $this->assign('page',$page);

        $this->assign('price',$price);

        $this->assign('mt',$mt);

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