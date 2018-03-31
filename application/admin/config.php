<?php

return [
    // +----------------------------------------------------------------------
    // | 后台模板设置
    // +----------------------------------------------------------------------
    // 视图输出字符串内容替换
    'view_replace_str'      => [
        '__UPLOAD__' => '/public/uploads',
        '__STATIC__' => '/public/static',
        '__IMAGES__' => '/public/static/images',
        '__JS__'     => '/public/static/js',
        '__CSS__'    => '/public/static/css',
    ],
    'template' => [
        // 模板路径
        'view_path' => './themes/admin/'
    ],
];