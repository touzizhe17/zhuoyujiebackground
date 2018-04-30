<?php
return [
    // +----------------------------------------------------------------------
    // | 模板设置
    // +----------------------------------------------------------------------

    'view_replace_str'      => [
        '__UPLOAD__' => '/public',
        '__STATIC__' => '/public/index',
        '__IMAGES__' => '/public/index',
        '__JS__'     => '/public/index',
        '__CSS__'    => '/public/index',
        '__USER__'=>'/public/index/user'
    ],
    // 开启模板布局
    'template' => [
        // 模板路径
        'layout_on'=>true,
        'layout_name'=>'layout/layout'
    ],
];