<?php
return [
    // +----------------------------------------------------------------------
    // | 模板设置
    // +----------------------------------------------------------------------
<<<<<<< HEAD
    'index' =>'/public/static/index',
=======
    'index'=>'./public/index',
    'view_replace_str'      => [
        '__UPLOAD__' => '/public/uploads',
        '__STATIC__' => '/public/index',
        '__IMAGES__' => '/public/index',
        '__JS__'     => '/public/index',
        '__CSS__'    => '/public/index',
    ],
>>>>>>> 4c81ee55d93ec65aa0ce78804143e8dfc0f20b1a
    // 开启模板布局
    'template' => [
        // 模板路径
        'layout_on'=>true,
        'layout_name'=>'layout/layout'
    ],
];