<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%--
  Created by IntelliJ IDEA.
  User: yanger
  Date: 2020/4/29
  Time: 下午1:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
    <meta name="viewport" content="width=750, user-scalable=no">
    <meta name="format-detection" content="telephone=no">
    <title>${type}大学名单</title>
    <meta name="keywords" content="教育部211大学名单,211工程大学名单,211985大学名单,211大学名单,211大学,211工程,211院校,最新211大学名单,211大学名单排名,北京211大学,上海211大学,广东211大学,山东211大学," />
    <meta name="description" content="211工程即面向21世纪，重点建设100所左右的高等学校和一批重点学科，是建国以来国家正式立项在高等教育领域进行的规模最大的重点建设工程。这些学校也就是我们常说的211大学，中国教育在线整理了全国各省市的211工程大学名单，包括了北京大学、清华大学等" />
    <meta name="author" content="">
    <base target="_blank" />
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
</head>

<body>
<div class="containerbg">
    <div class="container">
        <div class="menu-top">
            <div class="menu-top-left"><img src="/e_html/zt/gxmd/images/left.jpg" alt=""><span><a href="https://gaokao.eol.cn">大学信息查询</a></span></div>
            <div class="menu-top-right">
                <div class="searchbox">
                    <div class="search"><input type="text" placeholder="请输入查询的内容" id="search">
                        <div class="search-but"><img src="//www.eol.cn/e_images/index/2018/search.png" alt="" id="searchimg"></div>
                    </div>
                </div>
                <div class="link"><a href="https://gaokao.eol.cn/e_html/gk/gkbm/">高考报名</a><a href="https://www.eol.cn/html/g/fsx/index.shtml">高考分数线</a><a href="https://gaokao.eol.cn/">返回高考频道</a></div>
            </div>
        </div>
        <div class="mtop">
            <div class="mtop-left">大学信息免费查询</div>
            <div class="mtop-right"><img src="/e_html/zt/gxmd/images/more.png" alt=""></div>
        </div>
        <div class="menu-bg">
            <div class="pc menu-con">
                <a href="/school/985">985工程高校</a>
                <a href="/school/211">211工程高校</a>
                <a href="/school/syl">双一流大学</a>
                <a href="/school/yishu">艺术类院校</a>
                <a href="/school/shifan">师范类院校</a>
                <a href="/school/caijing">财经类院校</a>
                <a href="/school/zhengfa">政法类院校</a>
                <a href="/school/yixue">医药类院校</a>
                <a href="/school/minzu">民族类院校</a>
                <a href="/school/tiyu">体育类院校</a>
        </div>
    </div>
    </div>
</div>
    <c:if test="${type=='985'||type=='211'}">
    <div class="container box">
    <div class="title"><span>${type}</span>工程高校名单</div>
    <div class="con">
        <div class="con-jianjie">
            ${jianjie}<strong><em><font color=#ff3300>${schools.size()}</font></em></strong>所。			</div>
