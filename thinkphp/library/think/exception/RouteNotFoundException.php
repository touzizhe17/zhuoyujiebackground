<?php
// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK IT ]
// +----------------------------------------------------------------------
// | Copyright (c) 2006-2016 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author:light <1712853213@qq.com>
// +----------------------------------------------------------------------

namespace think\exception;

class RouteNotFoundException extends HttpException
{

    public function __construct()
    {
        parent::__construct(404);
    }

}
