<?php
namespace app\admin\controller;

use app\common\model\Reservation as ReservationModel;
use app\common\model\Reservationup as ReservationupgModel;
use app\common\controller\AdminBase;

/**
 * 文章管理
 * Class Article
 * @package app\admin\controller
 */
class Reservationup extends AdminBase
{
    protected $reservation_model;
    protected $Reservationup_model;

    protected function _initialize()
    {
        parent::_initialize();
        $this->reservation_model = new ReservationModel();
        $this->Reservationup_model = new ReservationupgModel();
//
//        $category_level_list = $this->category_model->getLevelList();
//        $this->assign('category_level_list', $category_level_list);
    }

    /**
     * 文章管理
     * @param int    $cid     分类ID
     * @param string $keyword 关键词
     * @param int    $page
     * @return mixed
     */
    public function index($page = 1)
    {
        $map   = [];
        $field = 'id,name,status,re_introduction,re_local,re_way,re_cont,create_time';
        $reservation  = $this->reservation_model->field($field)->paginate(15, false, ['page' => $page]);

        return $this->fetch('index', ['reservation' => $reservation]);
    }

    /**
     * 添加文章
     * @return mixed
     */
    public function add()
    {
        return $this->fetch();
    }
    public function uploadtg($id)
    {
        $articles = $this->Reservationup_model->find($id);

        return $this->fetch('uploadtg', ['article' => $articles]);
    }
    /**
     * 更新文章
     * @param $id
     */
    public function updateimg($id)
    {
        if ($this->request->isPost()) {
            $data            = $this->request->param();
            $validate_result = $this->validate($data, 'Reservationup');

            if ($validate_result !== true) {
                $this->error($validate_result);
            } else {
                if ($this->Reservationup_model->allowField(true)->save($data, $id) !== false) {
                    $this->success('更新成功');
                } else {
                    $this->error('更新失败');
                }
            }
        }
    }
    /**
     * 保存文章
     */
    public function save()
    {
        if ($this->request->isPost()) {
            $data            = $this->request->param();
            //成功验证
            $validate_result = $this->validate($data, 'Reservation');

            if ($validate_result !== true) {
                $this->error($validate_result);
            } else {
                if ($this->reservation_model->allowField(true)->save($data)) {
                    return json(['data'=>[],'code'=>1,'message'=>'操作完成']);
                } else {
                    $this->error('保存失败');
                }
            }



        }
    }

    /**
     * 编辑文章
     * @param $id
     * @return mixed
     */
    public function edit($id)
    {
        $article = $this->reservation_model->find($id);

        return $this->fetch('edit', ['article' => $article]);
    }

    /**
     * 更新文章
     * @param $id
     */
    public function update($id)
    {
        if ($this->request->isPost()) {
            $data            = $this->request->param();
            $validate_result = $this->validate($data, 'Reservation');

            if ($validate_result !== true) {
                $this->error($validate_result);
            } else {
                if ($this->reservation_model->allowField(true)->save($data, $id) !== false) {
                    $this->success('更新成功');
                } else {
                    $this->error('更新失败');
                }
            }
        }
    }

    /**
     * 删除文章
     * @param int   $id
     * @param array $ids
     */
    public function delete($id = 0, $ids = [])
    {
        $id = $ids ? $ids : $id;
        if ($id) {
            if ($this->Reservation_model->destroy($id)) {
                $this->success('删除成功');
            } else {
                $this->error('删除失败');
            }
        } else {
            $this->error('请选择需要删除的项');
        }
    }

    /**
     * 文章审核状态切换
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
            if ($this->Reservation_model->saveAll($data)) {
                $this->success('操作成功');
            } else {
                $this->error('操作失败');
            }
        } else {
            $this->error('请选择需要操作的文章');
        }
    }
}