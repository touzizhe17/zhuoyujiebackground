<?php
return [
    // +----------------------------------------------------------------------
    // | 模板设置
    // +----------------------------------------------------------------------
    //用户session保存变量
    "USER_ID"=>'user_id',
    'USER_NAME'=>'name',
    'USER_HEAD'=>'head_url',

    //模板字符替换
    'view_replace_str'      => [
        '__USER__'=>'/public/user'
    ],
    'template'               => [
        // 模板引擎类型 支持 php think 支持扩展
        'layout_on'=>true,
        'layout_name'=>'layout/layout'
    ],
];