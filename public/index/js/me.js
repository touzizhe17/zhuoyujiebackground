/**
 * 点赞
 * @param dom 当前点击dom对象
 * @param action 点击的是踩 还是赞
 */
function click_good(dom,action,id) {
    //1检查是否登录
    $.ajax({
        url:"/index/login/check.html",
        type:'post',
        success:function (isLogin) {
            if(!isLogin){
                if(window.confirm('检测到您还未登录，请先登录')){
                    var url=location.pathname;
                    location.href='/index/login/login/url/'+url;
                }
            }else{
                //---已经登录的用户----
                //2检测是否已经点赞或者踩
                var parent=$(dom).parent();
                var cai=parent.children('.cai');
                var good=parent.children('.good');

                var icon_cai=cai.children('span');
                var icon_good=good.children('span');

                if(!icon_cai.hasClass('active')&&!icon_good.hasClass('active')){
                    //之前都没有点亮过
                    var icon=$(dom).children('span');
                        icon.addClass('active')
                    var textDom=$(dom).next()
                    textDom.html(parseInt(textDom.html())+1);

                // 3发送请求去后台统计用户点赞
                $.ajax({
                    url:'/index/goods/good_bad/action/'+action+'/id/'+id,
                });

                }else{
                    alert('您已经赞或者踩过了！');
                }
            }
        }
    });



}