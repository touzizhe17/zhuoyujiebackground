<?php
// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK ]
// +----------------------------------------------------------------------
// | Copyright (c) 2006-2015 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author:light <1712853213@qq.com>
// +----------------------------------------------------------------------

namespace think\captcha;

use think\Config;

class CaptchaController
{
    public function index($id = "")
    {
        $captcha = new Captcha((array)Config::get('captcha'));
        return $captcha->entry($id);
    }
}