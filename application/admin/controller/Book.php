<?php
/**
 * 证书查询管理
 */
namespace app\admin\controller;
use app\common\model\Article as ArticleModel;
use app\common\model\Book as BookModel;
use app\common\controller\AdminBase;


class Book extends AdminBase{
    protected $article_model;
    protected $book_model;

    protected function _initialize()
    {
        parent::_initialize();
        $this->article_model  = new ArticleModel();
        $this->book_model  = new BookModel();
    }
    public function index(){
        $result=$this->book_model
            ->alias('a')
            ->join('article b','a.goods_id=b.id')
            ->join('grand c','b.author=c.id')
            ->field('a.id,a.book_num,b.thumb,b.title,c.name,c.thumb head')
            ->paginate(15);
        $this->assign('result',$result);
        return $this->fetch();
    }
    public function add(){
        $result=$this->article_model->where('status',1)->select();

        $this->assign('goods_list',$result);

        return $this->fetch();
    }
    //保存证书
    public function save(){

        if ($this->request->isPost()) {
            $data= $this->request->param();
            $validate_result = $this->validate($data, 'Book');

            if ($validate_result !== true) {
                $this->error($validate_result);
            } else {
                if ($this->book_model->allowField(true)->save($data)) {
                    $this->success('保存成功');
                } else {
                    $this->error('保存失败');
                }
            }
        }

    }
    //编辑证书
    public function edit($id)
    {
        $result=$this->article_model->where('status',1)->select();

        $this->assign('goods_list',$result);
        //文章
        $book = $this->book_model->find($id);

        $this->assign('book',$book);

        return $this->fetch('edit');
    }

    //更新证书操作方法
    public function update($id)
    {
        if ($this->request->isPost()) {
            $data            = $this->request->param();
            $validate_result = $this->validate($data, 'Book');

            if ($validate_result !== true) {
                $this->error($validate_result);
            } else {
                if ($this->book_model->allowField(true)->save($data, $id) !== false) {
                    $this->success('更新成功');
                } else {
                    $this->error('更新失败');
                }
            }
        }
    }
    //删除
    public function delete($id = 0, $ids = [])
    {
        $id = $ids ? $ids : $id;
        if ($id) {
            if ($this->book_model->destroy($id)) {
                $this->success('删除成功');
            } else {
                $this->error('删除失败');
            }
        } else {
            $this->error('请选择需要删除的证书');
        }
    }
}