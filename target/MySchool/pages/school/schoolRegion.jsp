<%--
  Created by IntelliJ IDEA.
  User: yanger
  Date: 2020/5/22
  Time: 下午5:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
    <meta name="viewport" content="width=750, user-scalable=no">
    <meta name="format-detection" content="telephone=no">
    <base target="_blank" />
    <title>学校列表</title>
    <link rel="stylesheet" type="text/css" href="/schoolType/css/global.css" />
    <link rel="stylesheet" type="text/css" href="/schoolType/css/style.css" />
    <script src="//www.eol.cn/e_js/index/2018/jquery.min.js" type="text/javascript"></script>
    <%--    其他类院校时引用这些文件--%>
    <link href="http://college.gaokao.com/style/college/css/base.css" rel="stylesheet" type="text/css" />
    <link href="http://college.gaokao.com/style/college/css/style.css?2014623" rel="stylesheet" type="text/css" />
    <link href="http://college.gaokao.com/style/college/css/nav_jump_gk.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="http://college.gaokao.com/style/college/js/jquery.js"></script>

    <script type="text/javascript" src="http://college.gaokao.com/style/college/js/common.js"></script>

    <script type="text/javascript" src="http://cbjs.baidu.com/js/s.js"></script>
    <link rel="stylesheet" type="text/css" href="http://img6.kybimg.com/static/gaokao/css/new_base.css"/>
    <link rel="stylesheet" type="text/css" href="http://img6.kybimg.com/static/gaokao/css/common.css"/>

    <script type="text/javascript" src="http://www.gaokao.com/public/js/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" src="http://img6.kybimg.com/static/gaokao/js/common.js"></script>
    <%--    其他类院校时引用这些文件--%>
    <script>
        var ua = window.navigator.userAgent;
        //适配移动端，暂不需要
        // if (/Mobile|iP(hone|ad)|Android|BlackBerry|IEMobile/.MvnTest(ua)) {
        //     var head = document.getElementsByTagName('head')[0];
        //     var link = document.createElement('link');
        //     link.rel = 'stylesheet';
        //     link.type = 'text/css';
        //     link.href = '/e_html/zt/gxmd/css/mobile.css';
        //     head.appendChild(link);
        // }
    </script>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700&display=swap" rel="stylesheet">

    <!-- FontAwesome JS-->
    <script defer src="/index/fontawesome/js/all.min.js"></script>

    <!-- Theme CSS -->
    <link id="theme-style" rel="stylesheet" href="/index/css/theme.css">
    <%--阿里图标库--%>
    <link rel="stylesheet" href="//at.alicdn.com/t/font_1797256_17p94kl89azj.css">
</head>
<body>
    <header class="header fixed-top">
    <div class="branding docs-branding">
        <div class="container-fluid position-relative py-2">
            <div class="docs-logo-wrapper">
                <div class="site-logo"><a class="navbar-brand" href="/index.jsp"><img class="logo-icon mr-2 " style="display: inline" src="/index/images/coderdocs-logo.svg" alt="logo"><span class="logo-text">My<span class="text-alt">School</span></span></a></div>
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
    <div class="box">
        <div class="title"><span>${type}</span>地区高校名单</div>
        <div class="cont_l in" style="width: 900px;margin:auto;float:
      none">
            <div class="scores_List" style="font-size: 12px">
                <c:forEach items="${schools}" var="school">
                    <dl>
                        <dt>
                            <a href="/schoolDetail/${school.uniName}" target="_blank">
                                <img src=${school.icon}  onerror="this.src='http://college.gaokao.com/style/college/images/icon_default.png'" width="63" height="63" alt="${school.uniName}" />
                            </a>
                            <strong title="${school.uniName}" class="blue"><a href="/schoolDetail/${school.uniName}" target="_blank">${school.uniName}</a></strong></dt>
                        <dd>
                            <ul>
                                <li>${school.region}</li>
                                <li>${fn:split(school.feature, "：")[0]}:
                                    <c:if test="${fn:contains(school.feature,'211')}">
                                        <span class="c211 rm5">211</span>
                                    </c:if>
                                    <c:if test="${fn:contains(school.feature,'985')}">
                                        <span class="c985">985</span>
                                    </c:if>
                                </li>
                                <li>${school.type}</li>
                                <li>${school.belongto}</li>
                                <li>${school.attribute}</li>
                                <li>${school.url}</li>
                            </ul>
                        </dd>
                    </dl>
                </c:forEach>
            </div>
        </div>
    </div>
    <!-- Javascript -->
    <script src="/index/plugins/jquery-3.4.1.min.js"></script>
    <script src="/index/plugins/popper.min.js"></script>
    <script src="/index/plugins/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
