<?php if (!defined('THINK_PATH')) exit(); /*a:1:{s:82:"F:\wampserver\azlj\www\zhuoyujiebackground/application/index\view\world\index.html";i:1522497334;}*/ ?>
﻿
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>琢玉界全国巡展-首页</title>
    <link rel="stylesheet" type="text/css" href="<?php echo \think\Config::get('index'); ?>/css/world.css">
    <script src="<?php echo \think\Config::get('index'); ?>/js/jquery-1.9.1.min.js"></script>
</head>
<body style="background:#F4F4F2; margin:0; padding:0;"><!--头部ing-->
<!--<div class="toper"><div class="count"><a class="leftlogo" href="#" target="_blank"><img src="<?php echo \think\Config::get('index'); ?>/picture/xzlogo.png" /></a><div class="vodew"><div class="vode"><embed src="http://player.youku.com/player.php/sid/XOTE2ODQ2NzIw/v.swf" allowfullscreen="true" quality="high" allowscriptaccess="always" type="application/x-shockwave-flash" align="middle" height="230" width="100%"></div><span>玉雕名家寄语“琢玉界”</span></div><div class="clear"></div></div></div>-->
<div style="width:100%; height:auto;float:left;"><a href="/World/local.html?id=19"><img style="width:100%; height:auto;"
                                                                                        src="<?php echo \think\Config::get('index'); ?>/picture/xz-topbanner.jpg"/></a>
</div>
<div class="navw">
    <div class="count">
        <ul class="nav">
            <!li--><!--a href="https://www.jaadee.com/" target="_blank">翡翠王朝</a--><--/li>
            <li><a href="/" target="_blank">琢玉界</a></li>
            <li><a class="current" href="/World/" target="_blank">巡展首页</a></li>
            <li><a href="/World/flei.html" target="_blank">参展作品</a></li>
            <li><a href="/World/mjjy.html" target="_blank">名家寄语</a></li>
            <li><a href="/World/local.html?id=9" target="_blank">现场花絮</a></li>
            <form method="GET" action="/index.php" class="ssf"><input type="hidden" name="m" value="Search"><input
                    type="hidden" name="a" value="index"><input class="keyword" name="keyword" type="text"
                                                                onfocus="if(this.value=='输入关键字，点击搜索'){this.value='';}"
                                                                onblur="if(this.value==''){this.value='输入关键字，点击搜索';}"
                                                                value="输入关键字，点击搜索"/><input class="button" type="submit"
                                                                                           value="搜索"/></form>
        </ul>
        <div class="clear"></div>
    </div>
