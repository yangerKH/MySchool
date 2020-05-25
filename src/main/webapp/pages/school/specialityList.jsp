<%--
  Created by IntelliJ IDEA.
  User: yanger
  Date: 2020/5/15
  Time: 下午3:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
    <title>专业知识库|专业介绍|本科专业|高职专业_阳光高考</title>
    <meta name="keywords" content="专业库,专业介绍,本科专业,高职专业" />
    <meta name="description" content="专业知识库为考生提供权威、详尽的大学专业信息，包括：本科专业查询、高职专业查询、各高校专业介绍、专业人数规模、专业就业率、专业考研方向、专业点分布等。" />



    <link rel="dns-prefetch" href="//axvert.chsi.com.cn">
    <link rel="dns-prefetch" href="//t1.chei.com.cn">
    <link rel="dns-prefetch" href="//t2.chei.com.cn">
    <link rel="dns-prefetch" href="//t3.chei.com.cn">
    <link rel="dns-prefetch" href="//t4.chei.com.cn">
    <link rel="dns-prefetch" href="//www.google-analytics.com">
    <link rel="stylesheet" href="https://t1.chei.com.cn/common/ch/iconfont.css">
    <link rel="stylesheet" href="https://t1.chei.com.cn/common/css/share.css"/>
    <link rel="stylesheet" href="https://t2.chei.com.cn/gaokao/assets/src/css/gaokao.min.css">
    <!--<link rel="stylesheet" href="/zyk/assets/src/css/gaokao.min.css">-->
    <script src="https://t1.chei.com.cn/common/jquery/1.8.3/jquery.min.js"></script>
    <script src="https://t1.chei.com.cn/common/axvert/js/showchsi_m.js"></script>
    <script src="https://t1.chei.com.cn/common/js/snsshare.js"></script>
    <script src="https://t1.chei.com.cn/common/js/goToTop.js"></script>
    <!--[if IE 6]>
    <script src="https://t4.chei.com.cn/gaokao/js/IE6PNG.js"></script>
    <script>DD_belatedPNG.fix('#dhBG,#dh_logo,img');</script>
    <![endif]-->


    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-100524-6"></script>
    <script>
        window.dataLayer = window.dataLayer || [];
        function gtag(){dataLayer.push(arguments);}
        gtag('js', new Date());
        gtag('config', 'UA-100524-6');
    </script>


