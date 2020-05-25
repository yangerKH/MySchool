<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://shiro.apache.org/tags" prefix="shiro" %>
<!DOCTYPE html>
<html lang="en"> 
<head>
<title>Home</title>

<!-- Meta -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">

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
				<div class="site-logo"><a class="navbar-brand" href="/index.jsp"><img class="logo-icon mr-2" src="/index/images/coderdocs-logo.svg" alt="logo"><span class="logo-text">My<span class="text-alt">School</span></span></a></div>
			</div><!--//docs-logo-wrapper-->
			<div class="docs-top-utilities d-flex justify-content-end align-items-center">

				<ul class="social-list list-inline mx-md-3 mx-lg-5 mb-0 d-none d-lg-flex">
					<li class="list-inline-item "><a href="/speciality/list"><span class="iconfont icon-zhuan"/> </a></li>
					<li class="list-inline-item"><a href="/baike"><span class="iconfont icon-baike"/> </a></li>
					<li class="list-inline-item"><a href="#"><span class="iconfont icon-rukou"/></a></li>
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


<div class="page-header theme-bg-dark py-5 text-center position-relative">
	<div class="theme-bg-shapes-right"></div>
	<div class="theme-bg-shapes-left"></div>
	<div class="container">
		<h1 class="page-heading single-col-max mx-auto">欢迎来到我的大学</h1>
		<div class="page-intro single-col-max mx-auto">黄沙百战穿金甲,不破楼兰终不还</div>
		<div class="main-search-box pt-3 d-block mx-auto">
			 <form class="search-form w-100" action="/findschool">
				<input type="text" placeholder="Search the university..." name="search" class="form-control search-input">
				<button type="submit" class="btn search-btn"><i class="fas fa-search"></i></button>
			</form>
		 </div>
	</div>
</div><!--//page-header-->
<div class="page-content">
	<div class="container">
		<div class="docs-overview py-5">
			<div class="row justify-content-center">
				<div class="col-12 col-lg-4 py-3">
					<div class="card shadow-sm">
						<div class="card-body">
							<h5 class="card-title mb-3">
								<span class="theme-icon-holder card-icon-holder mr-2 iconfont icon-icon-test">
								</span><!--//card-icon-holder-->
								<span class="card-title-text">985工程高校</span>
							</h5>
							<div class="card-text">
								985工程是指为创建世界一流大学和高水平大学而实施的工程，截至2013年年末，“985工程”共有39所高校，教育部表示“985工程”的规模已经稳定，将不会再新增高校，引入动态竞争机制，在一流的行业特色型大学中遴选实施“985工程优势学科创新平台”项目以重点打造世界一流学科群。
							</div>
							<a class="card-link-mask" href="/school/985"></a>
						</div><!--//card-body-->
					</div><!--//card-->
				</div><!--//col-->
				<div class="col-12 col-lg-4 py-3">
					<div class="card shadow-sm">
						<div class="card-body">
							<h5 class="card-title mb-3">
								<span class="theme-icon-holder card-icon-holder mr-2 iconfont icon-2">
								</span><!--//card-icon-holder-->
								<span class="card-title-text">211工程高校</span>
							</h5>
							<div class="card-text">
                                211工程，是为了面向21世纪，迎接世界新技术革命的挑战，中国政府集中中央、地方各方面的力量，重点建设100所左右的高等学校和一批重点学科、专业使其达到世界一流大学的水平的建设工程。全国入选“211工程”高校一共有116所。
							</div>
							<a class="card-link-mask" href="/school/211"></a>
						</div><!--//card-body-->
					</div><!--//card-->
				</div><!--//col-->
				<div class="col-12 col-lg-4 py-3">
					<div class="card shadow-sm">
						<div class="card-body">
							<h5 class="card-title mb-3">
								<span class="theme-icon-holder card-icon-holder mr-2 iconfont icon-shuangyiliufenxi">
								</span><!--//card-icon-holder-->
								<span class="card-title-text">双一流大学</span>
							</h5>
							<div class="card-text">
                                双一流是世界一流大学和一流学科建设，教育部印发的《教育部2016年工作要点》中要求，加快世界一流大学和一流学科建设，制订“双一流”实施办法。专家认为，启动实施的“统筹推进两个一流”战略，是中国大学冲刺国际前列、打造顶尖学府的“冲锋号”。
							</div>
							<a class="card-link-mask" onclick="encode()" href="/school/syl"></a>
						</div><!--//card-body-->
					</div><!--//card-->
				</div><!--//col-->
				<div class="col-12 col-lg-4 py-3">
					<div class="card shadow-sm">
						<div class="card-body">
							<h5 class="card-title mb-3">
								<span class="theme-icon-holder card-icon-holder mr-2 iconfont icon-yishu">
								</span><!--//card-icon-holder-->
								<span class="card-title-text">艺术类院校</span>
							</h5>
							<div class="card-text">
								艺术类院校，目标是培养具备各专业知识，能从事各专业门类教育和实践的人才。艺术院校专业课的考试都是由各个高校自主命题的，部分学校有一定的考前培训辅导班。其招生工作是由各个学校在教育部的指导下自主进行的，考试内容和时间是由学校自主决定的。
								截至2016年，有本科艺术类院校48余所，并且在各类师范类院校、综合类大学中多设置音乐、美术、传媒等学院（系、科）。
							</div>
							<a class="card-link-mask" onclick="encode()" href="/school/yishu"></a>
						</div><!--//card-body-->
					</div><!--//card-->
				</div><!--//col-->
				<div class="col-12 col-lg-4 py-3">
					<div class="card shadow-sm">
						<div class="card-body">
							<h5 class="card-title mb-3">
								<span class="theme-icon-holder card-icon-holder mr-2 iconfont icon-zhengfa">
								</span><!--//card-icon-holder-->
								<span class="card-title-text">政法类院校</span>
							</h5>
							<div class="card-text">
								政法类院校，是指以法学、政治学为主要学科专业的高等院校。
							</div>
							<a class="card-link-mask" onclick="encode()" href="/school/zhengfa"></a>
						</div><!--//card-body-->
					</div><!--//card-->
				</div><!--//col-->
				<div class="col-12 col-lg-4 py-3">
					<div class="card shadow-sm">
						<div class="card-body">
							<h5 class="card-title mb-3">
								<span class="theme-icon-holder card-icon-holder mr-2 iconfont icon-caijing">
								</span><!--//card-icon-holder-->
								<span class="card-title-text">财经类院校</span>
							</h5>
							<div class="card-text">
								财经类院校，是以财经类专业为主要学科的院校。国内著名的财经类院校有上海财经大学、对外经济贸易大学、中央财经大学（有两财一贸之称），国外著名的财经类院校有德州大学奥斯丁分校、伊利诺伊大学香槟分校、华威大学等。
							</div>
							<a class="card-link-mask" href="/school/caijing"></a>
						</div><!--//card-body-->
					</div><!--//card-->
				</div><!--//col-->
				<div class="col-12 col-lg-4 py-3">
					<div class="card shadow-sm">
						<div class="card-body">
							<h5 class="card-title mb-3">
								<span class="theme-icon-holder card-icon-holder mr-2 iconfont icon-yixue">
								</span><!--//card-icon-holder-->
								<span class="card-title-text">医学类院校</span>
							</h5>
							<div class="card-text">
								医学院校，是指从事传统医学、现代医学、中医、西医等医学教育的教育机构、大中专院校，包括中医院校、西医院校
							</div>
							<a class="card-link-mask"  href="/school/yixue"></a>
						</div><!--//card-body-->
					</div><!--//card-->
				</div><!--//col-->
				<div class="col-12 col-lg-4 py-3">
					<div class="card shadow-sm">
						<div class="card-body">
							<h5 class="card-title mb-3">
								<span class="theme-icon-holder card-icon-holder mr-2 iconfont icon-deeaaceeaadbdf">
								</span><!--//card-icon-holder-->
								<span class="card-title-text">民族类院校</span>
							</h5>
							<div class="card-text">
								民族类院校是党和国家为解决中国国内民族问题而建立的综合性普通高等院校，现阶段民族院校可以分为两大类中央部(委)属民族院校（即国家民族事务委员会直属）和地方民族院校。
							</div>
							<a class="card-link-mask" href="/school/minzu"></a>
						</div><!--//card-body-->
					</div><!--//card-->
				</div><!--//col-->
				<div class="col-12 col-lg-4 py-3">
					<div class="card shadow-sm">
						<div class="card-body">
							<h5 class="card-title mb-3">
								<span class="theme-icon-holder card-icon-holder mr-2 iconfont icon-tiyu">
								</span><!--//card-icon-holder-->
								<span class="card-title-text">体育类院校</span>
							</h5>
							<div class="card-text">
								体育类院校，指以体育事业、教育、发展为核心与发展方向的高等院校。中国共有14所专业本科体育院校。
							</div>
							<a class="card-link-mask"  onclick="encode()" href="/school/tiyu"></a>
						</div><!--//card-body-->
					</div><!--//card-->
				</div><!--//col-->
			</div><!--//row-->
		</div><!--//container-->
	</div><!--//container-->
