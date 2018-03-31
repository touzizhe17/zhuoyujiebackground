<?php if (!defined('THINK_PATH')) exit(); /*a:2:{s:82:"F:\wampserver\azlj\www\zhuoyujiebackground/application/index\view\index\index.html";i:1522497387;s:84:"F:\wampserver\azlj\www\zhuoyujiebackground/application/index\view\layout\layout.html";i:1522492705;}*/ ?>
﻿<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=2,user-scalable=yes">
    <title>琢玉界-中华民族玉雕文化的守护者</title>
    <meta name="keywords" content="琢玉界,王朝阳,刘东,李少飞,翡翠王朝,玉雕大师,雕刻大师"/>
    <meta name="description" content="玉雕大师推介及玉雕艺术品展销，专为玉雕大师、收藏家、经销商，提供最具行业特色的服务。"/>
    <link rel="stylesheet" type="text/css" href="<?php echo \think\Config::get('index'); ?>/css/main.css">
    <link rel="stylesheet" type="text/css" href="<?php echo \think\Config::get('index'); ?>/css/ssy.css">
    <link rel="stylesheet" type="text/css" href="<?php echo \think\Config::get('index'); ?>/css/nzdc.css">
    <link rel="stylesheet" type="text/css" href="<?php echo \think\Config::get('index'); ?>/css/about.css">
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon"/>
    <script type="text/javascript" src="<?php echo \think\Config::get('index'); ?>/js/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="<?php echo \think\Config::get('index'); ?>/js/jquery.lazyload.min.js"></script>
    <script type="text/javascript" src="<?php echo \think\Config::get('index'); ?>/js/jquery.mousewheel.min.js"></script>
</head>
<script>
    $(function () {
        $('.ydjoutgz li').mousemove(function () {
            $(this).addClass('hoverlibg');
            $(this).children('.dhuainfo').show();
        });
        $('.ydjoutgz li').mouseout(function () {
            $(this).removeClass('hoverlibg');
            $(this).children('.dhuainfo').hide();
        });
    });
</script>
<style>
    .top-r {
        width: auto;
        float: right;
    }

    .top-r a {
        float: left;
        height: 30px;
    }

    .top-r a img {
        float: left;
        max-height: 22px;
        margin-top: 4px;
    }

    .top-r span {
        margin: 5px 5px 0 5px;
        float: left;
        color: #666;
    }

    .topBanner {
        float: left;
        width: 100%;
        height: 100px;
        background-size: 100% auto;
    }

    .countdown {
        float: left;
        width: 100%;
        height: 90px;
        background: url(<?php echo \think\Config::get('index'); ?>/images/time-pic.jpg) center no-repeat;
    }

    .countdown .int {
        width: 1200px;
        height: 90px;
        margin: 0 auto;
    }

    .countdown-ul {
        float: right;
        margin: 30px 0 0 0;
        width: 270px;
        height: 60px;
    }

    .countdown li {
        float: left;
        width: 60px;
        height: 60px;
        line-height: 60px;
        text-align: center;
        font-size: 20px;
        margin-left: 10px;
        font-weight: 800;
    }

    .countdown li:nth-of-type(1) {
        margin-left: 0;
    }

    .countdown li span {
        float: left;
        color: #000;
        width: 30px;
        text-align: right;
    }

    .countdown li i {
        float: left;
        font-style: normal;
        color: #000;
        width: 30px;
        text-align: left;
    }

    .loright {
        background: url(<?php echo \think\Config::get('index'); ?>/images/topimg2017.png) center right no-repeat;
    }
</style>
<style>
    .wrapper {
        width: 1200px;
        height: 450px;
        overflow: hidden;
        margin: 0 auto;
    }

    .shuoming {
        margin-top: 20px;
        border: 1px solid #ccc;
        padding-bottom: 10px;
    }

    .shuoming dt {
        height: 30px;
        line-height: 30px;
        font-weight: bold;
        text-indent: 10px;
    }

    .shuoming dd {
        line-height: 20px;
        padding: 5px 20px;
    }

    /* qqshop focus */
    #focus {
        width: 1200px;
        height: 450px;
        overflow: hidden;
        position: relative;
    }

    #focus ul {
        height: 450px;
        position: absolute;
    }

    #focus ul li {
        float: left;
        width: 1200px;
        height: 450px;
        overflow: hidden;
        position: relative;
    }

    #focus ul li div {
        position: absolute;
        overflow: hidden;
    }

    #focus ul li img {
        width: 1200px;
        height: 450px;
    }

    #focus .btnBg {
        position: absolute;
        width: 750px;
        height: 20px;
        left: 0;
        bottom: 0;
    }

    #focus .btn {
        position: absolute;
        width: 750px;
        height: 10px;
        padding: 5px 10px;
        right: 0;
        bottom: 10px;
        text-align: right;
    }

    #focus .btn span {
        display: inline-block;
        _display: inline;
        _zoom: 1;
        width: 25px;
        height: 10px;
        _font-size: 0;
        margin-left: 5px;
        cursor: pointer;
        background: #fff;
    }

    #focus .btn span.on {
        background: #fff;
    }
