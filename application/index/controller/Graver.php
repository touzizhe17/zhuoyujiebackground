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
    public function __construct(Request $request = null)
    {
        parent::__construct($request);

        $this->grand_model  = new GrandModel();
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

        $this->assign('grandDetail',$grandDetail);


        return $this->fetch('graverdetail');
    }
}