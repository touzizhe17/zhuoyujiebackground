<?php
/**
 * 作品
 */
namespace app\index\controller;
use think\Controller;
use think\Request;
use app\common\model\Article as ArticleModel;
use app\common\model\Grand as GrandModel;
use think\Db;

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

    /**
     * 赞或者踩
     * @param null $id 作品id
     * @param null $action 操作的是good 或者bad
     * @param null $flag  增加或者是删除
     */
    public function good_bad($id=null,$action=null,$flag=null){
        $user_id=session('userId');
        //获取当前这个作品已经有的赞和踩的数量
        $res=$this->article_model->field('good_num,bad_num')->find($id);
        $good_num=$res['good_num'];
        $bad_num=$res['bad_num'];

        if($flag){
            //增加
            if($action=='is_good'){
                $good_num=intval($good_num)+1;
            }else{
                $bad_num=intval($good_num)+1;
            }

        }else{
            //删除
            if($action=='is_good'){
                $good_num=intval($good_num)==0? 0:intval($good_num)-1;
            }else{
                $bad_num=intval($good_num)==0? 0:intval($good_num)-1;
            }

        }
        //保存作品点赞数量表
        $this->article_model->save(['good_num'=>$good_num,'bad_num'=>$bad_num],['id'=>$id]);

        //----------保存用户点赞表
        //查找该用户是否对当前作品已经点过赞，或者踩
        $res2=Db::name('user_good_bad')->where(['goods_id'=>$id,'user_id'=>$user_id])->find();

        $where=['goods_id'=>$id,'user_id'=>$user_id,$action=>$flag];

        if($res2==null){
            //没有点过
            Db::name('user_good_bad')->insert($where);
        }else{
            Db::name('user_good_bad')->where('id',$res2['id'])->update($where);
        }

        return true;



    }
}