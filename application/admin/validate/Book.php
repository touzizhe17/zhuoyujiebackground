<?php
namespace app\admin\validate;

use think\Validate;

class Book extends Validate
{
    protected $rule = [
        'goods_id'   => 'require',
        'book_num' => 'require',
    ];

    protected $message = [
        'goods_id.require'   => '请选择作品',
        'book_num.require' => '请输入证书编号',
    ];
}