</style>
<style>
    .fmainfoot {
        text-align: center;
        margin: 15px 0;
    }

    .fmainfoot li {
        display: inline-block;
        margin: 0 10px;
    }

    .fmainfoot li a {
        color: #666666;
    }

    .fmainfoot span {
        color: #666666;
    }
</style>
<style >
    .kf_fcwc {
        background: #00340b;
    }

    .kf_fcwc .list a {
        background: #005611;
    }

    .kf_fcwc .kf-btm {
        border-top: 1px solid #005611
    }

    .kf_ydj {
        background: #f2f2f2;
    }

    .kf_ydj .list a {
        background: #bdbdbd;
    }

    .kf_ydj .kf-btm {
        border-top: 1px solid #5c071c
    }

    .kf_zbly {
        background: #960c30;
    }

    .kf_zbly .list a {
        background: #ce223a;
    }

    .kf_zbly .kf-btm {
        border-top: 1px solid #ce223a
    }

    .kf_nhzm {
        background: #870f06;
    }

    .kf_nhzm .list a {
        background: #c01507;
    }

    .kf_nhzm .kf-btm {
        border-top: 1px solid #c01507
    }

    .kf_list {
        position: fixed;
        z-index: 99;
        top: 17%;
        right: 0;
        font-family: "microsoft yahei";
    }

    .max-kf {
        float: left;
        width: 140px;
        position: relative;
    }

    .min-kf {
        float: left;
        width: 60px;
        cursor: pointer;
    }

    .min-kf img {
        float: left;
        width: 100%;
    }

    .kf_list .closemax {
        cursor: pointer;
        position: absolute;
        left: -11px;
        top: 3px;
        width: 20px;
        height: 20px;
        background: url(<?php echo \think\Config::get('index'); ?>/images/kf-close1.png) center no-repeat;
        background-size: 100%;
    }

    .kf_list .kf_top {
        float: left;
        width: 100%;
        text-align: center;
    }

    .kf_list .kf_top .img1 {
        width: 154px;
        margin-left: -14px;
    }

    .kf_list .kf_top img {
        width: 70%;
    }

    .kf_list .list {
        float: left;
        width: 94%;
        margin: 3%;
    }

    .kf_list .list a {
        float: left;
        width: 49%;
        margin: 2% 0 0 2%;
        height: 26px;
        line-height: 26px;
        font-size: 12px;
    }

    .kf_list .list a:nth-of-type(2n+1) {
        margin-left: 0;
    }

    .kf_list .list a.kf-on {
        color: #000000;
    }

    .kf_list .list a.kf-off {
        color: #aaa;
    }

    .kf_list .list a i {
        float: left;
        width: 26px;
        height: 30px;
        float: left;
    }

    .kf_list .list a.kf-on i {
        background: url(<?php echo \think\Config::get('index'); ?>/images/kf-on.png) center no-repeat;
        background-size: 50%;
    }

    .kf_list .list a.kf-off i {
        background: url(<?php echo \think\Config::get('index'); ?>/images/kf-off.png) center no-repeat;
        background-size: 50%;
    }

    .kf_list .text {
        float: left;
        width: 100%;
        text-align: center;
        color: #000000;
        padding: 8px 0;
    }

    .kf_list .text h3 {
        font-size: 16px;
        line-height: 2;
        font-family: serif;
    }

    .kf_list .text p {
        font-size: 10px;
        line-height: 1.8;
        text-align: left;
        margin-left: 5%;
    }

    .kf_list .text p.p1 {
        font-size: 11px;
        letter-spacing: 0.4px;
    }

    .kf_list .kf-btm {
        float: left;
        width: 90%;
        text-align: center;
        padding: 8px 5% 12px 5%;
        color: #000000;
        font-size: 12px;
        line-height: 1.6;
    }