</head>
<body class="ch-sticky">
<img style="display: block;" src='https://t1.chei.com.cn/common/wap/images/share_yz.jpg' width='0' height='0' />
<div class="main-wrapper">








    <style>
        /**
         * description: 吊顶;
         * author: myx;
         * date: 2017-12;
         */
        .top-nav-wrapper {
            width: 100%;
            height: 38px;
            line-height: 42px;
            background: #f5f5f5;
            border-bottom: 1px solid #d6d6d6;
            font-size: 12px;
            overflow: hidden;
        }

        .top-nav-wrapper a {
            color: #333;
        }

        .top-nav-wrapper a.hot {
            color: #ee6464;
        }

        .top-nav-wrapper a:hover {
            text-decoration: underline;
        }

        .top-nav-wrapper .top-nav {
            width: 1180px;
            margin: 0 auto;
        }

        .top-nav-wrapper .top-nav-list {
            float: left;
            width: 980px;
            height: 38px;
        }

        .top-nav-wrapper .top-nav-list a {
            margin: 0 10px;
        }

        .top-nav-wrapper .top-nav-list a.top-nav-home {
            display: inline-block;
            width: 25px;
            height: 38px;
            padding-left: 50px;
            margin-right: 15px;
            margin-left: 0px;
            margin-top: -1px;
            background-image: url("https://t2.chei.com.cn/gaokao/assets/src/images/logo.png");
            background-image: -webkit-image-set(url("https://t2.chei.com.cn/gaokao/assets/src/images/logo.png") 1x, url("https://t2.chei.com.cn/gaokao/assets/src/images/logo2x.png") 2x);
            background-repeat: no-repeat;
            background-position: 0 0px;
            color: #1db278;
            font-weight: bold;
            vertical-align: middle;
        }

        .top-nav-wrapper .top-nav-list a.top-nav-home:hover {
            text-decoration: none;
        }

        .top-nav-wrapper .top-nav-load {
            float: right;
            width: 200px;
            height: 38px;
            text-align: right;
        }

        .top-nav-wrapper .top-nav-load a {
            margin: 0 5px;
        }

        .top-nav-wrapper a.username {
            color: #1db278;
        }
    </style>
    <div class="top-nav-wrapper">
        <div class="top-nav clearfix">
            <div class="top-nav-load">
                <a href="/user/userAccountLogin.do?entrytype=gkstu">登录</a>|
                <a href="https://account.chsi.com.cn/account/account!newaccount?from=gaokao-zixun">注册</a>

            </div>
        </div>
    </div>

    <!--头部区域-->
    <div class="header-wrapper single-header">
        <div class="ch-header-second clearfix">
            <h1>专业知识库</h1>
        </div>
    </div>

    <!--主体区域-->
    <c:if test="${action=='speList'}">
    <div class="container">
        <div class="ch-alert ch-alert-info zyk-info">
            <span class="ch-alert-message">数据正在整理更新中......如果您所查询的门类、学科、专业与专业目录有出入，请以专业目录为准。</span>
            <i class="iconfont">&#xe6af;</i><a href="/gkxx/zcdh/201511/20151110/1509288315.html" target="_blank">高职（专科）专业目录</a>
            <i class="iconfont">&#xe6af;</i><a href="/sch/zyk/zydm_bk.jsp" target="_blank">本科专业目录</a>
        </div>

        <div class="ch-filter zyk-filter">
            <form action="/zyk/zybk/specialityByName" method="get" target="_blank" id="speciality_form">
                <input class="ch-input" name="zymc" id="speciality" type="text" placeholder="请输入专业名称" maxlength="40" >
                <input class="ch-btn ch-btn-big" id="speciality_submit" type="submit" value="查询" >
            </form>
        </div>

        <div class="zyk-list">
<%--            <ul class="zyk-cc-ul clearfix" id="ccUl"></ul>--%>
            <div class="spec-list clearfix">
                <ul class="zyk-lb-ul" id="mlUl"></ul>
                <ul class="zyk-lb-ul zyk-xk-ul" id="xkUl"></ul>
                <div class="zyk-list-coverbg"></div>
                <div id="listResult" class="zyk-table-container"></div>
                <div class="zyk-list-borderone"></div>
                <div class="zyk-list-bordertwo"></div>
            </div>
        </div>

    </div>
    </c:if>

    <c:if test="${action=='schoolList'}">
    <div class="container">
        <h2 class="yxk-nav-title">${zhuanye}所开设学校</h2>
        <div class="tab-content">
            <table class="ch-table zyk-ksyx">
                <tbody>
                <tr>
                    <th width="320">院校名称</th>
                    <th width="120" class="ch-table-center">往年录取分数</th>

                    <th width="320">院校名称</th>
                    <th width="120" class="ch-table-center">往年录取分数</th>
                </tr>
                <c:forEach begin="0" end="${schools.size()-1}" step="2" varStatus="i">
                    <tr>
                        <td>${schools[i.index]}</td>
                        <td class="ch-table-center"><a>前往官网查看</a></td>
                        <td>${schools[i.index+1]}</td>
                        <td class="ch-table-center"><a>前往官网查看</a></td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
    </c:if>
</div>



