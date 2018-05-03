<?php
/**
 * 查作品表和作者表，获取每页数据
 * @param $model 作品模型对象
 * @param $userGood 用户点赞模型对象
 * @param $where  查询条件
 * @param $page_num 每页多少数据
 */
function getGoodsList($model,$userGood,$where,$page_num){
    //根据分类ID ,属于作民间巨匠
    $result = $model
        ->alias('a')
        ->where($where)
        ->join('grand g','a.author=g.id','LEFT')
        ->field('a.*,g.thumb c,g.id aid,g.name')
        ->order(['a.publish_time' => 'DESC'])
        ->paginate($page_num);
    //如果用户已经登录
    $user_id=session(config('USER_ID'));
    if($user_id!=null){
        foreach ($result as $k=>$item){
            $res=$userGood->where(['goods_id'=>$item['id'],'user_id'=>$user_id])->find();
            if($res==null){
                $item['is_good']=0;
                $item['is_bad']=0;

            }else{
                $item['is_good']=$res['is_good'];
                $item['is_bad']=$res['is_bad'];;
            }

        }
    }
    return $result;
}