<?php
namespace app\index\controller;
use think\Controller;
use think\Db;
use app\common\model\Grand as GrandModel;
use app\common\model\Article as ArticleModel;
use app\common\model\Book as BookModel;

class Search extends Controller{
    private $grand;
    private $article;
    private $book;
    public function _initialize()
    {
        parent::_initialize(); // TODO: Change the autogenerated stub
        $this->grand=new GrandModel();
        $this->article=new ArticleModel();

        $this->book=new BookModel();

    }
    //页面搜索
    public function index($keyword=''){
        $res2=null;
        if($keyword== ''){
            $page= <<<HTML
            <div class="pagination">请您输入您想查询的关键词,然后查询。</div>
HTML;

        }else{
            $res2=$this->article
                ->alias('a')
                ->join('grand g','a.author=g.id')
                ->where('a.title|a.introduction|a.materials|a.jmoney|a.content|g.name','like','%'.$keyword.'%')
                ->field('a.*,g.name ,g.id aid,g.thumb c')
                ->paginate(6);

            $userGood=Db::name('user_good_bad');
            $user_id=session(config('USER_ID'));
            if($user_id!=null){
                foreach ($res2 as $k=>$item){
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
            $page=$res2->render();
            if($page==null){
                $page=<<<HTML
            <div class="pagination"><span>共1页</span></div>
HTML;
            }

        }

        $this->assign('page',$page);
        $this->assign('goods_list',$res2);
        return $this->fetch('search');
    }
    //证书查询
    public function bookQuery(){

        return $this->fetch();
    }
    //证书查询结果
    public function queryResult($book_num=''){
        $recordDb=db('book_record');
        $record['time']=date('Y-m-d H:i:s');
        $record['ip']=$this->request->ip();
        $record_list=null;
        if($book_num==''){
            $status=0;
            $book='请输入证书编号，然后查询';
        }else{
            $status=1;
            $book=$this->book
                ->alias('a')
                ->join('article b','a.goods_id=b.id')
                ->join('grand c','b.author=c.id')
                ->field('a.*,b.title,b.thumb,c.name ,c.thumb head, c.introduction')
                ->where('book_num',$book_num)->find();

            if($book===null){
                $status=0;
                $book='抱歉未找到结果';
            }
        }
        if($status==1){
            $record['book_id']=$book['id'];
            $recordDb->insert($record);
            $record_list=$recordDb->where('book_id',$book['id'])->select();
        }


        $this->assign('record_list',$record_list);
        $this->assign('book',$book);
        $this->assign('status',$status);
        return $this->fetch();
    }
}