</style>
<style>
    /*重新写的css*/
    .navActive{
        background: #EEC87D;
        color: #000;
    }
    .loright{
        position: relative;
    }
    .log-box{
        position: absolute;
        right: 10px;
        bottom: 10px;
    }
    .log-box a{
        margin-right: 10px;
    }
</style>

<body>
<div class="wrap">
    <div class="topnavw topnavwb">
        <div class="count">
            <span class="welws">琢玉界-中华民族玉雕文化的守护者</span>
            <div class="clear"></div>
        </div>
    </div>
    <div class="clear"></div>
    <div class="count">
        <div class="loright">
            <div class="log-box">
                <a href="<?php echo url('admin/login/index'); ?>">登录</a>
                <a href="">注册</a>
            </div>
        </div>
        <div class="clear"></div>
    </div>
    <!--导航-->
    <div class="topnavw topnavwnav">
        <div class="count">
            <ul class="ydjnavw">
                <li><a href="<?php echo url('index/index/index'); ?>" target="_blank">琢玉界首页</a></li>
                <li><a href="<?php echo url('index/world/index'); ?>" target="_blank">全国巡展</a></li>
                <li><a href="<?php echo url('index/index/graver'); ?>" target="_blank">玉雕名家</a></li>
                <li><a href="<?php echo url('index/index/goods'); ?>" target="_blank">最新作品</a></li>
                <li><a href="<?php echo url('index/index/yuanliao'); ?>" target="_blank">玉石原料</a></li>
                <li><a href="<?php echo url('index/index/mjqj'); ?>" target="_blank">民间巨匠</a></li>
                <li><a href="/index/xx" target="_blank">精品拍卖</a></li>
                <li><a href="<?php echo url('index/index/siren'); ?>" target="_blank">私人定制</a></li>
                <li><a href="<?php echo url('index/index/collect'); ?>" target="_blank">收藏推荐</a></li>
            </ul>
            <form class="ydhifs" method="get" action="/index.php" name="form">
                <input type="hidden" name="m" value="Search"/>
                <input type="hidden" name="a" value="index"/>
                <input type="text" name="keyword" value="" id="keyword"/>
                <input class="ydjsubmit" type="submit" value="搜 索"/>
            </form>
        </div>
    </div>
    <!--抽取-->
        <!--轮播图-->
<div class="count">
    <div class="yfocus">
        <div class="yfocusl">
            <div class="wrapper">
                <div id="focus">
                    <!--焦点图-->
                    <ul>
                        <li>
                            <a title="私人定制" href="siren.html"
                               target="_blank">
                                <img src="<?php echo \think\Config::get('index'); ?>/picture/9be1e7857f959f0a203431f9566e5add.jpg">
                            </a>
                        </li>
                        <li>
                            <a title="民间巧匠" href="mjqj.html" target="_blank">
                                <img src="<?php echo \think\Config::get('index'); ?>/picture/d8174065b83.png"></a>
                        </li>
                        <li><a title="玉石原料" href="yuanliao.html" target="_blank"><img
                                src="<?php echo \think\Config::get('index'); ?>/picture/d9634b21bb6.jpg"></a>
                        </li>
                        <li><a title="收藏推荐" href="index/index/yuanliao.html" target="_blank"><img
                                src="<?php echo \think\Config::get('index'); ?>/picture/d8173f0ca8d.jpg"></a>
                        </li>
                        <li>
                            <a title="动态" href="dongtai.html" target="_blank">
                                <img src="<?php echo \think\Config::get('index'); ?>/picture/d81740c9f57.jpg"></a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="clear"></div>
<div class="count">
    <div class="tith">
        <h3>玉雕作品</h3>
        <a href="goods.html" target="_blank">更多&gt;&gt;</a>
        <div style="clear:both;"></div>
    </div>
    <!--玉雕作品list，保留一个，从后台加载数据渲染-->
    <ul class="shiydsw">
        <!--item-->
        <li class="" id="goods_32034">
            <a href="/index/index/goodsDetail.html" target="_blank" class="daaimg" target="_blank">
                <img class="lazyimg" src="<?php echo \think\Config::get('index'); ?>/picture/imghold.gif"
                     data-original="https://ydjimg.jaadee.net/uploads/ydj/images/2018/03/22-09-dd6f1e686b7.jpg"/>
            </a>
            <div class="zuozinfo">
                <a href="/index/index/graverDetail.html" target="_blank" class="zzimgaw">
                    <img src="/index/picture/yudiaoshi.jpg"/>
                </a>
                <div class="zzzpw">
                    <div class="zzup">
                        <a href="graverDetail.html" target="_blank">莲花冠以</a>
                        <a href="graverDetail.html" target="_blank">作者：何亚波</a>
                    </div>
                    <div class="zzupb">
                        <span class="jiage">￥10800元</span>
                    </div>
                </div>
            </div>
            <a target="_blank" href="/Goods/32034.html" class="yybut huis">查看作品详细 </a>
            <i>翡翠</i>
        </li>

    </ul>