<!-- 4: 底部区域 -->
<style>
    /**
     * description: footer 共用底部;
     * author:myx;
     * date:2017-12;
     */

    .footer-wrapper {
        line-height: 30px;
        background: #282828;
        color: #ababab;
    }

    .footer-wrapper a {
        color: #ababab;
    }

    .footer-wrapper .footer {
        position: relative;
        width: 1180px;
        height: 198px;
        margin: 0 auto;
    }

    .footer-wrapper .footer-list {
        position: absolute;
        top: 32px;
        left: 0px;
    }

    .footer-wrapper .footer-list a {
        margin-right: 15px;
    }

    .footer-wrapper .footer-units {
        position: absolute;
        top: 75px;
        left: 0px;
    }

    .footer-wrapper .footer-media {
        position: absolute;
        top: 32px;
        left: 844px;
    }


    .footer-wrapper .footer-media a {
        position: relative;
        display: inline-block;
        margin-right: 30px;
        vertical-align: top;
    }

    .footer-wrapper .footer-media img {
        display: none;
        position: absolute;
        top: -20px;
        left: -85px;
    }

    .footer-wrapper .footer-media a:hover {
        text-decoration: none;
    }

    .footer-wrapper .footer-media a:hover img{
        display: block;
    }

    .footer-wrapper .footer-media .iconfont {
        margin-right: 5px;
        font-size: 20px;
        vertical-align: middle;
    }

    .footer-wrapper .footer-msg {
        position: absolute;
        top: 75px;
        left: 844px;
    }
</style>
<div class="footer-wrapper">
    <div class="footer">
        <div class="footer-list">
            <a href="//www.chsi.com.cn/" target="_blank">学信网</a>
            <a href="http://chesicc.moe.edu.cn/zxgw/zxjs/201604/20160418/1529506207.html" target="_blank">中心简介</a>
            <a href="//www.chsi.com.cn/about/contact.shtml" target="_blank">联系我们</a>
            <a href="//www.chsi.com.cn/about/copyright.shtml" target="_blank">版权声明</a>
            <a href="/sitemap.jsp" target="_blank">网站地图</a>
            <a href="/help/" target="_blank">帮助中心</a>
            <a href="//www.chsi.com.cn/ad/index.shtml" target="_blank">网站宣传</a>
        </div>
        <div class="footer-units">
            主办单位：<a href="http://chesicc.moe.edu.cn/" target="_blank">全国高等学校学生信息咨询与就业指导中心</a><br>
            Copyright © 2003-2020 <a href="//www.chsi.com.cn/" target="_blank">学信网</a> All Rights Reserved<br>
            <a href="http://beian.miit.gov.cn" target="_blank">京ICP备19004913号</a>
        </div>
        <div class="footer-media">
            <a href="javascript:;"><i class="iconfont" title="官方微信">&#xe694;</i>官方微信<img src="/news/file.do?method=downFile&amp;id=1537666622"></a>
            <a href="http://weibo.com/chsigk" target="_blank"><i class="iconfont" title="官方微博">&#xe693;</i>官方微博</a>
        </div>
        <div class="footer-msg">
            <!-- 服务热线：010-82199588<br> -->
            客服邮箱：kefu#chsi.com.cn（将#替换为@）
        </div>
    </div>
</div>



