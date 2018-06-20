<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018/5/8
 * Time: 17:00
 */
namespace app\trade\controller;

use app\common\model\Article;
use app\common\model\UserOrder;

class Order extends Base{
    public $article;
    public $userOrder;
    public function _initialize()
    {
        parent::_initialize(); // TODO: Change the autogenerated stub
        $this->article=new Article();
        $this->userOrder=new UserOrder();
    }

    //全部订单
    public function index($id=''){
        $this->assign('title','全部订单');
        $result=$this->userOrder->alias('a')->join('article b','a.goods_id=b.id')->field('a.*,b.thumb,b.title,b.materials,b.jmoney')->order('add_time desc')->paginate(5);
        $this->assign('result',$result);
        return $this->fetch('order-list');
    }
    //已经完成订单
    public function complete($id=''){
        $this->assign('title','已经完成订单');
        $result=$this->userOrder->alias('a')->join('article b','a.goods_id=b.id')->where("complete_status",'确认收货')->field('a.*,b.thumb,b.title,b.materials,b.jmoney')->order('add_time desc')->paginate(5);
        $this->assign('result',$result);
        return $this->fetch('order-list');
    }
    //未完成订单
    public function unfinished($id=''){
        $this->assign('title','未完成订单');
        $result=$this->userOrder->alias('a')->join('article b','a.goods_id=b.id')->where("complete_status",'未完成')->field('a.*,b.thumb,b.title,b.materials,b.jmoney')->order('add_time desc')->paginate(5);
        $this->assign('result',$result);
        return $this->fetch('order-list');
    }
    //订单详情
    public function orderDetail($id){
        $result=$this->userOrder->alias('a')->join('user u','a.user_id=u.id')->join('user_address d','a.address_id=d.id')->where('a.id',$id)->field('a.order_number,d.address,u.*')->find();
        $this->assign('result',$result);
        return $this->fetch('order-detail');
    }
    //是否同意退货
    public function setSellOrderStatus($id,$status){
        $this->userOrder->where('id',$id)->setField('sell_order_status',$status);
        return 'ok';
    }
    //修改物流信息
    public function setWuliu($id,$msg){
        $this->userOrder->where('id',$id)->setField('wuliu',$msg);
        return 'ok';
    }

}