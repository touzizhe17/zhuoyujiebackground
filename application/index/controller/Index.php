<?php
namespace app\index\controller;

use think\Controller;
use think\Request;
use app\common\model\Article as ArticleModel;
use app\common\model\Category as CategoryModel;
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
        $this->category_model = new CategoryModel();
        $this->grand_model  = new GrandModel();

        $category_level_list = $this->category_model->getLevelList();
        $this->assign('category_level_list', $category_level_list);

        $category_level_list = $this->category_model->getLevelList();
        $this->assign('category_level_list', $category_level_list);
    }
    public function index($cid = 0, $keyword = '', $page = 1)
    {
        $map   = [];
        $field = 'id,title,cid,author,reading,thumb,jmoney,status,publish_time,sort,materials';

        $article_list = $this->article_model->alias('a')->field('a.*,g.thumb c,g.id aid,g.name name')->join('grand g','a.author=g.name','LEFT')->order(['a.publish_time' => 'DESC'])->paginate(15, false, ['page' => $page]);
        $pgrand=[];
        $category_list = $this->category_model->column('name', 'id');

        //玉雕大师
        $map   = [];
        $field = 'id,name,cid,introduction,thumb,status,publish_time,sort';

        if ($cid > 0) {
            $category_children_ids = $this->category_model->where(['path' => ['like', "%,{$cid},%"]])->column('id');
            $category_children_ids = (!empty($category_children_ids) && is_array($category_children_ids)) ? implode(',', $category_children_ids) . ',' . $cid : $cid;
            $map['cid']            = ['IN', $category_children_ids];
        }

        if (!empty($keyword)) {
            $map['name'] = ['like', "%{$keyword}%"];
        }

        $grand_list  = $this->grand_model->field($field)->where($map)->order(['publish_time' => 'DESC'])->paginate(15, false, ['page' => $page]);



        return $this->fetch('index', ['article_list' => $article_list,'grand_list' => $grand_list,  'category_list' => $category_list, 'cid' => $cid, 'keyword' => $keyword]);
    }
    public function goodsDetail()
    {
        return $this->fetch();
    }
    public function graver()
    {
        return $this->fetch();
    }
    public function graverDetail($id)
    {
        $grand = $this->grand_model->find($id);
        return $this->fetch('graverDetail', ['grandDetail' => $grand]);
    }
    public function goods()
    {
        return $this->fetch();
    }
    public function yuanliao()
    {
        return $this->fetch();
    }
    public function collect()
    {
        return $this->fetch();
    }
    public function dongtai()
    {
        return $this->fetch();
    }

}
