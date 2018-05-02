/**
 * 点赞
 * @param dom 当前点击dom对象
 * @param flag 1赞，0踩
 */
function click_good(dom,action,id) {
    //1检查是否登录
    $.ajax({
        url:"/index/login/check.html",
        type:'post',
        success:function (isLogin) {
            if(!isLogin){
                if(confirm('检测到您还未登录，请先登录')){
                    location.href='/index/login/login.html';
                }
            }else{
                //---已经登录的用户----
                //2检测是否已经点赞或者踩
                var icon=$(dom).children('span');
                var textDom=$(dom).next();
                var num=textDom.html();
                if(icon.hasClass('active')){
                    //已经点亮的，就取消点亮
                    icon.removeClass('active')
                    //获取赞，踩数量
                    textDom.html(parseInt(num)-1);
                }else{
                    icon.addClass('active')
                    textDom.html(parseInt(num)+1);
                }

                if(action=='is_good'){
                    //是点赞
                    var parent=$(dom).parent();
                    var cai=parent.children('.cai');
                    //取消踩
                    cai.removeClass('active')
                }else{
                    //是踩
                    var parent=$(dom).parent();
                    var good=parent.children('.good');
                    //取消赞
                    good.removeClass('active')
                }

                //TODO 发送请求去后台统计用户点赞


                // $.ajax({
                //     url:'/index/goods/good_bad/action/'+action+'/flag/'+ok+'/id/'+id,
                //     success:function (success) {
                //         if(success){
                //             var span=$(dom).next('span');
                //             var num=span.html();
                //             if(ok){
                //                 num=parseInt(num)+ok;
                //             }else{
                //                 num=parseInt(num)==0?0:parseInt(num)-1;
                //             }
                //             span.html(num);
                //         }
                //
                //     }
                //
                // });
            }
        }
    });



}