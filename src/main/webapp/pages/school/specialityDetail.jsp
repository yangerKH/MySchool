<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta name="viewport" content="initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="Keywords" content=""/>
    <meta name="description" content=""/>
    <title>专业介绍</title>
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script type="text/javascript" src="http://www.youkaojy.com/statics/js/html5shiv.js"></script>
    <script type="text/javascript" src="http://www.youkaojy.com/statics/js/respond.min.js"></script>
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
<div style="width:100%;height:30px"></div>
<section>
    <div class="njahw">
        <div class="container">
            <div class="njahw_right" style="margin: 0 auto">
                <div class="tyqop_right" style="background-color: #28B76B">
                    <span>专业查询</span>
                </div>
                <dl class="zyjs_yag">
                    <dd>
                        <div class="zyjs_yag1"><img src="http://www.youkaojy.com/statics/images/zyjs_yag1.png" alt=""/></div>
                        <div class="zyjs_yag2">
                            <div class="ghawpo_oi1">${zhuanye.name}<span>本科</span></div>
                            <div class="ghawpo_oiq2">
                                专业代码:${zhuanye.code} <br/>
                                授予学位:<SPAN style="TEXT-INDENT: 2em">工学学士</SPAN><br/>
                                修业年限:<SPAN style="TEXT-INDENT: 2em">四年</SPAN><br/>
                            </div>
                        </div>
                    </dd>
                    <div class="clear"></div>
                </dl>
                <ul class="qiuwd_teb">
                    <li _t_nav="teag1" class="transition mens">专业详情</li>
                    <li _t_nav="teag2" class="transition">开设课程</li>
                    <div class="clear"></div>
                </ul>
                <div class="tyqg_tqf">
                    <div id="teag1" class="tyqg_tqf-open">
                        <p>专业详情：<P style="TEXT-INDENT: 2em">${zhuanye.introduce}</P></p>  <br/> <br/>
                        <p>培养目标：<P style="TEXT-INDENT: 2em">${zhuanye.goal}</P></p>
                    </div>
                    <div id="teag2" class="tyqg_tqf-open">
                        <p> 相关课程：<P style="TEXT-INDENT: 2em">${zhuanye.course}</P> </p>
                    </div>
                </div>
                    <div class="clear"></div>
                </div>
            </div>
        </div>
    </div>
</section>
<script src="/index/plugins/popper.min.js"></script>
<script src="/index/plugins/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>