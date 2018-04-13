<?php
namespace app\common\controller;

use org\Auth;
use think\Loader;
use think\Cache;
use think\Controller;
use think\Db;
use think\Config;
use think\Session;

/**
 * 后台公用基础控制器
 * Class AdminBase
 * @package app\common\controller
 */
class AdminBase extends Controller
{
    protected function _initialize()
    {
        parent::_initialize();

        $this->checkAuth();
        $this->getMenu();

        // 输出当前请求控制器（配合后台侧边菜单选中状态）
        $this->assign('controller', Loader::parseName($this->request->controller()));
    }

    /**
     * 权限检查
     * @return bool
     */
    protected function checkAuth()
    {

        //
        if ($this->request->isPost()) {
            $data            = $this->request->only(['username', 'password','type']);
            $validate_result = $this->validate($data, 'Wxlogin');
            if(!empty($data['type'])){
                if($data['type']=="wx"){
                    if ($validate_result !== true) {
                        $this->error($validate_result);
                    } else {
                        $where['username'] = $data['username'];
                        $where['password'] = md5($data['password'] . Config::get('salt'));

                        $admin_user = Db::name('admin_user')->field('id,username,status')->where($where)->find();

                        if (!empty($admin_user)) {
                            if ($admin_user['status'] != 1) {
                                $this->error('当前用户已禁用');
                            } else {
                                Session::set('admin_id', $admin_user['id']);
                                Session::set('admin_name', $admin_user['username']);
                                Db::name('admin_user')->update(
                                    [
                                        'last_login_time' => date('Y-m-d H:i:s', time()),
                                        'last_login_ip'   => $this->request->ip(),
                                        'id'              => $admin_user['id']
                                    ]
                                );
                            }
                        } else {
                            $this->error('用户名或密码错误');
                        }
                    }
                }
            }

        }
        //

        if (!Session::has('admin_id')) {
            $this->redirect('admin/login/index');
        }


        $module     = $this->request->module();
        $controller = $this->request->controller();
        $action     = $this->request->action();

        // 排除权限
        $not_check = ['admin/Index/index', 'admin/AuthGroup/getjson', 'admin/System/clear'];

        if (!in_array($module . '/' . $controller . '/' . $action, $not_check)) {
            $auth     = new Auth();
            $admin_id = Session::get('admin_id');
            if (!$auth->check($module . '/' . $controller . '/' . $action, $admin_id) && $admin_id != 1) {
                $this->error('没有权限');
            }
        }
    }

    /**
     * 获取侧边栏菜单
     */
    protected function getMenu()
    {
        $menu     = [];
        $admin_id = Session::get('admin_id');
        $auth     = new Auth();

        $auth_rule_list = Db::name('auth_rule')->where('status', 1)->order(['sort' => 'DESC', 'id' => 'ASC'])->select();

        foreach ($auth_rule_list as $value) {
            if ($auth->check($value['name'], $admin_id) || $admin_id == 1) {
                $menu[] = $value;
            }
        }
        $menu = !empty($menu) ? array2tree($menu) : [];

        $this->assign('menu', $menu);
    }
}