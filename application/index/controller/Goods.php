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

        $user_id=session(config('USER_ID'));
        if($user_id!=null){
            $userGood=Db::name('user_good_bad');

            foreach ($zuopin_list as $k=>$item){

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

        //查找作品
        $zuopin_list = $this->article_model->where('id',['>',$id],['<',$id+10])->paginate(4);
        if(count($zuopin_list)<4){
            $zuopin_list = $this->article_model->where('id',['<',$id],['>',$id-10])->paginate(4);
        }

        $this->assign('zuopin_list',$zuopin_list);

        //查找作品评论
        $commentDb=Db::name('user_comment');

        $comment_list=$commentDb->alias('a')
            ->join('user b','a.user_id=b.id')
            ->where('goods_id',$id)
            ->field('a.*,b.username,b.head_url')
            ->select();

        $this->assign('comment_list',$comment_list);

        return $this->fetch('goodsdetail');
    }

    /**
     * 赞或者踩
     * @param  $id 作品id
     * @param  $action 操作的是good 或者bad
     */
    public function good_bad($id=null,$action=null){
        $user_id=session(config('USER_ID'));

        //获取当前这个作品已经有的赞和踩的数量
        $res=$this->article_model->field('good_num,bad_num')->find($id);
        $good_num=$res['good_num'];
        $bad_num=$res['bad_num'];
        //如果是赞,则赞+1
        if($action=='is_good'){
            $good_num=intval($good_num)+1;
        }else{
            $bad_num=intval($bad_num)+1;
        }

        //保存作品点赞数量表
        $this->article_model->save(['good_num'=>$good_num,'bad_num'=>$bad_num],['id'=>$id]);

        //----------保存用户点赞表

        //因为前端已经校验过是否已经点亮过，所以后台新增
        $res2=Db::name('user_good_bad')->insert(['goods_id'=>$id,'user_id'=>$user_id,$action=>1]);

        return true;

    }
    public function comment($comment,$id){
        $date=date('Y-m-d',time());
        $commentDb=Db::name('user_comment');
        $user_id=session(config('USER_ID'));
        $flag=$commentDb->insert(['goods_id'=>$id,'user_id'=>$user_id,'comment'=>$comment,'date'=>$date]);
        return $flag;

    }
}