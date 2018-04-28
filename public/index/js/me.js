/**
 * 点赞
 * @param dom 当前点击dom对象
 * @param flag 1赞，0踩
 */
function click_good(dom,flag) {
    //检查是否登录


    var span=$(dom).children('span');

    if(span.hasClass('active')){
        span.removeClass('active')
    }else{
        span.addClass('active')
    }

    //TODO 发送ajax请求去后台统计用户点赞

}