<script src="https://t1.chei.com.cn/common/plugins/layer/layer.js"></script>
<script src="https://t1.chei.com.cn/common/plugins/placeholder-fix.js"></script>
<script src="https://t1.chei.com.cn/common/ch/browser/least-ie8.min.js"></script>
<script>
    /**
     * @description 优化js代码
     * @author  myx
     * @date  20170810
     */

    var i_yxmc = "院校名称";
    var i_gkfs = "高考分数";
    var i_zymc = "专业名称";

    //定位到某层级
    var flag = 0;
    if(getUrlParam("pageId")&&getUrlParam("type")){
        flag = 1;
        var specId = getUrlParam("pageId").toString();
        var specType = getUrlParam("type").toString();
        var specIdCc = specId.substr(0,4);
        var specIdMl = specId.substr(0,6);
        var specIdXk = specId.substr(0,8);
    }

    $(document).ready(function() {
        loadUl();
        $("#speciality_submit").click(function(){return querySpecialities();});
    });

    /**
     * @description 判断table是否添加底部border
     * @author  myx
     * @date  20170810
     */
    function judgeBorder() {
        var mlHeight = $('#mlUl').outerHeight(), //左侧第一个ul高度
            xkHeight = $('#xkUl').outerHeight(), //左侧第二个ul高度
            tableHeight = $('#listResult').outerHeight(), //table高度
            errNum = 24; //误差范围
        if((mlHeight-errNum)>tableHeight || (xkHeight-errNum)>tableHeight){
            $('#listResult').addClass('zyk-table-container-border');
        }else{
            $('#listResult').removeClass('zyk-table-container-border');
        }
    }

    function loadUl(){
        $.post(
            '/speciality/xuelei',
            function (html) {
                // alert(html);
                $('#mlUl').html(html);
            }
        )
        $('#mlUl li').eq("0").click();
    }

    // //点击层次
    // $('#ccUl').on('click', 'li', function(){
    //     var cc = $(this).attr("id");
    //     if($(this).index()==0){
    //         $(this).addClass("onread notop").siblings("li").removeClass("onread");
    //     }else{
    //         $(this).addClass("onread").siblings("li").removeClass("onread notop");
    //     }
    //     $('#mlUl').html("<li><img src='//t1.chei.com.cn/gaokao/images/common/loading.gif' />&nbsp;正在加载...<li>");
    //     $('#xkUl').html("");
    //     $('#listResult').html("");
    //     if(cc != null && cc != ''){
    //         $.post(
    //             'https://gaokao.chsi.com.cn/zyk/zybk/mlCategory.action',
    //             'key=' + cc,
    //             function (html) {
    //                 $('#mlUl').html(html);
    //                 if(flag && specType != "cc"){
    //                     $('#mlUl li#'+specIdMl).click();
    //                 }else{
    //                     $('#mlUl li').eq("0").click();
    //                 }
    //             }
    //         );
    //     }
    // });

    //点击门类
    $('#mlUl').on('click', 'li', function(){
            var ml = $(this).attr("id");
            if($(this).index()==0){
                $(this).addClass("onread notop").siblings("li").removeClass("onread");
            }else{
                $(this).addClass("onread").siblings("li").removeClass("onread notop");
            }
            $('#xkUl').html("<li><img src='//t1.chei.com.cn/gaokao/images/common/loading.gif' />&nbsp;正在加载...<li>");
            $('#listResult').html("");
            if(ml != null && ml != ''){
                $.post(
                    '/speciality/xilei',
                    'key=' + ml,
                    function (html) {
                        $('#xkUl').html(html);
                        if(flag && specType == "xk"){
                            $('#xkUl li#'+specIdXk).click();
                        }else{
                            $('#xkUl li').eq("0").click();
                        }
                    }
                );
            }
        }
    )
    //点击学科
    $('#xkUl li').live("click",function(){
        var xk = $(this).attr("id");
        if($(this).index()==0){
            $(this).addClass("onread notop").siblings("li").removeClass("onread");
        }else{
            $(this).addClass("onread").siblings("li").removeClass("onread notop");
        }
        $('#listResult').html("<div style='text-align:center'><img src='//t1.chei.com.cn/gaokao/images/common/loading.gif' />&nbsp;正在加载...</div>");
        if(xk != null && xk != ''){
            $.post(
                '/speciality/zhuanye',
                'key=' + xk,
                function (html) {
                    $('#listResult').html(html);
                    judgeBorder();
                }
            );
        }
        flag = 0;
    })
    //取得地址栏参数
    function getUrlParam(name){
        var reg = new RegExp("(^|&)"+ name +"=([^&]*)(&|$)");
        var r = window.location.search.substr(1).match(reg);
        if (r!=null){
            return unescape(r[2]);
        }
        return null;
    }

    String.prototype.trim = function () {
        return this.replace(/(^\s*)|(\s*$)/g, "");
    }

    function querySpecialities(){
        var keyword = $('#speciality').val();
        if(keyword.trim() == "请输入专业名称"){
            alert("请输入专业名称");
            $('#speciality').focus();
            return false;
        }
        if(!isChineseAndTwo("#speciality","专业名称")){
            return false;
        }
    }

    //判断名称是汉字且至少两个
    function isChineseAndTwo(id,text){
        var re = /[^\u4e00-\u9fa5]/;
        if($(id).val().length<2){
            alert(text + "请至少输入两个汉字");
            $(id).focus();
            return false;
        }
        if(re.test($(id).val())){
            alert(text + "请输入汉字");
            $(id).focus();
            return false;
        }
        return true;
    }
</script>
</body>
</html>