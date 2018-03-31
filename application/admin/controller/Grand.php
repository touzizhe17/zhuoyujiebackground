<?php
namespace app\admin\controller;

use app\common\model\Grand as GrandModel;
use app\common\model\Category as CategoryModel;
use app\common\controller\AdminBase;

/**
 * 产品管理
 * Class Article
 * @package app\admin\controller
 */
class Grand extends AdminBase
{
    protected $grand_model;
//    protected $article_model;
    protected $category_model;

    protected function _initialize()
    {
        parent::_initialize();
//        $this->article_model  = new GrandModel();
        $this->grand_model  = new GrandModel();
        $this->category_model = new CategoryModel();

        $category_level_list = $this->category_model->getLevelList();
        $this->assign('category_level_list', $category_level_list);
    }

    /**
     * 产品管理
     * @param int    $cid     分类ID
     * @param string $keyword 关键词
     * @param int    $page
     * @return mixed
     */
    public function index($cid = 0, $keyword = '', $page = 1)
    {
        $map   = [];
        $field = 'id,name,cid,status,publish_time,sort';

        if ($cid > 0) {
            $category_children_ids = $this->category_model->where(['path' => ['like', "%,{$cid},%"]])->column('id');
            $category_children_ids = (!empty($category_children_ids) && is_array($category_children_ids)) ? implode(',', $category_children_ids) . ',' . $cid : $cid;
            $map['cid']            = ['IN', $category_children_ids];
        }

        if (!empty($keyword)) {
            $map['name'] = ['like', "%{$keyword}%"];
        }

        $grand_list  = $this->grand_model->field($field)->where($map)->order(['publish_time' => 'DESC'])->paginate(15, false, ['page' => $page]);
        $category_list = $this->category_model->column('name', 'id');

        return $this->fetch('index', ['grand_list' => $grand_list, 'category_list' => $category_list, 'cid' => $cid, 'keyword' => $keyword]);
    }
    public function index1($cid = 0, $keyword = '', $page = 1)
    {
//        $map   = [];
//        $field = 'id,name,cid,status,publish_time,sort';
//
//        if ($cid > 0) {
//            $category_children_ids = $this->category_model->where(['path' => ['like', "%,{$cid},%"]])->column('id');
//            $category_children_ids = (!empty($category_children_ids) && is_array($category_children_ids)) ? implode(',', $category_children_ids) . ',' . $cid : $cid;
//            $map['cid']            = ['IN', $category_children_ids];
//        }
//
//        if (!empty($keyword)) {
//            $map['name'] = ['like', "%{$keyword}%"];
//        }
        $field = 'id,name,cid,status,publish_time,sort';
         $grand_list=$this->grand_model->field($field)->where('id',2)->find();
//        $grand_list  = $this->grand_model->field($field)->where($map)->order(['publish_time' => 'DESC'])->paginate(15, false, ['page' => $page]);
//        $category_list = $this->category_model->column('name', 'id');

        return $this->fetch('index', ['grand_list' => $grand_list]);
    }

    /**
     * 添加产品
     * @return mixed
     */
    public function add()
    {
        return $this->fetch();
    }

    /**
     * 保存产品
     */
    public function save()
    {
        if ($this->request->isPost()) {
            $data            = $this->request->param();
            $validate_result = $this->validate($data, 'Grand');
//            dump($data);
            if ($validate_result !== true) {
                $this->error($validate_result);
            } else {
                if ($this->grand_model->allowField(true)->save($data)) {
                    $this->success('保存成功');
                } else {
                    $this->error('保存失败');
                }
            }
        }
    }

    /**
     * 编辑产品
     * @param $id
     * @return mixed
     */
    public function edit($id)
    {
        $article = $this->grand_model->find($id);

        return $this->fetch('edit', ['article' => $article]);
    }

    /**
     * 更新产品
     * @param $id
     */
    public function update($id)
    {
        if ($this->request->isPost()) {
            $data            = $this->request->param();
            $validate_result = $this->validate($data, 'Grand');

            if ($validate_result !== true) {
                $this->error($validate_result);
            } else {
                if ($this->grand_model->allowField(true)->save($data, $id) !== false) {
                    $this->success('更新成功');
                } else {
                    $this->error('更新失败');
                }
            }
        }
    }

    /**
     * 删除产品
     * @param int   $id
     * @param array $ids
     */
    public function delete($id = 0, $ids = [])
    {
        $id = $ids ? $ids : $id;
        if ($id) {
            if ($this->grand_model->destroy($id)) {
                $this->success('删除成功');
            } else {
                $this->error('删除失败');
            }
        } else {
            $this->error('请选择需要删除的文章');
        }
    }

    /**
     * 产品审核状态切换
     * @param array  $ids
     * @param string $type 操作类型
     */
    public function toggle($ids = [], $type = '')
    {
        $data   = [];
        $status = $type == 'audit' ? 1 : 0;

        if (!empty($ids)) {
            foreach ($ids as $value) {
                $data[] = ['id' => $value, 'status' => $status];
            }
            if ($this->grand_model->saveAll($data)) {
                $this->success('操作成功');
            } else {
                $this->error('操作失败');
            }
        } else {
            $this->error('请选择需要操作的文章');
        }
    }
}