</div>
<div class="clear"></div><!--头部end--><!--主体ing-->
<img src="/public/index/picture/appbig2017.jpg" alt="">
<div class="count">
    <div class="xzaddrw">
        <div class="yjtopw"><img src="<?php echo \think\Config::get('index'); ?>/picture/yhtop.png"/></div>
        <div class="yjzhong">
            <div class="left">
                <div id="addr1" class="ciinfo"><img src="<?php echo \think\Config::get('index'); ?>/picture/d6d25e66eb2.jpg"/></div>
                <div id="addr2" class="ciinfo"><img src="<?php echo \think\Config::get('index'); ?>/picture/cityinfo1.jpg"/></div>
                <div id="addr3" class="ciinfo" style="display:block;"><img src="<?php echo \think\Config::get('index'); ?>/picture/cityinfo2.jpg"/></div>
                <div id="addr4" class="ciinfo"><img src="<?php echo \think\Config::get('index'); ?>/picture/cityinfo3.jpg"/></div>
                <div id="addr5" class="ciinfo"><img src="<?php echo \think\Config::get('index'); ?>/picture/cityinfo5.jpg"/></div>
                <div id="addr6" class="ciinfo"><img src="<?php echo \think\Config::get('index'); ?>/picture/cityinfo6.jpg"/></div>
                <div id="addr7" class="ciinfo"><img src="<?php echo \think\Config::get('index'); ?>/picture/cityinfo7.jpg"/></div>
                <div id="addr8" class="ciinfo"><img src="<?php echo \think\Config::get('index'); ?>/picture/cityinfo8.jpg"/></div>
                <a href="javascript:return void(0);" id="outewm" class="djck"></a></div>
            <ul class="ddimg" id="citylist">
                <li><a href="/World/local.html?id=12" target="_blank" class="addr1"><img src="<?php echo \think\Config::get('index'); ?>/picture/city4.jpg"/>
                    <div class="cityinfo"><span class="zwen">昆明</span><span class="ywen">KUNMING</span></div>
                    <div class="cityzzhao"></div>
                </a></li>
                <li><a href="/World/local.html?id=9" target="_blank" class="addr2"><img src="<?php echo \think\Config::get('index'); ?>/picture/city1.jpg"/>
                    <div class="cityinfo"><span class="zwen">北京</span><span class="ywen">BEIJING</span></div>
                    <div class="cityzzhao"></div>
                </a></li>
                <li><a href="/World/local.html?id=19" target="_blank" class="addr3"><img src="<?php echo \think\Config::get('index'); ?>/picture/city2.jpg"/>
                    <div class="cityinfo"><span class="zwen">上海</span><span class="ywen">SHANGHAI</span></div>
                    <div class="cityzzhao" style="display:none;"></div>
                </a></li>
                <li><a href="/World/local.html?id=15" target="_blank" class="addr4"><img src="<?php echo \think\Config::get('index'); ?>/picture/city3.jpg"/>
                    <div class="cityinfo"><span class="zwen">广州</span><span class="ywen">GUANGZHOU</span></div>
                    <div class="cityzzhao"></div>
                </a></li>
                <li><a href="#" target="_blank" class="addr5"><img src="<?php echo \think\Config::get('index'); ?>/picture/city5.jpg"/>
                    <div class="cityinfo"><span class="zwen">深圳</span><span class="ywen">SHENZHEN</span></div>
                    <div class="cityzzhao"></div>
                </a></li>
                <li><a href="#" target="_blank" class="addr6"><img src="<?php echo \think\Config::get('index'); ?>/picture/city6.jpg"/>
                    <div class="cityinfo"><span class="zwen">郑州</span><span class="ywen">ZHENGZHOU</span></div>
                    <div class="cityzzhao"></div>
                </a></li>
                <li><a href="#" target="_blank" class="addr7"><img src="<?php echo \think\Config::get('index'); ?>/picture/city7.jpg"/>
                    <div class="cityinfo"><span class="zwen">青岛</span><span class="ywen">QINGDAO</span></div>
                    <div class="cityzzhao"></div>
                </a></li>
                <li><a href="#" target="_blank" class="addr8"><img src="<?php echo \think\Config::get('index'); ?>/picture/city8.jpg"/>
                    <div class="cityinfo"><span class="zwen">香港</span><span class="ywen">HONG KONG</span></div>
                    <div class="cityzzhao"></div>
                </a></li>
            </ul>
        </div>
        <div class="yjfooter"><img src="<?php echo \think\Config::get('index'); ?>/picture/yjfooter.png"/></div>
        <div class="clear"></div>
    </div>
</div>
<div class="count">
    <div class="cptit"><a class="tita" href="/World/flei.html?meterid=1" target="_blank">翡 翠<span>/JADE</span></a><a
            class="more" href="/World/flei.html?meterid=1" target="_blank">查看更多</a>
        <div class="clear"></div>
    </div>
    <ul class="shiydsw">
        <li><a href="/Goods/1250.html" target="_blank" class="daaimg"><img class="lazyimg"
                                                                           src="<?php echo \think\Config::get('index'); ?>/picture/97e1551e0dc5.jpg"></a>
            <div class="zuozinfo"><a href="/Graver/1.html" target="_blank" class="zzimgaw"><img
                    src="<?php echo \think\Config::get('index'); ?>/picture/d7472edc942.jpg"></a>
                <div class="zzzpw">
                    <div class="zzup"><a href="/Goods/1250.html" target="_blank">如意添福</a><a href="/Graver/1.html"
                                                                                            target="_blank">作者：李少飞</a>
                    </div>
                    <div class="zzupb"><span class="jiage">请联系客服询价</span></div>
                </div>
            </div>
            <a target="_blank" href="/Goods/1250.html" class="yybut huis">查看作品详细 </a><i>翡翠</i></li>


    </ul>
    <div class="clear"></div>
</div>
<div class="count">
    <div class="cptit"><a class="tita" href="/World/flei.html?meterid=7" target="_blank">南 红<span>/NANHONG</span></a><a
            class="more" href="/World/flei.html?meterid=7" target="_blank">查看更多</a>
        <div class="clear"></div>
    </div>
    <ul class="shiydsw">
        <li><a href="/Goods/2239.html" target="_blank" class="daaimg"><img class="lazyimg"
                                                                           src="<?php echo \think\Config::get('index'); ?>/picture/70b155961c19.jpg"></a>
            <div class="zuozinfo"><a href="/Graver/13.html" target="_blank" class="zzimgaw"><img
                    src="<?php echo \think\Config::get('index'); ?>/picture/d747286ed4e.jpg"></a>
                <div class="zzzpw">
                    <div class="zzup"><a href="/Goods/2239.html" target="_blank">绽</a><a href="/Graver/13.html"
                                                                                         target="_blank">作者：刘东</a></div>
                    <div class="zzupb"><span class="jiage">请联系客服询价</span></div>
                </div>
            </div>
            <a target="_blank" href="/Goods/2239.html" class="yybut huis">查看作品详细 </a><i>南红</i></li>


    </ul>
    <div class="clear"></div>
