<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="Content-Type"  content="text/html;charset=utf-8">
    <meta name="keywords" content="">
    <style>
        .icondianzan11{
            color: #1c6fdc;
        }
        .iconcai{
            color: red;
        }
    </style>
    <title>校内论坛  </title>
    <link href="/luntan/css/bootstrap.min.css" rel="stylesheet">
    <script src="/luntan/js/jquery-3.2.1.js"></script>
    <script src="/luntan/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="//at.alicdn.com/t/font_1837362_m0snx2qm47.css">
    <style>
        li {list-style-type:none;}
        html, body {
            height: 100%;
            font-size: 14px;
            color: #525252;
            font-family: NotoSansHans-Regular,AvenirNext-Regular,arial,Hiragino Sans GB,"Microsoft Yahei","Hiragino Sans GB","WenQuanYi Micro Hei",sans-serif;
            background: #f0f2f5;
        }
        .footer {
            background-color: #fff;
            margin-top: 22px;
            margin-bottom: 22px;
            width: 100%;
            padding-top: 22px;
            color: #8A8A8A;
            display: block;
            height: 200px;
            border: 1px ;
            clear:both
        }

        .container {
            margin-right: 5%;
            margin-left: 5%;
            padding-left: 15px;
            padding-right: 15px;
            width: 40%;
            float: left;
        }
        .info {
            margin-right: 5%;
            width: 10%;
            float: left;
        }
        a{
            color: #8A8A8A;
            cursor: pointer;
        }
        body{
            background-color: white;
        }
    </style>
</head>
<body>
<div style="margin: 0 auto;width:200px;background-color: white">
    <p style="font-size: x-large">${sessionScope.school}论坛</p>
</div>
<!-- 引入header文件 -->
<%@ include file="header.jsp"%>

<div class="panel panel-default" id="main" style="width: 70%;margin:1% 2% 5% 5%;float: left;">
<ul class="list-group" style="width: 100%">
    <c:forEach items="${arts}" var="art" varStatus="i">
    <li class="list-group-item">
        <div style="height: 50px">
            <div style="float: left;width: 6%;margin-bottom: 5px">
                <img width="50px" height="50px" src="${art.icon}" class="img-rounded">
            </div>
            <div style="width: 89%;float: left">
                <a href="/t/${art.id}">${art.title}</a><br/>
                <div>
                    <a><span class="label label-default" >${art.type}</span></a>&nbsp;&nbsp;&nbsp;
                    <a href="/userInfo/${art.author}?school=${school}"><span ><strong>${art.author}</strong></span></a>&nbsp;&nbsp;&nbsp;
                    <small class="text-muted">${art.createTime}</small><br>
                    <span style="width: 20px;height: 20px;margin-right: 20px" class="iconfont icondianzan" id="dianzan${i.index}" onclick="dianzan(${i.index})">${art.likeCount}</span>
                    <span style="width: 20px;height: 20px;margin-right:20px" class="iconfont icondianzan11-copy" id="cai${i.index}" onclick="cai(${i.index})">${art.unlikeCount}</span>
                    <a style="width: 20px;height: 20px;margin-right:20px" class="iconfont iconpinglun-copy" href="/t/${art.id}#main">${art.commentCount}</a>
                </div>
            </div>
            <div style="width: 5%;float: right;text-align: center">
                <span class="badge">${art.likeCount}</span>
            </div>
        </div>
    </li>
    </c:forEach>
</ul>
</div>
<!-- 引入侧边栏文件 -->
<%@ include file="side.jsp"%>
<!-- 引入footer文件 -->
<%--<%@ include file="footer.jsp"%>--%>
<script type="text/javascript">
    function dianzan(i) {
        var element = "#dianzan"+i;
        var cur = $(element).attr("class").split(" ")[1];
        if (cur === "icondianzan") {
            $(element).removeClass(cur);
            $(element).addClass("icondianzan11");
            var dzCount = $(element).text();
            $(element).html(parseInt(dzCount) + 1);
        } else if (cur === "icondianzan11") {
            $(element).removeClass(cur);
            $(element).addClass("icondianzan");
            var dzCount = $(element).text();
            $(element).html(parseInt(dzCount) - 1);
        }
    }
    function cai(i) {
        var element="#cai"+i;
        var cur = $(element).attr("class").split(" ")[1];
        if (cur === "icondianzan11-copy") {
            $(element).removeClass(cur);
            $(element).addClass("iconcai");
            var cCount = $(element).text();
            $(element).html(parseInt(cCount) + 1);
        } else if (cur === "iconcai") {
            $(element).removeClass(cur);
            $(element).addClass("icondianzan11-copy");
            var dzCount = $(element).text();
            $(element).html(parseInt(dzCount) - 1);
        }
    }
</script>
</body>
</html>