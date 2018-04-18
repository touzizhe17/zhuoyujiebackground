<?php
/**
 * 玉雕名家
 */
namespace app\index\controller;
use think\Controller;
use think\Request;
use app\common\model\Grand as GrandModel;
use app\common\model\Article as ArticleModel;
class Graver extends Controller
{
    protected $grand_model;
    protected $article_model;
    public function __construct(Request $request = null)
    {
        parent::__construct($request);

        $this->grand_model  = new GrandModel();
        $this->article_model  = new ArticleModel();

    }

    public function index()
    {
        $authList=$this->grand_model->field('id,name,thumb')->select();
        $this->assign('authList',$authList);
        return $this->fetch('graver');
    }
    public function graverDetail($id,$page=0)
    {

        $grandDetail = $this->grand_model->find($id);
        $article=$this->article_model->where('author',$grandDetail['id'])->select();


        $this->assign('grandDetail',$grandDetail);
        $this->assign('article',$article);


        return $this->fetch('graverdetail');
    }
}