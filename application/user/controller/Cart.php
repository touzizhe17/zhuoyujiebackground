<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018/5/8
 * Time: 17:00
 */
namespace app\user\controller;

use app\common\model\Article;
use app\common\model\UserCart;
use app\common\model\UserAddress;
use think\Request;
use app\common\model\User as UserModel;

class Cart extends Base{
    public $article;
    public $userCart;
    public $userAddress;
    public $user;
    public function _initialize()
    {
        parent::_initialize(); // TODO: Change the autogenerated stub
        $this->article=new Article();
        $this->userCart=new UserCart();
        $this->userAddress=new UserAddress();
        $this->user=new UserModel();

    }
    //购物车
    public function index($id=''){
        $result=$this->userCart->alias('a')->join('article b','a.goods_id=b.id')->where('a.user_id',$this->id)->field('b.*,a.is_buy')->order('add_time')->paginate(5);
        $this->assign('result',$result);
        return $this->fetch('cart-list');
    }
    //移除购物车
    public function remove($id){
        $this->userCart->destroy(['goods_id'=>$id,'user_id'=>$this->id]);
        return 'ok';
    }
    //标记为要买
    public function isBuy($id,$flag){
        $this->userCart->where(['goods_id'=>$id,'user_id'=>$this->id])->setField('is_buy',$flag);
        return 'ok';
    }
    //统计要买商品的总金额
    public function isBuyMoney(){
        $sum=$this->userCart->alias('a')->join('article b','a.goods_id=b.id')->where('a.user_id',$this->id)->where('a.is_buy',1)->sum('b.jmoney');
        return $sum;
    }
    //购物车订单提交
    public function orderSubmit(){
        //该用户的所有地址
        $address=$this->userAddress->where('user_id',$this->id)->select();
        // 该用户默认地址
        $info=$this->user->where('id',$this->id)->field('def_address_id')->find();
        //所有要购买的商品列表
        $result=$this->userCart->alias('a')->join('article b','a.goods_id=b.id')->where('a.user_id',$this->id)->where('a.is_buy',1)->select();


        $this->assign('addressId',$info['def_address_id']);
        $this->assign('address',$address);
        $this->assign('result',$result);
        return $this->fetch('order-sub');
    }

}