</div><!--//page-content-->
<section class="cta-section text-center py-5 theme-bg-dark position-relative">
	<div class="theme-bg-shapes-right"></div>
	<div class="theme-bg-shapes-left"></div>
	<div class="container">
		<h3 class="mb-2 text-white mb-3">Launch Your Software Project Like A Pro</h3>
		<div class="section-intro text-white mb-3 single-col-max mx-auto">Want to launch your software project and start getting traction from your target users? Check out our premium <a class="text-white" href="">Bootstrap 4 startup template CoderPro</a>! It has everything you need to promote your product.</div>
		<div class="pt-3 text-center">
			<a class="btn btn-light" href="">Get CoderPro<i class="fas fa-arrow-alt-circle-right ml-2"></i></a>
		</div>
	</div>
</section><!--//cta-section-->



<footer class="footer">

	<div class="footer-bottom text-center py-5">

		<ul class="social-list list-unstyled pb-4 mb-0">
			<li class="list-inline-item"><a href="#"><i class="fab fa-github fa-fw"></i></a></li>
			<li class="list-inline-item"><a href="#"><i class="fab fa-twitter fa-fw"></i></a></li>
			<li class="list-inline-item"><a href="#"><i class="fab fa-slack fa-fw"></i></a></li>
			<li class="list-inline-item"><a href="#"><i class="fab fa-product-hunt fa-fw"></i></a></li>
			<li class="list-inline-item"><a href="#"><i class="fab fa-facebook-f fa-fw"></i></a></li>
			<li class="list-inline-item"><a href="#"><i class="fab fa-instagram fa-fw"></i></a></li>
		</ul><!--//social-list-->

		<small class="copyright">Copyright &copy; 2019.Company name All rights reserved.<a target="_blank" href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a></small>


	</div>

</footer>
   
<!-- Javascript -->          
<script src="/index/plugins/jquery-3.4.1.min.js"></script>
<script src="/index/plugins/popper.min.js"></script>
<script src="/index/plugins/bootstrap/js/bootstrap.min.js"></script>

<!--解决`请求地址中文乱码-->
</body>
</html> 