</div>
<div class="count">
    <div class="cptit"><a class="tita" href="/World/flei.html?meterid=4" target="_blank">黄龙玉<span>/HUANGLONG JADE</span></a><a
            class="more" href="/World/flei.html?meterid=4" target="_blank">查看更多</a>
        <div class="clear"></div>
    </div>
    <ul class="shiydsw"></ul>
    <div class="clear"></div>
</div>
<div class="count">
    <div class="cptit"><a class="tita" href="/World/flei.html?meterid=3" target="_blank">玛 瑙<span>/AGATE</span></a><a
            class="more" href="/World/flei.html?meterid=3" target="_blank">查看更多</a>
        <div class="clear"></div>
    </div>
    <ul class="shiydsw">
        <li><a href="/Goods/102.html" target="_blank" class="daaimg"><img class="lazyimg"
                                                                          src="<?php echo \think\Config::get('index'); ?>/picture/7606548abc3a.jpg"></a>
            <div class="zuozinfo"><a href="/Graver/165.html" target="_blank" class="zzimgaw"><img
                    src="<?php echo \think\Config::get('index'); ?>/picture/d86b71dad1f.jpg"></a>
                <div class="zzzpw">
                    <div class="zzup"><a href="/Goods/102.html" target="_blank">高洁</a><a href="/Graver/165.html"
                                                                                         target="_blank">作者：右一轩工作室</a>
                    </div>
                    <div class="zzupb"><span class="jiage">￥10000元</span></div>
                </div>
            </div>
            <a target="_blank" href="/Goods/102.html" class="yybut huis">查看作品详细 </a><i>玛瑙</i></li>


    </ul>
    <div class="clear"></div>
</div>
<div class="count">
    <div class="cptit"><a class="tita" href="/World/flei.html?meterid=2" target="_blank">琥 珀<span>/AMBER</span></a><a
            class="more" href="/World/flei.html?meterid=2" target="_blank">查看更多</a>
        <div class="clear"></div>
    </div>
    <ul class="shiydsw">
        <li><a href="/Goods/978.html" target="_blank" class="daaimg"><img class="lazyimg" src="<?php echo \think\Config::get('index'); ?>/picture/d6d25e66eb2.jpg"></a>
            <div class="zuozinfo"><a href="/Graver/42.html" target="_blank" class="zzimgaw"><img
                    src="<?php echo \think\Config::get('index'); ?>/picture/15871bb9bfd.jpg"></a>
                <div class="zzzpw">
                    <div class="zzup"><a href="/Goods/978.html" target="_blank">情有独钟</a><a href="/Graver/42.html"
                                                                                           target="_blank">作者：李朋</a>
                    </div>
                    <div class="zzupb"><span class="jiage">￥2900元</span></div>
                </div>
            </div>
            <a target="_blank" href="/Goods/978.html" class="yybut huis">查看作品详细 </a><i>琥珀</i></li>

    </ul>
    <div class="clear"></div>
</div>
<div class="count">
    <div class="allcp">
        <div class="allcptxt">全部分类<br>ALL CATEGORIES</div>
    </div>
    <ul class="alllist">
        <li><a href="/World/flei.html?meterid=1" target="_blank"><img src="<?php echo \think\Config::get('index'); ?>/picture/fl1.jpg"><span>翡 翠</span></a></li>
        <li><a href="/World/flei.html?meterid=7" target="_blank"><img src="<?php echo \think\Config::get('index'); ?>/picture/fl2.jpg"><span>南 红</span></a></li>
        <li><a href="/World/flei.html?meterid=4" target="_blank"><img src="<?php echo \think\Config::get('index'); ?>/picture/fl3.jpg"><span>黄龙玉</span></a></li>
        <li><a href="/World/flei.html?meterid=3" target="_blank"><img src="<?php echo \think\Config::get('index'); ?>/picture/fl4.jpg"><span>玛 瑙</span></a></li>
        <li><a href="/World/flei.html?meterid=2" target="_blank"><img src="<?php echo \think\Config::get('index'); ?>/picture/fl5.jpg"><span>琥 珀</span></a></li>
        <li><a href="/World/flei.html?meterid=23" target="_blank"><img src="<?php echo \think\Config::get('index'); ?>/picture/fl6.jpg"><span>红宝石</span></a></li>
        <li><a href="/World/flei.html?meterid=16" target="_blank"><img src="<?php echo \think\Config::get('index'); ?>/picture/fl7.jpg"><span>金丝玉</span></a></li>
        <li><a href="/World/flei.html?meterid=13" target="_blank"><img src="<?php echo \think\Config::get('index'); ?>/picture/fl8.jpg"><span>三彩玉</span></a></li>
        <li><a href="/World/flei.html?meterid=11" target="_blank"><img src="<?php echo \think\Config::get('index'); ?>/picture/fl9.jpg"><span>戈壁玉</span></a></li>
        <li><a href="/World/flei.html?meterid=14" target="_blank"><img src="<?php echo \think\Config::get('index'); ?>/picture/fl10.jpg"><span>玉 髓</span></a></li>
        <li><a href="/World/flei.html?meterid=10" target="_blank"><img src="<?php echo \think\Config::get('index'); ?>/picture/fl11.jpg"><span>水沫玉</span></a></li>
        <li><a href="/World/flei.html?meterid=other" target="_blank"><img src="<?php echo \think\Config::get('index'); ?>/picture/fl12.jpg"><span>其 它</span></a>
        </li>
        <div class="clear"></div>
    </ul>
