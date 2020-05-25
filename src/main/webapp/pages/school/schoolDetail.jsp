<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%--
  Created by IntelliJ IDEA.
  User: yanger
  Date: 2020/5/18
  Time: 上午9:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta name="viewport" content="initial-scale=1">
    <meta name="referrer" content="no-referrer" /> <!--可以让img标签预加载网络图片-->
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="Keywords" content=""/>
    <meta name="description" content=""/>
    <title>高校详情-西南石油大学</title>
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script type="text/javascript" src="http://www.youkaojy.com/statics/js/html5shiv.js"></script>
    <script type="text/javascript" src="http://www.youkaojy.com/statics/js/respond.min.js"></script>
    <style>
        select{background-image: none!important;}
    </style>
    <![endif]-->
    <!--[if IE 6]>
    <script type="text/javascript" src="http://www.youkaojy.com/statics/js/IE6_PNG.js"></script>
    <![endif]-->

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700&display=swap" rel="stylesheet">

    <!-- FontAwesome JS-->
    <script defer src="/index/fontawesome/js/all.min.js"></script>

    <!-- Theme CSS -->
    <link id="theme-style" rel="stylesheet" href="/index/css/theme.css">
</head>
<body>
<link rel="stylesheet" href="/schoolDetail/schoolInfo.css">
<link rel="stylesheet" href="/speciality/style.css"/>
<script type="text/javascript" src="/index/plugins/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="http://www.youkaojy.com/statics/js/style.js"></script>
<header class="header fixed-top">
    <div class="branding docs-branding">
        <div class="container-fluid position-relative py-2">
            <div class="docs-logo-wrapper">
                <div class="site-logo"><a class="navbar-brand" href="/index.jsp"><img class="logo-icon mr-2" src="/index/images/coderdocs-logo.svg" alt="logo"><span class="logo-text">My<span class="text-alt">School</span></span></a></div>
            </div><!--//docs-logo-wrapper-->
            <div class="docs-top-utilities d-flex justify-content-end align-items-center">

                <ul class="social-list list-inline mx-md-3 mx-lg-5 mb-0 d-none d-lg-flex">
                    <li class="list-inline-item"><a href="#"><i class="fab fa-github fa-fw"></i></a></li>
                    <li class="list-inline-item"><a href="#"><i class="fab fa-twitter fa-fw"></i></a></li>
                    <li class="list-inline-item"><a href="#"><i class="fab fa-slack fa-fw"></i></a></li>
                    <li class="list-inline-item"><a href="#"><i class="fab fa-product-hunt fa-fw"></i></a></li>
                </ul><!--//social-list-->
                <shiro:notAuthenticated>
                    <a href="/login" class="btn btn-primary d-none d-lg-flex">登录/注册</a>
                </shiro:notAuthenticated>
                <shiro:authenticated>
                    <ul class="nav navbar-nav navbar-right">
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><shiro:principal/> <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Action</a></li>
                                <li><a href="#">Anschool action</a></li>
                                <li><a href="#">Something else here</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="#">Separated link</a></li>
                            </ul>
                        </li>
                    </ul>
                </shiro:authenticated>
            </div><!--//docs-top-utilities-->
        </div><!--//container-->
    </div><!--//branding-->
</header><!--//header-->
<section>
    <div class="njahw">
        <div class="container">
            <div class="njahw_right" style="margin: 0 auto">
                <div class="tyqop_right">
                    <span>院校查询</span>
                    现在的位置：
                    <a href="http://www.youkaojy.com/index.php">首页</a><em>></em>
                    <a href="/index.php?m=content&c=index&a=lists&catid=7">高校库</a><em>></em>
                    院校查询
                </div>
                <div class="xyxx">
                    <dl class="xyxx_name">
                        <dt><img src="${icon}" alt=""/></dt>
                        <dd>
                            <div class="school_name">
                                <div>
                                    ${fn:split(basicLeft[0],">")[1]}
                                        <nav>
                                        </nav>
                                </div>
                                <abbr>${fn:split(basicLeft[1],">" )[1]  }</abbr>
                            </div>
                            <div class="clear"></div>
<%--                            <ul class="scool_cj" style="width: 100%">--%>
<%--                                <li class="pqj_rtqw">院校代码：10615</li>--%>
<%--                                <li class="pqj_rtqw">性质：公立</li>--%>
<%--                                <li class="pqj_rtqw">类型：理工类</li>--%>
<%--                                <li class="pqj_rtqw">隶属：四川省</li>--%>
<%--                                <li>属性：世界一流学科建设高校（2017年） 111计划（2018年） 省部共建大学</li>--%>
<%--                                <li>详细地址：成都校区：四川省成都市新都区新都大道8号 南充校区：四川省南充市油院路30号</li>--%>
<%--                            </ul>--%>

                        </dd>
                        <a href="${url}" target="_blank" class="transition"><img src="http://www.youkaojy.com/statics/images/fwgw.png" alt=""/><br/>访问官网</a>
                        <div class="clear"></div>
                    </dl>
                </div>
                <ul class="qiuwd_teb">
                    <li _t_nav="teag1" class="transition mens">学校简介</li>
                    <li _t_nav="teag2" class="transition">基本信息</li>
                    <li _t_nav="teag3" class="transition">开设专业</li>
                    <div class="clear"></div>
                </ul>
                <div class="tyqg_tqf">
                    <div id="teag1" class="tyqg_tqf-open">
                        <!-- 学校具体介绍 -->
                        <p style="TEXT-INDENT: 2em">${produce}</p>
                    </div>
                    <div id="teag2" class="tyqg_tqf-open">
                        <div class="basic-info cmn-clearfix">
                            <dl class="basicInfo-block basicInfo-left">
                                <c:forEach items="${basicLeft}" var="basicLeft" varStatus="i">
                                    <dt class="basicInfo-item name">${fn:split(basicLeft,">")[0]}</dt>
                                    <dd class="basicInfo-item value">
                                        ${fn:split(basicLeft, ">")[1]}
                                    </dd>
                                </c:forEach>
                            </dl>
                            <dl class="basicInfo-block basicInfo-right">
                            <c:forEach items="${basicRight}" var="basicRight" varStatus="i">
                            <dt class="basicInfo-item name">${fn:split(basicRight, ">")[0]}</dt>
                            <dd class="basicInfo-item value">
                                ${fn:split(basicRight,">" )[1]}
                            </dd>
                            </c:forEach>
                        </dl></div>
                        <div class="ujah_di">
                        </div>
                    </div>
                    <div id="teag3" class="tyqg_tqf-open">
                        ${speciality}
                    </div>
             </div>
            </div>
        </div>
    </div>
</section>
<script src="/index/plugins/popper.min.js"></script>
<script src="/index/plugins/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
