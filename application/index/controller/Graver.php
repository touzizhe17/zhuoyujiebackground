<?php
/**
 * 玉雕名家
 */
namespace app\index\controller;
use think\Controller;
use think\Request;
use app\common\model\Grand as GrandModel;
class Graver extends Controller
{
    protected $grand_model;

    public function index()
    {
        return $this->fetch('graver');
    }
    public function graverDetail($id)
    {
        $this->grand_model  = new GrandModel();
        $grand = $this->grand_model->find($id);
        return $this->fetch('graverdetail', ['grandDetail' => $grand]);
    }
}