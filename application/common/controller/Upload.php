<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018/6/20
 * Time: 10:52
 */
namespace app\common\controller;

use think\Controller;

class Upload extends Controller{
    //ajax上传头像,做上传预览
    public function upload(){
        //最大上传图片2M
        $config = [
            'size' => 2097152,
            'ext'  => 'jpg,gif,png,bmp'
        ];

        $file=$this->request->file('file');

        if($file){
            $info = $file->validate($config)->move(ROOT_PATH . 'public' . DS . 'uploads');
            if($info){
                // 成功上传后 获取上传信息
                $result['url']='/public/uploads/'.$info->getSaveName();
                $result['code']=200;
            }else{
                // 上传失败获取错误信息
                $result['msg']=$file->getError();
                $result['code']=100;

            }
        }
        return json($result);
    }
}