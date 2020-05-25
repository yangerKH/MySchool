<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link href="/luntan/css/bootstrap.min.css" rel="stylesheet">
    <script src="/luntan/js/jquery-3.2.1.js"></script>
    <script src="/luntan/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="//at.alicdn.com/t/font_1837362_m0snx2qm47.css">
    <title>个人中心</title>
</head>
<body>
<!-- 引入header文件 -->
<%@ include file="header.jsp"%>

<div style="width: 70%;margin:1% 2% 1% 5%;float: left;">
    <div class="panel panel-default" id="main" style="">
        <div class="panel-heading" style="background-color: white">
            <a href="/artList/all">校园论坛></a>个人中心>${user}
        </div>

        <div class="panel-body">
            <form class="form-horizontal" role="form">
                <div style="margin-left: 17%">
                    <img width="60px" height="60px" src="${author.icon}" class="img-rounded">
                    <a class="iconfont iconpinglun-copy" style="margin-left: 50px" target="_self" href="/chat/${author.name}">发起私聊</a>
                </div><br/>
                <div class="form-group">
                    <label class="col-sm-2 control-label">uid</label>
                    <div class="col-sm-10">
                        <p class="form-control-static">1</p>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">用户名</label>
                    <div class="col-sm-10">
                        <p class="form-control-static">${author.name}</p>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">身份</label>
                    <div class="col-sm-10">
                        <p class="form-control-static">${author.identity}</p>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">注册时间</label>
                    <div class="col-sm-10">
                        <p class="form-control-static">2020.5.15</p>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">积分</label>
                    <div class="col-sm-10">
                        <p class="form-control-static">1</p>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>

<!-- 引入侧边栏文件 -->
<%@ include file="side.jsp"%>
<%--作者发布的文章--%>
<div class="panel panel-default" id="sidebar1" style="width: 20%;margin:1% 2% 1% 0%;float: right">
    <div class="panel-heading" style="background-color: white;text-align: center">
        用户发布的帖子
    </div>
    <ul class="list-group" style="width: 100%">
        <c:forEach items="${arts}" var="art">
            <li class="list-group-item"><a href="/t/${art.id}">${art.title}</a></li>
        </c:forEach>

    </ul>
</div>
</body>
</html>