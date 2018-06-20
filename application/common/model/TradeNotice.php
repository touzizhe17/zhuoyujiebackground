<?php
namespace app\common\model;

use think\Model;

class TradeNotice extends Model
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
}