</div>
<div class="clear"></div>
<div class="count">
    <div class="tith">
        <h3>玉雕名家</h3>
        <a href="/index/index/graver.html" target="_blank">更多&gt;&gt;</a>
        <div style="clear:both;"></div>
    </div>
    <div class="graverlist">
        <ul class="zjul">
            <!--item-->
            <li>
                <a href="/index/index/graverDetail.html" target="_blank">
                    <img class="lazyimg" src="/index/picture/imghold.gif"
                         data-original="https://ydjimg.jaadee.net/uploads/2016/11/17/d747286ed4e.jpg"/>
                </a>
                <span>刘东</span>
            </li>
        </ul>
        <div class="clear"></div>
    </div>
</div>
    <!--抽取-->
    <div class="count">
        <a target="_blank" href="https://www.jaadee.com/Page/appdown.html" style="display:block;">
            <img style="width:100%; height:auto; margin-top:10px;" src="<?php echo \think\Config::get('index'); ?>/picture/appbig2017.jpg"/>
        </a>
        <div class="count">
            <ul class="fmainfoot">
                <li><a href="<?php echo url('about/index'); ?>" target="_blank">关于我们</a></li>
                <span>|</span>
                <li><a href="<?php echo url('about/contact'); ?>" target="_blank">联系我们</a></li>
                <span>|</span>
                <li><a href="<?php echo url('about/aftersale'); ?>" target="_blank">售后服务</a></li>
                <span>|</span>
                <li><a href="<?php echo url('about/howbuy'); ?>" target="_blank">如何购买</a></li>
                <span>|</span>
                <li><a href="<?php echo url('index/dongtai'); ?>" target="_blank">最新动态</a></li>
                <span>|</span>
                <li>
                    <a href="http://mp.weixin.qq.com/s?__biz=MzA3ODAwMTMwNA==&mid=202540906&idx=1&sn=ce14f00cf000ea3e3808d6e4208bb33f&scene=1&from=singlemessage&isappinstalled=0#rd"
                       target="_blank">加入我们</a></li>
            </ul>

            <div class="footer">
                玉雕行业从业人员素质良莠不齐，谨防受骗，请认准琢玉界全国统一查询电话13760153380<br/>
                2018-2050 缘石玉雕(www.zhuoyujie.com)版权所有<br>
                ICP备案号:xxxx / 公安备案号: xxxx / 工商注册号: xxxx<br>
                公司地址：深圳市宝安区创业二路一巷27号（缘石玉雕责任有限公司）<br>
            </div>

        </div>
    </div>
    <div class="kf_list">
        <div class="max-kf kf_ydj">
            <div class="kf_top">
                <img class="img1" src="<?php echo \think\Config::get('index'); ?>/picture/kf-ydj.png"/>
                <a target="_blank" href="https://webim.jaadee.com/index.php/pc/server/chat.html?plat=4&accid="><img
                        src="<?php echo \think\Config::get('index'); ?>/picture/kf-pic01.png"/></a>
            </div>
            <div class="list">
                <a class="kf-on" target="_blank"
                   href="https://webim.jaadee.com/index.php/pc/server/chat.html?plat=4&accid=jaadee521"><i></i>荣仔</a>
                <a class="kf-on" target="_blank"
                   href="https://webim.jaadee.com/index.php/pc/server/chat.html?plat=4&accid=zuiaicuicui521"><i></i>波仔</a>
                <a class="kf-on" target="_blank"
                   href="https://webim.jaadee.com/index.php/pc/server/chat.html?plat=4&accid=jaadee5210"><i></i>小秦</a>
            </div>
            <div class="text">
                <h3>投诉与建议</h3>
                <p class="p1">电话：13510477398</p>
                <p>邮箱：<br>229601195@qq.com</p>
            </div>
            <div class="kf-btm">认真倾听顾客的心声</div>
            <a class="closemax" onclick="closemax();"></a>
        </div>
        <a class="min-kf" onclick="closemin()">
            <img src="<?php echo \think\Config::get('index'); ?>/picture/kf-min02.png"/>
        </a>
    </div>
