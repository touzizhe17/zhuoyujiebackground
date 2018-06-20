<?php
namespace app\common\model;

use think\Model;

class UserPerson extends Model
{
    //字段自动完成新增
    protected $insert = ['add_time'];
    /**
     * 创建时间
     * @return bool|string
     */
    protected function setAddTimeAttr()
    {
        return date('Y-m-d H:i:s');
    }
    protected function setImgListAttr($value){
        return json_encode($value);
    }
    protected function getImgListAttr($value){
//        dump($value);
//        dump(json_decode($value));
//        die;
        return json_decode($value);
    }
}