<%--        <div class="provincebox">--%>
<%--            <div class="provincebox-pc">--%>
<%--                <div class="province active" data-id='beijing'>北京</div>--%>
<%--                <div class="province" data-id='tianjin'>天津</div>--%>
<%--                <div class="province" data-id='shanghai'>上海</div>--%>
<%--                <div class="province" data-id='chongqing'>重庆</div>--%>
<%--                <div class="province" data-id='hebei'>河北</div>--%>
<%--                <div class="province" data-id='shanxi'>山西</div>--%>
<%--                <div class="province" data-id='neimeng'>内蒙古</div>--%>
<%--                <div class="province" data-id='liaoning'>辽宁</div>--%>
<%--                <div class="province" data-id='jilin'>吉林</div>--%>
<%--                <div class="province" data-id='heilongjiang'>黑龙江</div>--%>
<%--                <div class="province" data-id='jiangsu'>江苏</div>--%>
<%--                <div class="province" data-id='zhejiang'>浙江</div>--%>
<%--                <div class="province" data-id='anhui'>安徽</div>--%>
<%--                <div class="province" data-id='fujian'>福建</div>--%>
<%--                <div class="province" data-id='jiangxi'>江西</div>--%>
<%--                <div class="province" data-id='shandong'>山东</div>--%>
<%--                <div class="province" data-id='henan'>河南</div>--%>
<%--                <div class="province" data-id='hubei'>湖北</div>--%>
<%--                <div class="province" data-id='hunan'>湖南</div>--%>
<%--                <div class="province" data-id='guangdong'>广东</div>--%>
<%--                <div class="province" data-id='guangxi'>广西</div>--%>
<%--                <div class="province" data-id='sichuan'>四川</div>--%>
<%--                <div class="province" data-id='yunnan'>云南</div>--%>
<%--                <div class="province" data-id='guizhou'>贵州</div>--%>
<%--                <div class="province" data-id='sx'>陕西</div>--%>
<%--                <div class="province" data-id='gansu'>甘肃</div>--%>
<%--                <div class="province" data-id='hainan'>海南</div>--%>
<%--                <div class="province" data-id='ningxia'>宁夏</div>--%>
<%--                <div class="province" data-id='qinghai'>青海</div>--%>
<%--                <div class="province" data-id='xizang'>西藏</div>--%>
<%--                <div class="province" data-id='xinjiang'>新疆</div>--%>
<%--            </div>--%>
<%--            <div class="provincebox-m">--%>
<%--                <select name="" id="pselect">--%>
<%--                    <option value="beijing">北京</option>--%>
<%--                    <option value="tianjin">天津</option>--%>
<%--                    <option value="shanghai">上海</option>--%>
<%--                    <option value="chongqing">重庆</option>--%>
<%--                    <option value="hebei">河北</option>--%>
<%--                    <option value="shanxi">山西</option>--%>
<%--                    <option value="neimeng">内蒙古</option>--%>
<%--                    <option value="liaoning">辽宁</option>--%>
<%--                    <option value="jilin">吉林</option>--%>
<%--                    <option value="heilongjiang">黑龙江</option>--%>
<%--                    <option value="jiangsu">江苏</option>--%>
<%--                    <option value="zhejiang">浙江</option>--%>
<%--                    <option value="anhui">安徽</option>--%>
<%--                    <option value="fujian">福建</option>--%>
<%--                    <option value="jiangxi">江西</option>--%>
<%--                    <option value="shandong">山东</option>--%>
<%--                    <option value="henan">河南</option>--%>
<%--                    <option value="hubei">湖北</option>--%>
<%--                    <option value="hunan">湖南</option>--%>
<%--                    <option value="guangdong">广东</option>--%>
<%--                    <option value="guangxi">广西</option>--%>
<%--                    <option value="sichuan">四川</option>--%>
<%--                    <option value="yunnan">云南</option>--%>
<%--                    <option value="guizhou">贵州</option>--%>
<%--                    <option value="sx">陕西</option>--%>
<%--                    <option value="gansu">甘肃</option>--%>
<%--                    <option value="hainan">海南</option>--%>
<%--                    <option value="ningxia">宁夏</option>--%>
<%--                    <option value="qinghai">青海</option>--%>
<%--                    <option value="xizang">西藏</option>--%>
<%--                    <option value="xinjiang">新疆</option>--%>
<%--                </select>--%>
<%--            </div>--%>
<%--        </div>--%>
        <div class="con-table">
            <table class="table-x">
                <thead>
                <tr>
                    <th class="th1">地区</th>
                    <th class="th2">学校名称</th>
                    <th class="th3">录取分数线</th>
                    <th class="th4 nm">一流学科建设名单</th>
                </tr>
                </thead>
                <tbody>
                    <c:forEach items="${schools}" var="school" varStatus="id">
                        <tr>
                            <td class="th1">${school.region}</td>
                            <td>
                                <a href="https://www.baidu.com">${school.uniName}</a>
                            </td>
                            <td>
                                <span class="th3"><a href="https://www.baidu.com">前往官网查看分数线</a> </span>
                            </td>
                            <td class="nm"><div class="mzk">${school.subject}</div> </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
    </c:if>
    <c:if test="${type=='双一流'}">
    <div class="container box">
        <div class="title"><span>“双一流”</span>建设高校及建设学科名单</div>
        <div class="con">
            <div class="con-jianjie">
                双一流是世界一流大学和一流学科建设，教育部印发的《教育部2016年工作要点》中要求，加快世界一流大学和一流学科建设，制订“双一流”实施办法。专家认为，启动实施的“统筹推进两个一流”战略，是中国大学冲刺国际前列、打造顶尖学府的“冲锋号”。以下是教育部公布的双一流建设高校和建设学科名单。
            </div>
            <div class="tablebox">
                <table class="table-x table6">
                    <thead>
                    <tr>
                        <th colspan="6">一流大学建设高校</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td colspan="6" class="tmax"><span class="fenlei">A类36所</span></td>
                    </tr>
                    <c:forEach begin="0" end="${sylA.size()/6+(sylA.size()/1==0?0:0.5)}" varStatus="index">
                        <tr>
                            <c:forEach items="${sylA}" begin="${index.index*6}" end="${index.index*6+5}" var="school">
                                <td><a target="_blank" href="http://gkcx.eol.cn/schoolhtm/schoolTemple/school31.htm">${school.uniName}</a></td>
                            </c:forEach>
                        </tr>
                    </c:forEach>
                    </tbody>
                    <tbody>
                    <tr>
                        <td colspan="6" class="tmax"><span class="fenlei">B类6所</span></td>
                    </tr>
                    <c:forEach begin="0" end="${sylA.size()/6+(sylA.size()/1==0?0:0.5)}" varStatus="index">
                        <c:forEach items="${sylB}" begin="${index.index*6}" end="${index.index*6+5}" var="school">
                            <td><a target="_blank" href="http://gkcx.eol.cn/schoolhtm/schoolTemple/school31.htm">${school.uniName}</a></td>
                        </c:forEach>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
            <p><br/></p>
            <div class="tablebox">
                <table class="table-x table2">
                    <thead>
                    <tr>
                        <th colspan="5">“双一流”建设学科名单</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${sylSub}" var="school">
                        <tr>
                            <td width="150"><a target="_blank" href="http://gkcx.eol.cn/schoolhtm/schoolTemple/school31.htm">${school.uniName}</a></td>
                            <td>
                                <p align="left">${school.subject}</p>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
    </c:if>
    <c:if test="${type!='985'&&type!='211'&&type!='syl'}">
     <div class="box">
        <div class="title"><span>${type}</span>类高校名单</div>
            <div class="cont_l in" style="width: 900px;margin:auto;float:
      none">
                 <div class="scores_List">
                     <c:forEach items="${schools}" var="school">
            <dl>
             <dt>
              <a href="/schoolDetail/${school.uniName}" target="_blank">
                  <img src=${school.icon} onerror="this.src='http://college.gaokao.com/style/college/images/icon_default.png'" width="63" height="63" alt="${school.uniName}" />
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
    </c:if>
<style>
 .selecting mark{ background:none; border:1px solid #FFD0C8; line-height:20px; position:relative; display:inline-block; padding:0 30px 0 10px; margin-right:10px;}
 .selecting mark i{ background:url('http://tiku.gaokao.com/style/images/sel_btn_close.gif') no-repeat; width:12px; height:12px; position:absolute; right:5px; top:4px; cursor:pointer;}
</style>
<script src="/schoolType/js/index.js" charset="utf-8"></script>
</body>
</html>