</div><!--玉雕师-->
<div class="count">
    <div class="cptit"><a class="tita" href="http://ydj.jaadee.com/pc.php?m=Graver&a=index" target="_blank">玉雕师阵容<span>/JADE CARVING MASTER</span></a><a
            class="more" href="http://ydj.jaadee.com/pc.php?m=Graver&a=index" target="_blank">查看更多</a>
        <div class="clear"></div>
    </div>
    <ul class="dastuij">
        <li><a class="aimg" target="_blank" href="/Graver/13.html"><img src="<?php echo \think\Config::get('index'); ?>/picture/d747286ed4e.jpg"></a><h4><a
                href="/Graver/13.html">刘东</a></h4>
            <div class="clear"></div>
        </li>

    </ul>
</div>

<div class="clear"></div>
<div class="clear"></div>
<!--摄影大赛<div class="count"><div class="xzaddrw"><div class="yjtopw"><img src="<?php echo \think\Config::get('index'); ?>/picture/yhtop.png"></div><div class="yjzhong yjzhonggg"><a href="http://ydj.jaadee.com/pc.php?m=World&a=photos" target="_blank"><img src="<?php echo \think\Config::get('index'); ?>/picture/ggao1.jpg" ><span>查看规则</span></a></div><div class="yjfooter"><img src="<?php echo \think\Config::get('index'); ?>/picture/yjfooter.png"></div><div class="clear"></div></div></div>-->
<!--主体end--><!--尾部ing-->
<div class="footer">
    <div class="count">
        <ul class="footnav">
            <li><a href="http://www.jaadee.com/Help/about.html" target="_blank">关于我们</a></li>
            <span>|</span>
            <li><a href="http://www.jaadee.com/Help/contactus.html" target="_blank">联系我们</a></li>
            <span>|</span>
            <li><a href="http://www.jaadee.com/Help/sale_service.html" target="_blank">售后服务</a></li>
            <span>|</span>
            <li><a href="http://www.jaadee.com/Help/howbuy.html" target="_blank">如何购买</a></li>
            <span>|</span>
            <li><a href="https://yd.jaadee.com/ArticleCat/" target="_blank">最新动态</a></li>
            <span>|</span>
            <li>
                <a href="http://mp.weixin.qq.com/s?__biz=MzA3ODAwMTMwNA==&mid=202540906&idx=1&sn=ce14f00cf000ea3e3808d6e4208bb33f&scene=1&from=singlemessage&isappinstalled=0#rd"
                   target="_blank">加入我们</a></li>
        </ul>
        <p> ©琢玉界版权所有 所属公司：xxx公司<br> ICP备案号: / 公安备案号:  /
            工商注册号: <br> 公司地址：xxx<br>
            客服电话：123456 售后咨询： 批发/货源协同请加微信：xxxxx
        </p></div>
</div><!--弹出二维码-->
<div class="outm" id="ewmid"><a class="xxbut" id="closeewm" href="javascript:return void(0);"></a>
    <div class="ewmw"></div>
    <a class="kfzy" href="#">巡展客服专员</a>
    <p>提前预约您心仪的玉雕小品！</p></div><!--尾部end-->
<script>$(function () {
    $("#citylist li a").mousemove(function () {
        var cityid = "#" + $(this).attr("class");
        $("#citylist li .cityzzhao").show();
        $(this).children('.cityzzhao').hide();
        $('.ciinfo').hide();
        $(cityid).show();
    });

    $('#outewm').click(function () {
        $("#ewmid").fadeIn();
    });

    $('#closeewm').click(function () {
        $("#ewmid").fadeOut();
    });
});
</script>
<script type="text/javascript">var id = '11000';
document.write("<script type=\"text/javascript\" src='js/tj.js'><\/script>");</script>
</body>
</html>

