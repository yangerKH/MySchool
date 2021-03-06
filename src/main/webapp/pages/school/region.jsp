<%--
  Created by IntelliJ IDEA.
  User: yanger
  Date: 2020/5/22
  Time: 下午4:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>全国各省</title>
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
<div class="map" style="margin:0 auto;width:600px"><img alt="中国地图" src="http://www.ip138.com/static/image/idc/china31.jpg" width="600" height="547" usemap="#map_86" border="0"></div>
<map name="map_86" id="map_86">
    <area shape="polygon" href="/schoool/region/a30" coords="149,70,146,76,139,89,124,80,119,80,119,86,109,93,109,103,95,102,84,99,85,114,89,125,79,132,79,140,67,151,45,151,32,160,25,147,8,151,1,159,-1,176,5,178,6,189,1,197,10,204,13,220,28,235,33,247,32,254,44,256,56,245,67,251,78,247,85,253,102,252,112,256,117,250,145,248,153,258,167,263,174,262,166,251,173,246,170,234,166,230,167,224,173,221,187,221,194,217,195,212,197,201,204,193,230,181,232,168,240,168,233,148,213,131,198,124,188,123,187,117,190,108,188,88,171,73,165,60,160,62,156,67,150,65" title="新疆">
    <area shape="polygon" href="/schoool/region/a27" coords="34,257,34,280,21,281,21,296,25,304,35,312,41,326,64,334,74,351,82,356,84,362,94,367,111,375,120,375,122,384,131,384,132,377,147,382,156,381,159,384,161,392,166,397,171,402,179,403,183,398,196,396,202,390,216,389,223,396,229,390,234,389,238,385,243,388,248,384,246,381,252,373,247,371,249,346,245,335,237,328,229,331,228,339,211,335,199,325,191,319,171,315,161,304,155,304,153,296,145,295,152,280,146,272,152,266,152,257,145,250,119,252,114,257,101,254,87,256,77,249,67,253,57,247,45,258" title="西藏">
    <area shape="polygon" href="/schoool/region/a28" coords="151,259,152,268,146,272,153,281,146,292,151,294,155,302,159,301,175,315,191,316,210,332,223,336,227,328,231,327,233,323,237,320,237,314,232,308,236,305,247,317,260,324,265,328,271,326,277,316,270,302,284,300,285,290,294,283,296,273,295,273,289,253,280,254,268,239,263,241,251,231,241,228,235,227,237,238,226,233,207,221,194,218,187,222,170,222,167,230,172,236,173,247,167,252,175,263,168,264,163,264" title="青海">
    <area shape="polygon" href="/schoool/region/a18" coords="242,170,234,169,233,183,207,194,199,203,197,215,207,218,223,227,231,234,235,234,236,224,242,224,249,229,255,229,265,238,270,236,282,251,291,254,296,267,297,285,286,293,286,301,273,303,278,308,278,314,287,321,290,317,289,306,299,306,303,314,309,315,310,321,315,328,329,329,330,319,337,316,338,304,335,300,337,295,348,297,352,291,361,292,360,282,357,278,360,277,364,275,362,270,359,268,355,267,342,257,338,268,341,275,342,284,338,288,332,287,326,281,325,272,319,268,317,255,304,252,303,243,311,242,309,238,313,234,311,229,304,229,300,234,295,230,289,230,287,237,268,219,270,212,270,203,254,204,254,197,245,190,248,185,248,173,245,172" title="甘肃">
    <area shape="polygon" href="/schoool/region/a16" coords="237,326,251,345,248,366,253,373,247,383,252,392,257,385,270,405,269,413,277,415,281,425,288,425,296,413,296,399,304,391,316,401,322,396,331,390,332,371,345,365,354,358,355,348,363,344,360,339,347,332,334,329,327,332,315,332,305,317,294,308,289,324,280,318,269,335,258,326,243,317" title="四川">
    <area shape="polygon" href="/schoool/region/a26" coords="243,402,244,424,241,432,225,448,227,449,226,454,239,457,239,465,253,471,246,483,251,488,257,494,270,496,274,504,282,504,280,499,277,494,276,484,281,479,291,480,301,480,312,479,313,475,322,472,331,476,340,466,334,463,321,458,315,448,316,434,315,426,305,426,301,416,315,412,324,408,324,400,317,402,303,393,296,402,297,414,290,424,279,425,277,417,268,415,267,405,263,399,257,386,253,395,247,385,243,389,239,386,235,389" title="云南">
    <area shape="polygon" href="/schoool/region/a29" coords="320,258,318,264,323,270,327,278,330,285,337,288,341,284,341,276,337,268,344,260,350,250,345,245,340,235,336,226,331,235,327,246,317,254" title="宁夏">
    <area shape="polygon" href="/schoool/region/a21" coords="275,176,250,174,248,191,255,197,255,201,271,202,272,213,270,219,287,235,291,227,297,230,304,227,315,229,314,236,310,239,311,243,305,244,306,252,319,253,325,247,332,230,341,228,342,242,352,254,359,254,366,233,373,232,377,229,380,222,390,222,395,213,407,211,415,203,411,199,413,186,422,178,427,189,434,180,444,182,445,170,455,171,459,184,468,187,466,170,474,172,478,178,483,169,494,166,505,156,501,140,490,137,488,124,479,112,493,115,492,97,485,88,492,85,495,76,502,74,499,64,505,54,508,31,498,32,487,37,485,30,480,28,478,22,467,21,465,9,455,13,458,23,458,33,448,42,451,62,431,69,418,95,426,98,439,94,448,89,462,103,439,112,421,127,411,142,384,145,389,156,372,177,345,179,331,190,299,189,287,180,280,181" title="内蒙古">
    <area shape="polygon" href="/schoool/region/a5" coords="468,19,480,23,489,34,498,30,509,31,509,56,501,65,503,76,497,78,488,91,493,99,495,106,501,106,507,116,516,116,525,123,537,118,542,129,547,124,559,133,563,126,567,126,578,130,576,112,590,99,595,86,595,63,596,48,568,69,558,68,551,52,529,53,503,4,490,5,480,2,467,4" title="黑龙江">
    <area shape="polygon" href="/schoool/region/a4" coords="493,116,482,115,489,123,491,136,501,140,505,150,517,158,532,168,533,173,537,175,557,174,558,170,553,165,561,159,560,154,565,150,581,150,582,131,569,128,564,128,560,133,548,127,542,131,536,119,524,124,517,118,503,116,500,108,495,107" title="吉林">
    <area shape="polygon" href="/schoool/region/a3" coords="471,197,473,205,483,205,484,195,490,191,499,189,500,201,492,209,495,214,491,225,497,221,503,215,512,208,518,208,526,189,532,188,536,177,531,173,531,169,520,161,508,153,499,164,484,170,480,178,469,173,466,190" title="辽宁">
    <area shape="polygon" href="/schoool/region/a19" coords="415,189,413,199,420,210,417,224,409,235,416,251,416,267,425,273,433,263,439,254,447,244,457,243,459,235,452,233,449,226,441,228,435,230,428,231,423,225,423,218,427,212,428,205,441,193,447,200,460,202,462,210,467,216,473,207,469,197,463,187,457,181,455,172,448,173,444,183,436,182,426,191,421,181" title="河北">
    <area shape="polygon" href="/schoool/region/a1" coords="440,195,433,203,425,209,428,212,424,222,426,228,434,230,448,224,444,220,451,214,451,205,455,202,446,201" title="北京">
    <area shape="polygon" href="/schoool/region/a2" coords="452,205,453,213,447,220,449,226,455,232,464,225,467,216,461,213,459,204" title="天津">
    <area shape="polygon" href="/schoool/region/a17" coords="346,258,366,274,359,278,361,293,352,291,348,298,337,296,338,317,330,326,348,330,364,338,378,328,372,321,377,317,391,323,384,310,384,301,377,289,382,277,379,260,385,238,390,221,381,221,378,230,367,235,360,256,351,255" title="陕西">
    <area shape="polygon" href="/schoool/region/a20" coords="395,218,389,228,386,237,381,258,382,269,379,284,388,285,396,282,400,275,404,276,414,268,414,253,409,240,408,234,416,223,419,213,417,207,415,204,408,212,398,213" title="山西">
    <area shape="polygon" href="/schoool/region/a11" coords="434,281,429,287,436,287,441,295,446,295,446,287,454,290,463,292,472,284,479,281,487,270,496,257,512,253,512,242,505,241,500,246,494,239,489,239,480,252,472,247,469,242,463,233,456,243,445,246,436,261,430,269,432,277" title="山东">
    <area shape="polygon" href="/schoool/region/a22" coords="378,292,385,299,385,310,392,324,403,333,422,330,432,342,440,343,447,331,437,327,432,321,439,315,439,304,450,305,449,295,441,297,434,288,429,291,425,285,435,279,426,272,416,270,402,277,394,286,381,285" title="河南">
    <area shape="polygon" href="/schoool/region/a15" coords="366,337,363,344,357,349,355,358,346,365,333,373,331,393,337,392,344,384,355,379,369,393,371,387,367,379,359,370,360,363,379,354,377,344,364,338" title="重庆">
    <area shape="polygon" href="/schoool/region/a12" coords="368,337,381,346,381,354,361,362,362,370,370,379,383,373,387,367,399,368,410,372,420,373,427,381,433,371,446,368,449,361,446,353,440,344,431,342,421,331,403,334,394,327,390,324,384,320,373,320,378,326,374,330,372,336" title="湖北">
    <area shape="polygon" href="/schoool/region/a9" coords="450,296,452,306,441,305,442,315,433,319,438,325,447,331,443,344,446,349,450,362,457,362,462,369,468,362,474,369,478,364,478,360,484,354,488,348,477,341,478,334,475,329,484,320,477,318,471,315,470,307,464,304,464,296,458,297" title="安徽">
    <area shape="polygon" href="/schoool/region/a7" coords="465,296,464,303,471,305,472,316,480,317,483,323,476,328,479,337,484,343,490,338,503,345,512,337,505,330,498,329,500,323,513,328,512,316,499,307,494,294,485,293,482,283,472,286,461,292,447,289,448,293" title="江苏">
    <area shape="polygon" href="/schoool/region/a6" coords="517,322,517,331,517,340,528,342,535,343,543,339,541,333,537,326,534,326,530,325" title="上海">
    <area shape="polygon" href="/schoool/region/a25" coords="318,425,318,448,330,449,342,440,376,434,375,427,373,417,364,412,374,406,374,397,361,384,355,381,345,386,340,391,326,396,323,411,303,418,306,424" title="贵州">
    <area shape="polygon" href="/schoool/region/a24" coords="342,465,332,477,336,481,342,490,347,494,362,492,369,498,378,497,386,487,394,475,399,465,404,452,394,446,397,428,393,426,379,436,363,439,343,442,332,450,319,451,322,455,327,457,331,459" title="广西">
    <area shape="polygon" href="/schoool/region/a13" coords="371,392,374,404,366,411,374,417,377,432,384,427,395,422,394,444,404,451,403,442,410,434,416,439,417,431,427,430,426,420,424,408,422,395,428,388,421,374,411,374,398,370,390,368,379,374,372,377" title="湖南">
    <area shape="polygon" href="/schoool/region/a31" coords="434,371,428,380,431,387,425,398,428,412,428,432,437,438,437,446,446,441,453,445,455,437,450,435,457,428,456,420,461,411,462,405,466,396,472,393,481,387,480,377,466,364,462,373,456,362,446,371" title="江西">
    <area shape="polygon" href="/schoool/region/a8" coords="490,340,486,344,487,346,480,361,477,369,483,381,482,387,488,398,496,398,504,392,510,394,514,390,514,383,519,375,519,367,526,349,523,345,519,351,511,338,503,345" title="浙江">
    <area shape="polygon" href="/schoool/region/a10" coords="483,387,477,392,468,396,464,404,458,418,460,427,453,434,457,441,475,446,475,455,482,449,490,441,493,435,497,428,504,418,505,407,508,395,504,394,497,401,486,399" title="福建">
    <area shape="polygon" href="/schoool/region/a14" coords="410,437,405,443,404,456,391,484,384,488,381,497,382,506,389,512,394,496,412,492,429,483,431,470,435,470,435,480,457,473,474,456,474,449,457,441,454,447,448,441,436,448,437,438,420,432,417,443" title="广东">
    <area shape="polygon" href="/schoool/region/a23" coords="369,521,369,531,365,536,372,544,377,547,384,544,393,539,393,529,398,524,401,517,399,515,390,518,381,520" title="海南">
    <area shape="polygon" href="/schoool/region/a39" coords="524,426,518,430,511,439,509,458,510,466,516,475,525,482,524,472,527,463,531,447,531,442,533,437,531,429,532,428,524,424" title="台湾">
    <area shape="polygon" href="/schoool/region/a38" coords="413,491,412,498,417,503,424,502,434,502,439,502,439,496,436,491,424,490" title="澳门">
    <area shape="polygon" href="/schoool/region/a37" coords="448,479,447,486,452,491,459,490,469,490,474,490,474,484,471,479,459,478" title="香港">
</map>
<script src="/index/plugins/jquery-3.4.1.min.js"></script>
<script src="/index/plugins/popper.min.js"></script>
<script src="/index/plugins/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
