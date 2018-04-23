/**
 * 点赞
 * @param dom
 * @param flag
 */
function goods(dom,flag) {
    var img=$(dom).children();
    var src=img.attr('src');
    //是否点赞
    var isGood=false;
    var isBad=false;
    if(flag){
        //赞
        if(src==='/public/index/images/good.png'){
            //点赞
            isGood=true;
            img.attr('src','/public/index/images/good_red.png')
        }else{
            //取消点赞
            isGood=false;
            img.attr('src','/public/index/images/good.png')
        }

    }else{
        if(src==='/public/index/images/bad.png'){
            //踩
            isBad=false;
            img.attr('src','/public/index/images/bad_red.png')
        }else{
            //取消踩
            isBad=true;
            img.attr('src','/public/index/images/bad.png')
        }
    }

    //TODO 发送ajax请求去后台统计用户点赞

}