</div>
</body>
<script type="text/javascript">
    $(function () {
        lazyload();
        navActive();
    });

    /**
     * 导航条active
     */
    function navActive() {
        var path=location.pathname;
        $('.ydjnavw li a').each(function (i,item) {
            var item=$(item);
            var href=item.attr('href');
            if(path===href){
                item.parent().addClass('navActive');
            }

        })
    }
    function lazyload() {
        $(".lazyimg").lazyload({
            effect: "fadeIn",
            threshold: 200
        });
    }
</script>
<script type="text/javascript">
    $(function () {
        var sWidth = $("#focus").width(); //获取焦点图的宽度（显示面积）
        var len = $("#focus ul li").length; //获取焦点图个数
        var index = 0;
        var picTimer;

        //以下代码添加数字按钮和按钮后的半透明条，还有上一页、下一页两个按钮
        var btn = "<div class='btnBg'></div><div class='btn'>";
        for (var i = 0; i < len; i++) {
            btn += "<span></span>";
        }
        btn += "</div><div class='preNext pre'></div><div class='preNext next'></div>";
        $("#focus").append(btn);
        $("#focus .btnBg").css("opacity", 0.5);

        //为小按钮添加鼠标滑入事件，以显示相应的内容
        $("#focus .btn span").css("opacity", 0.4).mouseenter(function () {
            index = $("#focus .btn span").index(this);
            showPics(index);
        }).eq(0).trigger("mouseenter");

        //上一页、下一页按钮透明度处理
        $("#focus .preNext").css("opacity", 0.2).hover(function () {
            $(this).stop(true, false).animate({"opacity": "0.5"}, 300);
        }, function () {
            $(this).stop(true, false).animate({"opacity": "0.2"}, 300);
        });

        //上一页按钮
        $("#focus .pre").click(function () {
            index -= 1;
            if (index == -1) {
                index = len - 1;
            }
            showPics(index);
        });

        //下一页按钮
        $("#focus .next").click(function () {
            index += 1;
            if (index == len) {
                index = 0;
            }
            showPics(index);
        });

        //本例为左右滚动，即所有li元素都是在同一排向左浮动，所以这里需要计算出外围ul元素的宽度
        $("#focus ul").css("width", sWidth * (len));

        //鼠标滑上焦点图时停止自动播放，滑出时开始自动播放
        $("#focus").hover(function () {
            clearInterval(picTimer);
        }, function () {
            picTimer = setInterval(function () {
                showPics(index);
                index++;
                if (index == len) {
                    index = 0;
                }
            }, 4000); //此4000代表自动播放的间隔，单位：毫秒
        }).trigger("mouseleave");

        //显示图片函数，根据接收的index值显示相应的内容
        function showPics(index) { //普通切换
            var nowLeft = -index * sWidth; //根据index值计算ul元素的left值
            $("#focus ul").stop(true, false).animate({"left": nowLeft}, 300); //通过animate()调整ul元素滚动到计算出的position
            //$("#focus .btn span").removeClass("on").eq(index).addClass("on"); //为当前的按钮切换到选中的效果
            $("#focus .btn span").stop(true, false).animate({"opacity": "0.4"}, 300).eq(index).stop(true, false).animate({"opacity": "1"}, 300); //为当前的按钮切换到选中的效果
        }
    });
</script>
<script src="<?php echo \think\Config::get('index'); ?>/js/jquery.downcount.js"></script>
<script type="text/javascript">
    $('.countdown').downCount({
        date: '11/12/2016 00:00:00',
        offset: +8
    }, function () {
        $(".countdown").hide();
    });
</script>
<script>
    var clientWidth = $(window).width();
    if (parseInt(clientWidth) < 1500) {
        $(".max-kf").hide();
        $(".min-kf").show();
    } else {
        $(".max-kf").show();
        $(".min-kf").hide();
    }

    function closemax() {
        $(".max-kf").hide();
        $(".min-kf").show();
    }

    function closemin() {
        $(".max-kf").show();
        $(".min-kf").hide();
    }
</script>
<script>
    var _hmt = _hmt || [];
    (function () {
        var hm = document.createElement("script");
        hm.src = "https://hm.baidu.com/hm.js?c2906e20f9c36821c90523eff59d2c90";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
    })();
</script>
<!--cnzz统计-->
<script>
    var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");
    document.write(unescape("%3Cspan id='cnzz_stat_icon_1273007180'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "w.cnzz.com/c.php%3Fid%3D1273007180' type='text/javascript'%3E%3C/script%3E"));
</script>
</html>