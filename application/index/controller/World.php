<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018/3/24
 * Time: 16:09
 */
namespace app\index\controller;

use think\Controller;
use think\Request;
use app\common\model\Article as ArticleModel;
use app\common\model\Grand as GrandModel;

class World extends Controller{

    public function __construct(Request $request = null)
    {
        parent::__construct($request);
        $this->view->engine->layout('layout/layout_world');
        $this->article_model  = new ArticleModel();
        $this->grand_model  = new GrandModel();

    }

    public function index(){
        $auth=$this->grand_model->limit(8)->select();
        $this->assign('auth',$auth);
        $lei=[ [ 'name'=>'翡翠','id'=>1],[ 'name'=>'南红','id'=>6], [ 'name'=>'黄龙玉','id'=>4],[ 'name'=>'玛瑙','id'=>3],[ 'name'=>'琥珀','id'=>2],];

        foreach ($lei as $k=>$v){
            $group[$k]['title']=$v;
            $group[$k]['list']=$this->article_model
                ->alias('a')
                ->where('a.is_world',1)
                ->where('a.materials',$v['name'])
                ->join('grand g','a.author=g.id')
                ->field('a.*,g.name name,g.thumb head ')
                ->limit(4)->select();
        }

        $this->assign('group',$group);

        return $this->fetch();
    }

    public function zuopin($mt=0,$price=0){
        //所有材质列表
        $mterdb=db('materials');
        $materials=$mterdb->select();
        $this->assign('materials',$materials);

        //根据材质查询
        if($mt==0){
            $m1=null;
            $m2=null;

        }else{
            $mter=$mterdb->find($mt);
            $name=$mter['name'];
            $m1='a.materials';
            $m2=$name;
        }
        //根据价格查询
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

        //查询全部
        $list=$this->article_model
            ->alias('a')
            ->where('a.is_world',1)
            ->where($m1,$m2)
            ->where('a.jmoney',$p1,$p2)
            ->join('grand g','a.author=g.id')
            ->field('a.*,g.name name,g.thumb head ')
            ->paginate(4);

        $this->assign('mt',$mt);
        $this->assign('price',$price);
        $page=$list->render();

        if($page==null){
            $page=<<<HTML
            <div class="pagination"><span>共1页</span></div>
HTML;
        }

        $this->assign('list',$list);
        $this->assign('page',$page);

        return $this->fetch();
    }
    public function xianchang(){

        return $this->fetch();
    }
    public function mjjy(){

        return $this->fetch();
    }
}