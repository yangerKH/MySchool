<%--
  Created by IntelliJ IDEA.
  User: yanger
  Date: 2020/5/22
  Time: 下午1:16
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
    <title>2019高考录取结果查询</title>
    <meta name="keywords" content="2019高考录取查询,2019高考录取时间,2019高考录取,2019高考录取日程,高考录取查询入口,录取结果查询,高考录取,2019高考," />
    <meta name="description" content="中国教育在线第一时间发布2019年高考录取查询入口等查询服务，给考生和家长提供最需要的高考信息服务。" />

    <meta name="author" content="">
    <base target="_blank" />
    <link rel="stylesheet" type="text/css" href="https://www.eol.cn/e_html/gk/luqu/css/pc.css" />
    <link href="https://www.eol.cn/e_css/index/2017/global.css" rel="stylesheet" type="text/css" ignoreapd="false">
    <script src="https://www.eol.cn/e_js/index/2018/jquery.min.js" type="text/javascript"></script>
    <script src="https://www.eol.cn/e_js/index/2017/global.js" type="text/javascript" ignoreapd="false"></script>
</head>

<body>

<div class="mnav">
    <a href="https://gaokao.eol.cn"><img src="https://www.eol.cn/e_html/gk/luqu/images/home.png" /></a>
    <span>2019全国高考成绩查询</span>
</div>
<div class="citynav">
    <div class="center">
        <div class="citynavp">
            <div class="navfl fl">
                <p class="p1">地区</p>
                <p class="p2">导航</p>
            </div>
            <div class="navregion fl clearfix">
                <div class="regli mtf_18 fl">
                    <div class="regdiv mtf_2 clearfix">
                        <span>直辖</span>
                        <a href="#bj" target="_self">北京</a>
                        <a href="#sh" target="_self">上海</a>
                        <a href="#tj" target="_self">天津</a>
                        <a href="#chongq" target="_self">重庆</a>
                    </div>
                    <div class="regdiv clearfix">
                        <span>西南</span>
                        <a href="#sc" target="_self">四川</a>
                        <a href="#yn" target="_self">云南</a>
                        <a href="#gz" target="_self">贵州</a>
                        <a href="#xz" target="_self">西藏</a>
                    </div>
                </div>
                <div class="regli fl">
                    <div class="regdiv mtf_2 clearfix">
                        <span>华北</span>
                        <a href="#hebei" target="_self">河北</a>
                        <a href="#sx" target="_self">山西</a>
                        <a href="#nmg" target="_self">内蒙古</a>
                    </div>
                    <div class="regdiv clearfix">
                        <span>东北</span>
                        <a href="#ln" target="_self">辽宁</a>
                        <a href="#jl" target="_self">吉林</a>
                        <a href="#hlj" target="_self">黑龙江</a>
                    </div>
                </div>
                <div class="regli fl">
                    <div class="regdiv mtf_2 clearfix">
                        <span>华东</span>
                        <a href="#shand" target="_self">山东</a>
                        <a href="#js" target="_self">江苏</a>
                        <a href="#zj" target="_self">浙江</a>
                        <a href="#jx" target="_self">江西</a>
                        <a href="#fj" target="_self">福建</a>
                        <a href="#ah" target="_self">安徽</a>
                    </div>
                    <div class="regdiv clearfix">
                        <span>西北</span>
                        <a href="#shanx" target="_self">陕西</a>
                        <a href="#gs" target="_self">甘肃</a>
                        <a href="#nx" target="_self">宁夏</a>
                        <a href="#qh" target="_self">青海</a>
                        <a href="#xj" target="_self">新疆</a>
                    </div>
                </div>
                <div class="regli fl">
                    <div class="regdiv mtf_2 clearfix">
                        <span>华中</span>
                        <a href="#hen" target="_self">河南</a>
                        <a href="#hun" target="_self">湖南</a>
                        <a href="#hub" target="_self">湖北</a>
                    </div>
                    <div class="regdiv clearfix">
                        <span>华南</span>
                        <a href="#hain" target="_self">海南</a>
                        <a href="#gd" target="_self">广东</a>
                        <a href="#gx" target="_self">广西</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="citynavm clearfix">
            <div class="word">请选择地区：</div>
            <select name="" id="qiehuan">
                <option value="0" data-url="bj">北京</option>
                <option value="1" data-url="sh">上海</option>
                <option value="2" data-url="tj">天津</option>
                <option value="3" data-url="cq">重庆</option>
                <option value="4" data-url="heb">河北</option>
                <option value="5" data-url="shanx">山西</option>
                <option value="6" data-url="nmg">内蒙古</option>
                <option value="7" data-url="sd">山东</option>
                <option value="8" data-url="js">江苏</option>
                <option value="9" data-url="zj">浙江</option>
                <option value="10" data-url="jx">江西</option>
                <option value="11" data-url="fj">福建</option>
                <option value="12" data-url="ah">安徽</option>
                <option value="13" data-url="hen">河南</option>
                <option value="14" data-url="hun">湖南</option>
                <option value="15" data-url="hb">湖北</option>
                <option value="16" data-url="sc">四川</option>
                <option value="17" data-url="yn">云南</option>
                <option value="18" data-url="gz">贵州</option>
                <option value="19" data-url="xz">西藏</option>
                <option value="20" data-url="jl">吉林</option>
                <option value="21" data-url="ln">辽宁</option>
                <option value="22" data-url="hlj">黑龙江</option>
                <option value="23" data-url="sx">陕西</option>
                <option value="24" data-url="gs">甘肃</option>
                <option value="25" data-url="nx">宁夏</option>
                <option value="26" data-url="qh">青海</option>
                <option value="27" data-url="xj">新疆</option>
                <option value="28" data-url="hn">海南</option>
                <option value="29" data-url="gd">广东</option>
                <option value="30" data-url="gx">广西</option>
            </select>
        </div>
    </div>
</div>
<div class="cityshow">
    <div class="center clearfix">
        <div class="showli" id="bj">
            <div class="topline">
                <p>北京</p>
            </div>
            <div class="sline">
                <div class="sline-li clearfix">
                    <div class="sline-fl fl">
                        <img src="https://www.eol.cn/e_html/gk/luqu/images/gou.png" />
                    </div>
                    <div class="sline-fr fl">
                        <div class="word1">高考成绩查询</div>
                        <div class="word2">
                            <p>北京2019年高考本科提前批录取时间为7月6日至14日； <a
                                    href="https://gaokao.eol.cn/bei_jing/dongtai/201906/t20190626_1666275.shtml"><font color="#FF0000">查看>></font></a></p>
                        </div>
                    </div>
                </div>
                <div class="sline-li clearfix">
                    <div class="sline-fl fl">
                        <img src="https://www.eol.cn/e_html/gk/luqu/images/gou.png" />
                    </div>
                    <div class="sline-fr fl">
                        <div class="word1">征集志愿时间</div>
                        <div class="word2">
                            <p>预计7月10日 统考本科提前批（艺术类A段）志愿征集 <a
                                    href="/lqsj?url=bei_jing/dongtai/201906/t20190626_1666275.shtml"><font color="#FF0000">查看>></font></a></p>
                        </div>
                    </div>
                </div>
                <div class="sline-li clearfix">
                    <div class="sline-fl fl">
                        <img src="https://www.eol.cn/e_html/gk/luqu/images/gou.png" />
                    </div>
                    <div class="sline-fr fl">
                        <div class="word1">录取结果查询</div>
                        <div class="btn"><a href="https://www.bjeea.cn/">进入查询系统</a></div>
                    </div>
                </div>

            </div>
        </div>
        <div class="showli" id="sh">
            <div class="topline">
                <p>上海</p>
            </div>
            <div class="sline">
                <div class="sline-li clearfix">
                    <div class="sline-fl fl">
                        <img src="https://www.eol.cn/e_html/gk/luqu/images/gou.png" />
                    </div>
                    <div class="sline-fr fl">
                        <div class="word1">各批次录取日程</div>
                        <div class="word2">
                            <p>7月6日-12日本科艺体、本科提前批院校录取；7月15日-30日本科批录取 <a
                                    href="/lqsj?url=shang_hai/dongtai/201906/t20190612_1663757.shtml"><font color="#FF0000">查看>></font></a></p>
                        </div>
                    </div>
                </div>
                <div class="sline-li clearfix">
                    <div class="sline-fl fl">
                        <img src="https://www.eol.cn/e_html/gk/luqu/images/gou.png" />
                    </div>
                    <div class="sline-fr fl">
                        <div class="word1">征集志愿时间</div>
                        <div class="word2">7月23日-24日,本科普通批次第一次征求志愿填报 <a
                                href="/lqsj?url=shang_hai/dongtai/201906/t20190612_1663757.shtml"><font color="#FF0000">查看>></font></a></div>
                    </div>
                </div>
                <div class="sline-li clearfix">
                    <div class="sline-fl fl">
                        <img src="https://www.eol.cn/e_html/gk/luqu/images/gou.png" />
                    </div>
                    <div class="sline-fr fl">
                        <div class="word1">录取结果查询</div>
                        <div class="btn"><a href="#">进入查询系统</a></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="showli" id="tj">
            <div class="topline">
                <p>天津</p>
            </div>
            <div class="sline">
                <div class="sline-li clearfix">
                    <div class="sline-fl fl">
                        <img src="https://www.eol.cn/e_html/gk/luqu/images/gou.png" />
                    </div>
                    <div class="sline-fr fl">
                        <div class="word1">各批次录取日程</div>
                        <div class="word2">
                            <p>7月1日至14日，艺术、体育类本科批次按照设置的阶段依次进行录取；7月10日至12日，提前本科、“农村专项计划”批次依次进行录取；<a
                                    href="https://gaokao.eol.cn/tian_jin/dongtai/201907/t20190702_1667471.shtml"><font color="#FF0000">查看>></font></a></p>
                        </div>
                    </div>
                </div>
                <div class="sline-li clearfix">
                    <div class="sline-fl fl">
                        <img src="https://www.eol.cn/e_html/gk/luqu/images/gou.png" />
                    </div>
                    <div class="sline-fr fl">
                        <div class="word1">征集志愿时间</div>
                        <div class="word2">7月20日10时至7月21日中午12时，本科批次A阶段征询志愿。<a
                                href="https://gaokao.eol.cn/tian_jin/dongtai/201906/t20190626_1666287.shtml"><font color="#FF0000">查看>></font></a></div>
                    </div>
                </div>
                <div class="sline-li clearfix">
                    <div class="sline-fl fl">
                        <img src="https://www.eol.cn/e_html/gk/luqu/images/gou.png" />
                    </div>
                    <div class="sline-fr fl">
                        <div class="word1">录取结果查询</div>
                        <div class="btn"><a href="http://www.zhaokao.net/">进入查询系统</a></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="showli" id="chongq">
            <div class="topline">
                <p>重庆</p>
            </div>
            <div class="sline">
                <div class="sline-li clearfix">
                    <div class="sline-fl fl">
                        <img src="https://www.eol.cn/e_html/gk/luqu/images/gou.png" />
                    </div>
                    <div class="sline-fr fl">
                        <div class="word1">各批次录取日程</div>
                        <div class="word2">
                            <p>本科提前批：7月10日-13日；本科一批：7月18日-22日；本科二批：7月29日-8月4日 <a
                                    href="https://gaokao.eol.cn/chong_qing/dongtai/201906/t20190613_1664011.shtml"><font color="#FF0000">查看>></font></a></p>
                        </div>
                    </div>
                </div>
                <div class="sline-li clearfix">
                    <div class="sline-fl fl">
                        <img src="https://www.eol.cn/e_html/gk/luqu/images/gou.png" />
                    </div>
                    <div class="sline-fr fl">
                        <div class="word1">征集志愿时间</div>
                        <div class="word2">本科一批第一次：7月20日8:30-14：00；本科一批第二次：7月21日16:00-7月22日9:00 <a
                                href="https://gaokao.eol.cn/chong_qing/dongtai/201906/t20190613_1664011.shtml"><font color="#FF0000">查看>></font></a></div>
                    </div>
                </div>
                <div class="sline-li clearfix">
                    <div class="sline-fl fl">
                        <img src="https://www.eol.cn/e_html/gk/luqu/images/gou.png" />
                    </div>
                    <div class="sline-fr fl">
                        <div class="word1">录取结果查询</div>
                        <div class="btn"><a href="http://www.cqksy.cn/">进入查询系统</a></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="showli" id="hebei">
            <div class="topline">
                <p>河北</p>
            </div>
            <div class="sline">
                <div class="sline-li clearfix">
                    <div class="sline-fl fl">
                        <img src="https://www.eol.cn/e_html/gk/luqu/images/gou.png" />
                    </div>
                    <div class="sline-fr fl">
                        <div class="word1">各批次录取日程</div>
                        <div class="word2">
                            <p>本科提前批A，7月7日至10日一志愿录取，7月12日二志愿录取；本科提前批B、对口本科批，7月13日至14日一志愿录取，7月16日二志愿录取；<a
                                    href="https://gaokao.eol.cn/he_bei/dongtai/201907/t20190711_1670304.shtml"><font color="#FF0000">查看>></font></a>

                            </p>
                            <p>&nbsp;</p>
                        </div>
                    </div>
                </div>
                <div class="sline-li clearfix">
                    <div class="sline-fl fl">
                        <img src="https://www.eol.cn/e_html/gk/luqu/images/gou.png" />
                    </div>
                    <div class="sline-fr fl">
                        <div class="word1">征集志愿时间</div>
                        <div class="word2">本科提前批A二志愿为7月11日11时至7月11日17时；本科提前B、对口本科二志愿7月15日17时至7月16日8时 <a
                                href="https://gaokao.eol.cn/he_bei/dongtai/201906/t20190626_1666326.shtml"><font color="#FF0000">查看>></font></a></div>
                    </div>
                </div>
                <div class="sline-li clearfix">
                    <div class="sline-fl fl">
                        <img src="https://www.eol.cn/e_html/gk/luqu/images/gou.png" />
                    </div>
                    <div class="sline-fr fl">
                        <div class="word1">录取结果查询</div>
                        <div class="btn"><a href="http://www.hebeea.edu.cn/">进入查询系统</a></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="showli" id="sx">
            <div class="topline">
                <p>山西</p>
            </div>
            <div class="sline">
                <div class="sline-li clearfix">
                    <div class="sline-fl fl">

                        <img src="https://www.eol.cn/e_html/gk/luqu/images/gou.png" />
                    </div>
                    <div class="sline-fr fl">
                        <div class="word1">各批次录取日程 </div>
                        <div class="word2">
                            <p>山西2019年普通高校招生录取时间安排公布，详细如下：一、提前批次（7月4日—17日）；二、本科院校批次（7月17日—8月13日） <a
                                    href="https://gaokao.eol.cn/shan_xi/dongtai/201907/t20190704_1667710.shtml"><font color="#FF0000">查看>></font></a></p>
                        </div>
                    </div>
                </div>
                <div class="sline-li clearfix">
                    <div class="sline-fl fl">
                        <img src="https://www.eol.cn/e_html/gk/luqu/images/gou.png" />
                    </div>
                    <div class="sline-fr fl">
                        <div class="word1">征集志愿时间</div>
                        <div class="word2"><a
                                href="http://gaokao.eol.cn/shan_xi/dongtai/201807/t20180703_1614725.shtml"></a></div>
                    </div>
                </div>
                <div class="sline-li clearfix">
                    <div class="sline-fl fl">
                        <img src="https://www.eol.cn/e_html/gk/luqu/images/gou.png" />
                    </div>
                    <div class="sline-fr fl">
                        <div class="word1">录取结果查询</div>
                        <div class="btn"><a href="http://www.sxkszx.cn/">进入查询系统</a></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="showli" id="nmg">
            <div class="topline">
                <p>内蒙古</p>
            </div>
            <div class="sline">
                <div class="sline-li clearfix">
                    <div class="sline-fl fl"> <img src="https://www.eol.cn/e_html/gk/luqu/images/gou.png" /> </div>
                    <div class="sline-fr fl">
                        <div class="word1">各批次录取日程</div>
                        <div class="word2">
                            <p>7月17日：本科一批全部招生计划完成录取。7月19日：本科一批B全部招生计划完成录取。 <a
                                    href="https://gaokao.eol.cn/nei_meng/dongtai/201906/t20190618_1664771.shtml"><font color="#FF0000">查看>></font></a></p>
                        </div>
                    </div>
                </div>
                <div class="sline-li clearfix">
                    <div class="sline-fl fl"> <img src="https://www.eol.cn/e_html/gk/luqu/images/gou.png" /> </div>
                    <div class="sline-fr fl">
                        <div class="word1">征集志愿时间</div>
                        <div class="word2">7月14日：院校下载考生第一志愿信息，并在规定时限内完成第一志愿录取 <a
                                href="https://gaokao.eol.cn/nei_meng/dongtai/201906/t20190618_1664771.shtml"><font color="#FF0000">查看>></font></a></div>
                    </div>
                </div>
                <div class="sline-li clearfix">
                    <div class="sline-fl fl"> <img src="https://www.eol.cn/e_html/gk/luqu/images/gou.png" /> </div>
                    <div class="sline-fr fl">
                        <div class="word1">录取结果查询</div>
                        <div class="btn"><a href="http://www.nm.zsks.cn/">进入查询系统</a></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="showli" id="shand">
            <div class="topline">
                <p>山东</p>
            </div>
            <div class="sline">
                <div class="sline-li clearfix">
                    <div class="sline-fl fl"> <img src="https://www.eol.cn/e_html/gk/luqu/images/gou.png" /> </div>
                    <div class="sline-fr fl">
                        <div class="word1">各批次录取日程</div>
                        <div class="word2">
                            <p>7月2日前，军队招收飞行技术本科专业志愿录取；7月8日-7月10日文理类本科提前批首次志愿录检； <a
                                    href="https://gaokao.eol.cn/shan_dong/dongtai/201906/t20190623_1665810.shtml"><font color="#FF0000">查看>></font></a></p>
                        </div>
                    </div>
                </div>
                <div class="sline-li clearfix">
                    <div class="sline-fl fl"> <img src="https://www.eol.cn/e_html/gk/luqu/images/gou.png" /> </div>
                    <div class="sline-fr fl">
                        <div class="word1">征集志愿时间</div>
                        <div class="word2">7月12日填报文理类、艺术类、体育类本科提前批征集志愿； <a
                                href="https://gaokao.eol.cn/shan_dong/dongtai/201906/t20190623_1665810.shtml"><font color="#FF0000">查看>></font></a></div>
                    </div>
                </div>
                <div class="sline-li clearfix">
                    <div class="sline-fl fl"> <img src="https://www.eol.cn/e_html/gk/luqu/images/gou.png" /> </div>
                    <div class="sline-fr fl">
                        <div class="word1">录取结果查询</div>
                        <div class="btn"><a href="http://www.sdzk.cn/">进入查询系统</a></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="showli" id="js">
            <div class="topline">
                <p>江苏</p>
            </div>
            <div class="sline">
                <div class="sline-li clearfix">
                    <div class="sline-fl fl"> <img src="https://www.eol.cn/e_html/gk/luqu/images/gou.png" /> </div>
                    <div class="sline-fr fl">
                        <div class="word1">各批次录取日程</div>
                        <div class="word2">
                            <p>提前录取本科院校，7月8日－12日录取;第一批本科院校，7月15日－19日录取； <a
                                    href="https://gaokao.eol.cn/jiang_su/dongtai/201906/t20190625_1666182.shtml"><font color="#FF0000">　查看>></font></a></p>
                        </div>
                    </div>
                </div>
                <div class="sline-li clearfix">
                    <div class="sline-fl fl"> <img src="https://www.eol.cn/e_html/gk/luqu/images/gou.png" /> </div>
                    <div class="sline-fr fl">
                        <div class="word1">征集志愿时间</div>
                        <div class="word2">文科类、理科类提前本科7月11日；文科类、理科类本科第一批7月18日<a
                                href="https://gaokao.eol.cn/jiang_su/dongtai/201906/t20190625_1666186.shtml"><font color="#FF0000">　查看>></font></a></div>
                    </div>
                </div>
                <div class="sline-li clearfix">
                    <div class="sline-fl fl"> <img src="https://www.eol.cn/e_html/gk/luqu/images/gou.png" /> </div>
                    <div class="sline-fr fl">
                        <div class="word1">录取结果查询</div>
                        <div class="btn"><a href="http://www.jseea.cn/index.html">进入查询系统</a></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="showli" id="zj">
            <div class="topline">
                <p>浙江</p>
            </div>
            <div class="sline">
                <div class="sline-li clearfix">
                    <div class="sline-fl fl"> <img src="https://www.eol.cn/e_html/gk/luqu/images/gou.png" /></div>
                    <div class="sline-fr fl">
                        <div class="word1">各批次录取日程</div>
                        <div class="word2">
                            <p>（一）普通类提前录取：第一志愿投档7月9日8:30 ；退档录检结束7月9日16:30。第二志愿投档7月10日8:30。<a
                                    href="https://gaokao.eol.cn/zhe_jiang/dongtai/201906/t20190627_1666621.shtml"><font color="#FF0000">查看>></font></a></p>
                        </div>
                    </div>
                </div>
                <div class="sline-li clearfix">
                    <div class="sline-fl fl"> <img src="https://www.eol.cn/e_html/gk/luqu/images/gou.png" /></div>
                    <div class="sline-fr fl">
                        <div class="word1">征集志愿时间</div>
                        <div class="word2">军校征求志愿：7月12日上午；普通类第一段公布剩余计划7月20日上午。<a
                                href="https://gaokao.eol.cn/zhe_jiang/dongtai/201906/t20190627_1666621.shtml"><font color="#FF0000">查看>></font></a></div>
                    </div>
                </div>
                <div class="sline-li clearfix">
                    <div class="sline-fl fl"> <img src="https://www.eol.cn/e_html/gk/luqu/images/gou.png" /></div>
                    <div class="sline-fr fl">
                        <div class="word1">录取结果查询</div>
                        <div class="btn"><a href="http://www.zjzs.net/">进入查询系统</a></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="showli" id="jx">
            <div class="topline">
                <p>江西</p>
            </div>
            <div class="sline">
                <div class="sline-li clearfix">
                    <div class="sline-fl fl"> <img src="https://www.eol.cn/e_html/gk/luqu/images/gou.png" /></div>
                    <div class="sline-fr fl">
                        <div class="word1">各批次录取日程</div>
                        <div class="word2">
                            <p>1. 7月８—12日，提前批本科录取；2. 7月13—15日，国家专项本科录取；3. 7月16—22日，第一批本科<a
                                    href="https://gaokao.eol.cn/jiang_xi/dongtai/201906/t20190627_1666623.shtml"><font color="#FF0000">　查看>></font></a></p>
                        </div>
                    </div>
                </div>
                <div class="sline-li clearfix">
                    <div class="sline-fl fl"> <img src="https://www.eol.cn/e_html/gk/luqu/images/gou.png" /></div>
                    <div class="sline-fr fl">
                        <div class="word1">征集志愿时间</div>
                        <div class="word2">每一批次的原填志愿录取结束后，还将进行网上征集志愿，凡未被录取的考生均可在网上填报缺额院校的征集志愿 <a
                                href="https://gaokao.eol.cn/jiang_xi/dongtai/201906/t20190627_1666623.shtml"><font color="#FF0000">　查看>></font></a></div>
                    </div>
                </div>
                <div class="sline-li clearfix">
                    <div class="sline-fl fl"> <img src="https://www.eol.cn/e_html/gk/luqu/images/gou.png" /></div>
                    <div class="sline-fr fl">
                        <div class="word1">录取结果查询</div>
                        <div class="btn"><a href="http://www.jxeea.cn/">进入查询系统</a></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="showli" id="fj">
            <div class="topline">
                <p>福建</p>
            </div>
            <div class="sline">
                <div class="sline-li clearfix">
                    <div class="sline-fl fl"> <img src="https://www.eol.cn/e_html/gk/luqu/images/gou.png" /></div>
                    <div class="sline-fr fl">
                        <div class="word1">各批次录取日程</div>
                        <div class="word2">
                            <p>艺术类本科提前批于7月1日投档，录取工作7月9日下午结束；文史、理工类本科提前批于7月8日晚上投档，录取工作7月14日结束 ；高招录取工作8月19日全部结束<a
                                    href="https://gaokao.eol.cn/fu_jian/dongtai/201907/t20190711_1670307.shtml"><font color="#FF0000">　查看>></font></a></p>
                        </div>
                    </div>
                </div>
                <div class="sline-li clearfix">
                    <div class="sline-fl fl"> <img src="https://www.eol.cn/e_html/gk/luqu/images/gou.png" /></div>
                    <div class="sline-fr fl">
                        <div class="word1">征集志愿时间</div>
                        <div class="word2">文史、理工类本科提前批征求志愿7月12日8时开始至7月12日18时止；文史、理工类本科一批第一次征求志愿7月22日8时开始至7月22日18时止<a
                                href="https://gaokao.eol.cn/fu_jian/dongtai/201906/t20190621_1665515.shtml"><font color="#FF0000">　查看>></font></a></div>
                    </div>
                </div>
                <div class="sline-li clearfix">
                    <div class="sline-fl fl"> <img src="https://www.eol.cn/e_html/gk/luqu/images/gou.png" /></div>
                    <div class="sline-fr fl">
                        <div class="word1">录取结果查询</div>
                        <div class="btn"><a href="http://www.eeafj.cn/">进入查询系统</a></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="showli" id="ah">
            <div class="topline">
                <p>安徽</p>
            </div>
            <div class="sline">
                <div class="sline-li clearfix">
                    <div class="sline-fl fl"> <img src="https://www.eol.cn/e_html/gk/luqu/images/gou.png" /></div>
                    <div class="sline-fr fl">
                        <div class="word1">各批次录取日程</div>
                        <div class="word2">
                            <p> 7月3日-7月9日，艺术类第一批录取；7月12日-15日，艺术类第二批高校平行志愿录取<a
                                    href="https://gaokao.eol.cn/an_hui/dongtai/201907/t20190701_1667011.shtml"><font color="#FF0000">　查看>></font></a></p>
                        </div>
                    </div>
                </div>
                <div class="sline-li clearfix">
                    <div class="sline-fl fl"> <img src="https://www.eol.cn/e_html/gk/luqu/images/gou.png" /></div>
                    <div class="sline-fr fl">
                        <div class="word1">征集志愿时间</div>
                        <div class="word2">文理科本科提前批7月12日10:00至16:00；文理科本科第一批7月22日10:00至16:00；文理科本科第二批7月29日10:00至16:00<a
                                href="https://gaokao.eol.cn/an_hui/dongtai/201906/t20190627_1666537.shtml"><font color="#FF0000">　查看>></font></a></div>
                    </div>
                </div>
                <div class="sline-li clearfix">
                    <div class="sline-fl fl"> <img src="https://www.eol.cn/e_html/gk/luqu/images/gou.png" /></div>
                    <div class="sline-fr fl">
                        <div class="word1">录取结果查询</div>
                        <div class="btn"><a href="http://www.ahzsks.cn/">进入查询系统</a></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="showli" id="hen">
            <div class="topline">
                <p>河南</p>
            </div>
            <div class="sline">
                <div class="sline-li clearfix">
                    <div class="sline-fl fl"> <img src="https://www.eol.cn/e_html/gk/luqu/images/gou.png" /></div>
                    <div class="sline-fr fl">
                        <div class="word1">各批次录取日程</div>
                        <div class="word2">
                            <p>本科一批：7月15日-7月20日；本科二批：7月25日-7月29日；高职高专批：8月8日-8月9日 <a
                                    href="https://gaokao.eol.cn/he_nan/dongtai/201906/t20190609_1663030.shtml"><font color="#FF0000">查看>></font></a></p>
                        </div>
                    </div>
                </div>
                <div class="sline-li clearfix">
                    <div class="sline-fl fl"> <img src="https://www.eol.cn/e_html/gk/luqu/images/gou.png" /></div>
                    <div class="sline-fr fl">
                        <div class="word1">征集志愿时间</div>
                        <div class="word2">征集志愿时间为：本科提前批7月12日，本科一批7月21日，本科二批7月30日 <a
                                href="https://gaokao.eol.cn/he_nan/dongtai/201906/t20190609_1663030.shtml"><font color="#FF0000">查看>></font></a></div>
                    </div>
                </div>
                <div class="sline-li clearfix">
                    <div class="sline-fl fl"> <img src="https://www.eol.cn/e_html/gk/luqu/images/gou.png" /></div>
                    <div class="sline-fr fl">
                        <div class="word1">录取结果查询</div>
                        <div class="btn"><a href="http://www.heao.gov.cn/">进入查询系统</a></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="showli" id="hun">
            <div class="topline">
                <p>湖南</p>
            </div>
            <div class="sline">
                <div class="sline-li clearfix">
                    <div class="sline-fl fl"> <img src="https://www.eol.cn/e_html/gk/luqu/images/gou.png" /></div>
                    <div class="sline-fr fl">
                        <div class="word1">各批次录取日程</div>
                        <div class="word2">
                            <p>7月8，飞行学员录取，香港高校单独招生录取。7日-9日，本科提前批次录取。<a
                                    href="https://gaokao.eol.cn/hu_nan/dongtai/201906/t20190610_1663159.shtml"><font color="#FF0000">查看>></font></a></p>
                        </div>
                    </div>
                </div>
                <div class="sline-li clearfix">
                    <div class="sline-fl fl"> <img src="https://www.eol.cn/e_html/gk/luqu/images/gou.png" /></div>
                    <div class="sline-fr fl">
                        <div class="word1">征集志愿时间</div>
                        <div class="word2">7月11日8:00-12:00，考生网上填报军事院校和省内公费师范生征集志愿 <a
                                href="https://gaokao.eol.cn/hu_nan/dongtai/201906/t20190610_1663159.shtml"><font color="#FF0000">查看>></font></a></div>
                    </div>
                </div>
                <div class="sline-li clearfix">
                    <div class="sline-fl fl"> <img src="https://www.eol.cn/e_html/gk/luqu/images/gou.png" /></div>
                    <div class="sline-fr fl">
                        <div class="word1">录取结果查询</div>
                        <div class="btn"><a href="http://www.hneao.edu.cn/">进入查询系统</a></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="showli" id="hub">
            <div class="topline">
                <p>湖北</p>
            </div>
            <div class="sline">
                <div class="sline-li clearfix">
                    <div class="sline-fl fl"> <img src="https://www.eol.cn/e_html/gk/luqu/images/gou.png" /></div>
                    <div class="sline-fr fl">
                        <div class="word1">各批次录取日程</div>
                        <div class="word2">
                            <p>湖北2019年高考本科提前批文理类录取信息查询时间 7月13日；本科一批录取信息查询时间7月22日<a
                                    href="https://gaokao.eol.cn/hu_bei/dongtai/201907/t20190708_1668302.shtml"><font color="#FF0000">查看>></font></a></p>
                        </div>
                    </div>
                </div>
                <div class="sline-li clearfix">
                    <div class="sline-fl fl"> <img src="https://www.eol.cn/e_html/gk/luqu/images/gou.png" /></div>
                    <div class="sline-fr fl">
                        <div class="word1">征集志愿时间</div>
                        <div class="word2"> 湖北2019年普通高校招生分段填报志愿时间表：本科提前批文理类征集志愿时间：7月15日15:00-16日11:00 <a
                                href="https://gaokao.eol.cn/hu_bei/dongtai/201907/t20190708_1668302.shtml"><font color="#FF0000">查看>></font></a></div>
                    </div>
                </div>
                <div class="sline-li clearfix">
                    <div class="sline-fl fl"> <img src="https://www.eol.cn/e_html/gk/luqu/images/gou.png" /></div>
                    <div class="sline-fr fl">
                        <div class="word1">录取结果查询</div>
                        <div class="btn"><a href="http://zsxx.e21.cn/">进入查询系统</a></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="showli" id="sc">
            <div class="topline">
                <p>四川</p>
            </div>
            <div class="sline">
                <div class="sline-li clearfix">
                    <div class="sline-fl fl"> <img src="https://www.eol.cn/e_html/gk/luqu/images/gou.png" /></div>
                    <div class="sline-fr fl">
                        <div class="word1">各批次录取日程</div>
                        <div class="word2">
                            <p> 录取时间：7月3日 本科提前批国家专项录取院校；7月6日 本科提前批录取院校。<a
                                    href="https://gaokao.eol.cn/si_chuan/dongtai/201907/t20190701_1667195.shtml"><font color="#FF0000">查看>></font></a></p>
                        </div>
                    </div>
                </div>
                <div class="sline-li clearfix">
                    <div class="sline-fl fl"> <img src="https://www.eol.cn/e_html/gk/luqu/images/gou.png" /></div>
                    <div class="sline-fr fl">
                        <div class="word1">征集志愿时间</div>
                        <div class="word2">各批次征集志愿时间：7月5日 本科提前批国家专项、免费医学定向。 <a
                                href="https://gaokao.eol.cn/si_chuan/dongtai/201907/t20190701_1667195.shtml"><font color="#FF0000">查看>></font> </a></div>
                    </div>
                </div>
                <div class="sline-li clearfix">
                    <div class="sline-fl fl"> <img src="https://www.eol.cn/e_html/gk/luqu/images/gou.png" /></div>
                    <div class="sline-fr fl">
                        <div class="word1">录取结果查询</div>
                        <div class="btn"><a href="http://www.sceea.cn/">进入查询系统</a></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="showli" id="yn">
            <div class="topline">
                <p>云南</p>
            </div>
            <div class="sline">
                <div class="sline-li clearfix">
                    <div class="sline-fl fl"> <img src="https://www.eol.cn/e_html/gk/luqu/images/gou.png" /></div>
                    <div class="sline-fr fl">
                        <div class="word1">各批次录取日程</div>
                        <div class="word2">
                            <p>
                                <a href="http://gaokao.eol.cn/yun_nan/dongtai/201807/t20180730_1619399.shtml"></a></p>
                        </div>
                    </div>
                </div>
                <div class="sline-li clearfix">
                    <div class="sline-fl fl"> <img src="https://www.eol.cn/e_html/gk/luqu/images/gou.png" /></div>
                    <div class="sline-fr fl">
                        <div class="word1">征集志愿时间</div>
                        <div class="word2">
                            <a href="http://gaokao.eol.cn/yun_nan/dongtai/201807/t20180730_1619399.shtml"></a></div>
                    </div>
                </div>
                <div class="sline-li clearfix">
                    <div class="sline-fl fl"> <img src="https://www.eol.cn/e_html/gk/luqu/images/gou.png" /></div>
                    <div class="sline-fr fl">
                        <div class="word1">录取结果查询</div>
                        <div class="btn"><a href="http://www.ynzs.cn/">进入查询系统</a></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="showli" id="gz">
            <div class="topline">
                <p>贵州</p>
            </div>
            <div class="sline">
                <div class="sline-li clearfix">
                    <div class="sline-fl fl"> <img src="https://www.eol.cn/e_html/gk/luqu/images/gou.png" /></div>
                    <div class="sline-fr fl">
                        <div class="word1">各批次录取日程</div>
                        <div class="word2">
                            <p>今年我省高考录取工作将于7月8日正式开始，各批次和类别录取时间安排如下：文史、理工类提前批本科院校：7月8日—12日录取； <a href="https://gaokao.eol.cn/gui_zhou/dongtai/201907/t20190703_1667527.shtml"><font color="#FF0000">　查看>></font></a></p>
                        </div>
                    </div>
                </div>
                <div class="sline-li clearfix">
                    <div class="sline-fl fl"> <img src="https://www.eol.cn/e_html/gk/luqu/images/gou.png" /></div>
                    <div class="sline-fr fl">
                        <div class="word1">征集志愿时间</div>
                        <div class="word2">
                            <p>&nbsp;</p>
                            <p>&nbsp;</p>
                            <p>&nbsp;</p>
                        </div>
                    </div>
                </div>
                <div class="sline-li clearfix">
                    <div class="sline-fl fl"> <img src="https://www.eol.cn/e_html/gk/luqu/images/gou.png" /></div>
                    <div class="sline-fr fl">
                        <div class="word1">录取结果查询</div>
                        <div class="btn"><a href="http://www.eaagz.org.cn/">进入查询系统</a></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="showli" id="xz">
            <div class="topline">
                <p>西藏</p>
            </div>
            <div class="sline">
                <div class="sline-li clearfix">
                    <div class="sline-fl fl"> <img src="https://www.eol.cn/e_html/gk/luqu/images/gou.png" /></div>
                    <div class="sline-fr fl">
                        <div class="word1">各批次录取日程</div>
                        <div class="word2">
                            <p>1.提前单独批次录取时间:7月11日至7月26日。2.第一批本科录取时间:7月26日至8月1日。3.第一批本科预科录取时间：8月1日至8月3日。<a
                                    href="https://gaokao.eol.cn/xi_zang/dongtai/201907/t20190716_1670825.shtml"><font color="#FF0000">　查看>></font></a></p>
                        </div>
                    </div>
                </div>
                <div class="sline-li clearfix">
                    <div class="sline-fl fl"> <img src="https://www.eol.cn/e_html/gk/luqu/images/gou.png" /></div>
                    <div class="sline-fr fl">
                        <div class="word1">征集志愿时间</div>
                        <div class="word2">
                            <p>&nbsp;</p>
                            <p>&nbsp;</p>
                            <p>&nbsp;</p>
                        </div>
                    </div>
                </div>
                <div class="sline-li clearfix">
                    <div class="sline-fl fl"> <img src="https://www.eol.cn/e_html/gk/luqu/images/gou.png" /></div>
                    <div class="sline-fr fl">
                        <div class="word1">录取结果查询</div>
                        <div class="btn"><a href="http://ksy.xzedu.gov.cn/">进入查询系统</a></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="showli" id="jl">
            <div class="topline">
                <p>吉林</p>
            </div>
            <div class="sline">
                <div class="sline-li clearfix">
                    <div class="sline-fl fl"> <img src="https://www.eol.cn/e_html/gk/luqu/images/gou.png" /></div>
                    <div class="sline-fr fl">
                        <div class="word1">各批次录取日程</div>
                        <div class="word2">
                            <p>吉林本科录取时间安排（7月4日—8月7日）；专科录取时间安排（8月12日-26日），各批次录取时间详细如下：<a
                                    href="https://gaokao.eol.cn/ji_lin/dongtai/201907/t20190701_1667108.shtml"><font color="#FF0000">　查看>></font></a></p>
                        </div>
                    </div>
                </div>
                <div class="sline-li clearfix">
                    <div class="sline-fl fl"> <img src="https://www.eol.cn/e_html/gk/luqu/images/gou.png" /></div>
                    <div class="sline-fr fl">
                        <div class="word1">征集志愿时间</div>
                        <div class="word2">各批次网上征集志愿时间详细如下：提前批（艺术类）7月10日-7月12日；提前批（文史、理工、体育类）7月13日、7月15日<a
                                href="https://gaokao.eol.cn/ji_lin/dongtai/201907/t20190701_1667108.shtml"><font color="#FF0000">　查看>></font></a></div>
                    </div>
                </div>
                <div class="sline-li clearfix">
                    <div class="sline-fl fl"> <img src="https://www.eol.cn/e_html/gk/luqu/images/gou.png" /></div>
                    <div class="sline-fr fl">
                        <div class="word1">录取结果查询</div>
                        <div class="btn"><a href="http://www.jleea.edu.cn/">进入查询系统</a></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="showli" id="ln">
            <div class="topline">
                <p>辽宁</p>
            </div>
            <div class="sline">
                <div class="sline-li clearfix">
                    <div class="sline-fl fl"> <img src="https://www.eol.cn/e_html/gk/luqu/images/gou.png" /></div>
                    <div class="sline-fr fl">
                        <div class="word1">各批次录取日程</div>
                        <div class="word2">
                            <p> 2019年辽宁省普通高校招生录取工作于7月7日至8月10日进行，具体时间安排如下：<a
                                    href="https://gaokao.eol.cn/liao_ning/dongtai/201907/t20190702_1667246.shtml"><font color="#FF0000">　查看>></font></a></p>
                        </div>
                    </div>
                </div>
                <div class="sline-li clearfix">
                    <div class="sline-fl fl"> <img src="https://www.eol.cn/e_html/gk/luqu/images/gou.png" /></div>
                    <div class="sline-fr fl">
                        <div class="word1">征集志愿时间</div>
                        <div class="word2">（1）7月16日8:00-12:00，填报本科提前批“征集志愿”；（2）7月25日8:00-15:00，填报本科批第一次“征集志愿”

                            <a
                                    href="https://gaokao.eol.cn/liao_ning/dongtai/201906/t20190627_1666660.shtml"><font color="#FF0000">　查看>></font></a></div>
                    </div>
                </div>
                <div class="sline-li clearfix">
                    <div class="sline-fl fl"> <img src="https://www.eol.cn/e_html/gk/luqu/images/gou.png" /></div>
                    <div class="sline-fr fl">
                        <div class="word1">录取结果查询</div>
                        <div class="btn"><a href="http://www.lnzsks.com/">进入查询系统</a></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="showli" id="hlj">
            <div class="topline">
                <p>黑龙江</p>
            </div>
            <div class="sline">
                <div class="sline-li clearfix">
                    <div class="sline-fl fl"> <img src="https://www.eol.cn/e_html/gk/luqu/images/gou.png" /></div>
                    <div class="sline-fr fl">
                        <div class="word1">各批次录取日程</div>
                        <div class="word2">
                            <p>1、提前批次录取的高校。（1）军队、公安、司法本科高校，录取时间：7月8日-10日；本科第一批次录取的高校，特殊类型招生：录取时间：7月16日。<a href="https://gaokao.eol.cn/hei_long_jiang/dongtai/201907/t20190710_1670025.shtml"><font color="#FF0000">　查看>></font></a></p>
                        </div>
                    </div>
                </div>
                <div class="sline-li clearfix">
                    <div class="sline-fl fl"> <img src="https://www.eol.cn/e_html/gk/luqu/images/gou.png" /></div>
                    <div class="sline-fr fl">
                        <div class="word1">征集志愿时间</div>
                        <div class="word2">
                            <p>1、提前批次录取的高校。（1）军队、公安、司法本科高校，部分普通本科高校（专业），香港中文大学、香港城市大学，招飞本科高校及专业，设2个高校梯度志愿。录取时间：7月8日-10日，征集志愿录取时间：7月10日。<a href="https://gaokao.eol.cn/hei_long_jiang/dongtai/201907/t20190710_1670025.shtml"><font color="#FF0000">　查看>></font></a>

                            </p>

                        </div>
                    </div>
                </div>
                <div class="sline-li clearfix">
                    <div class="sline-fl fl"> <img src="https://www.eol.cn/e_html/gk/luqu/images/gou.png" /></div>
                    <div class="sline-fr fl">
                        <div class="word1">录取结果查询</div>
                        <div class="btn"><a href="http://www.lzk.hl.cn/">进入查询系统</a></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="showli" id="shanx">
            <div class="topline">
                <p>陕西</p>
            </div>
            <div class="sline">
                <div class="sline-li clearfix">
                    <div class="sline-fl fl"> <img src="https://www.eol.cn/e_html/gk/luqu/images/gou.png" /></div>
                    <div class="sline-fr fl">
                        <div class="word1">各批次录取日程</div>
                        <div class="word2">
                            <p>　1．提前批次文史、理工类：本科7月5日—11日17∶00，专科7月12日—14日17∶00。体育、艺术类：本科7月5日—12日，专科7月13日—14日。高职单招与本科一批同时进行。

                                <a href="https://gaokao.eol.cn/shan_xi_sheng/dongtai/201907/t20190702_1667331.shtml"><font color="#FF0000">　查看>></font></a></p>
                        </div>
                    </div>
                </div>
                <div class="sline-li clearfix">
                    <div class="sline-fl fl"> <img src="https://www.eol.cn/e_html/gk/luqu/images/gou.png" /></div>
                    <div class="sline-fr fl">
                        <div class="word1">征集志愿时间</div>
                        <div class="word2">征集志愿及录取：本科一批7月22日下午 至 7月24日；本科二批：8月1日下午至8月5日 <a
                                href="https://gaokao.eol.cn/shan_xi_sheng/dongtai/201907/t20190702_1667331.shtml"><font color="#FF0000">　查看>></font></a></div>
                    </div>
                </div>
                <div class="sline-li clearfix">
                    <div class="sline-fl fl"> <img src="https://www.eol.cn/e_html/gk/luqu/images/gou.png" /></div>
                    <div class="sline-fr fl">
                        <div class="word1">录取结果查询</div>
                        <div class="btn"><a href="http://www.sneac.com/">进入查询系统</a></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="showli" id="gs">
            <div class="topline">
                <p>甘肃</p>
            </div>
            <div class="sline">
                <div class="sline-li clearfix">
                    <div class="sline-fl fl"> <img src="https://www.eol.cn/e_html/gk/luqu/images/gou.png" /></div>
                    <div class="sline-fr fl">
                        <div class="word1">各批次录取日程</div>
                        <div class="word2">
                            <p>本科提前批，A段：军队、公安、武警、司法等文理类，免费师范，免费医学定向，高水平运动队、运动训练、武术与民族传统体育，香港中文大学等，行业定向及有特殊要求的国家专项计划等特殊类型的招生，录取时间：7月5日开始； <a href="https://gaokao.eol.cn/gan_su/dongtai/201907/t20190702_1667469.shtml"><font color="#FF0000"> 查看>></font></a></p>
                        </div>
                    </div>
                </div>
                <div class="sline-li clearfix">
                    <div class="sline-fl fl"> <img src="https://www.eol.cn/e_html/gk/luqu/images/gou.png" /></div>
                    <div class="sline-fr fl">
                        <div class="word1">征集志愿时间</div>
                        <div class="word2">征集批次：提前批次A段征集志愿填报时间为7月8日20:00—7月9日8:00； <a
                                href="https://gaokao.eol.cn/gan_su/dongtai/201906/t20190627_1666657.shtml"><font color="#FF0000">　查看>></font></a></div>
                    </div>
                </div>
                <div class="sline-li clearfix">
                    <div class="sline-fl fl"> <img src="https://www.eol.cn/e_html/gk/luqu/images/gou.png" /></div>
                    <div class="sline-fr fl">
                        <div class="word1">录取结果查询</div>
                        <div class="btn"><a href="http://www.ganseea.cn/">进入查询系统</a></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="showli" id="nx">
            <div class="topline">
                <p>宁夏</p>
            </div>
            <div class="sline">
                <div class="sline-li clearfix">
                    <div class="sline-fl fl"> <img src="https://www.eol.cn/e_html/gk/luqu/images/gou.png" /></div>
                    <div class="sline-fr fl">
                        <div class="word1">各批次录取日程</div>
                        <div class="word2">
                            <p>录取工作分为两个阶段，第一阶段：1. 提前录取院校的艺术类本科专业，7月7日-17日；2. 提前录取院校或专业（不含	艺术类专业），7月7日至15日；<a
                                    href="https://gaokao.eol.cn/ning_xia/dongtai/201907/t20190708_1668076.shtml"><font color="#FF0000"> 查看>></font></a></p>
                        </div>
                    </div>
                </div>
                <div class="sline-li clearfix">
                    <div class="sline-fl fl"> <img src="https://www.eol.cn/e_html/gk/luqu/images/gou.png" /></div>
                    <div class="sline-fr fl">
                        <div class="word1">征集志愿时间</div>
                        <div class="word2">
                            <p>&nbsp;</p>


                        </div>
                    </div>
                </div>
                <div class="sline-li clearfix">
                    <div class="sline-fl fl"> <img src="https://www.eol.cn/e_html/gk/luqu/images/gou.png" /></div>
                    <div class="sline-fr fl">
                        <div class="word1">录取结果查询</div>
                        <div class="btn"><a href="http://www.nxjyks.cn/">进入查询系统</a></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="showli" id="qh">
            <div class="topline">
                <p>青海</p>
            </div>
            <div class="sline">
                <div class="sline-li clearfix">
                    <div class="sline-fl fl"> <img src="https://www.eol.cn/e_html/gk/luqu/images/gou.png" /></div>
                    <div class="sline-fr fl">
                        <div class="word1">各批次录取日程</div>
                        <div class="word2">
                            <p> 今年的录取工作从7月5日开始，预计8月23日左右结束。各批次按以下顺序投档：
                                <a
                                        href="https://gaokao.eol.cn/qing_hai/dongtai/201907/t20190710_1670029.shtml"><font color="#FF0000"> 查看>></font></a></p>
                        </div>
                    </div>
                </div>
                <div class="sline-li clearfix">
                    <div class="sline-fl fl"> <img src="https://www.eol.cn/e_html/gk/luqu/images/gou.png" /></div>
                    <div class="sline-fr fl">
                        <div class="word1">征集志愿时间</div>
                        <div class="word2">
                            <p>2019年青海高考征集志愿时间安排；提前批本科、国家（地方）专项计划7月12日征集志愿；<a
                                    href="https://gaokao.eol.cn/qing_hai/dongtai/201907/t20190701_1667102.shtml"><font color="#FF0000">　查看>></font></a></p>

                        </div>
                    </div>
                </div>
                <div class="sline-li clearfix">
                    <div class="sline-fl fl"> <img src="https://www.eol.cn/e_html/gk/luqu/images/gou.png" /></div>
                    <div class="sline-fr fl">
                        <div class="word1">录取结果查询</div>
                        <div class="btn"><a href="http://www.qhjyks.com/">进入查询系统</a></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="showli" id="xj">
            <div class="topline">
                <p>新疆</p>
            </div>
            <div class="sline">
                <div class="sline-li clearfix">
                    <div class="sline-fl fl"> <img src="https://www.eol.cn/e_html/gk/luqu/images/gou.png" /></div>
                    <div class="sline-fr fl">
                        <div class="word1">各批次录取日程</div>
                        <div class="word2">
                            <p>自治区2019年普通高校招生录取工作将于7月8日正式开始，预计8月31日结束<a href="https://gaokao.eol.cn/xin_jiang/dongtai/201907/t20190701_1666991.shtml"><font color="#FF0000">　查看>></font></a></p>
                        </div>
                    </div>
                </div>
                <div class="sline-li clearfix">
                    <div class="sline-fl fl"> <img src="https://www.eol.cn/e_html/gk/luqu/images/gou.png" /></div>
                    <div class="sline-fr fl">
                        <div class="word1">征集志愿时间</div>
                        <div class="word2">

                            <p>第一次征集志愿：6月16日-21日，本科提前批次征集志愿；<a href="https://gaokao.eol.cn/xin_jiang/dongtai/201907/t20190701_1666991.shtml"><font color="#FF0000">　查看>></font></a></p>

                        </div>
                    </div>
                </div>
                <div class="sline-li clearfix">
                    <div class="sline-fl fl"> <img src="https://www.eol.cn/e_html/gk/luqu/images/gou.png" /></div>
                    <div class="sline-fr fl">
                        <div class="word1">录取结果查询</div>
                        <div class="btn"><a href="http://www.xjzk.gov.cn/">进入查询系统</a></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="showli" id="hain">
            <div class="topline">
                <p>海南</p>
            </div>
            <div class="sline">
                <div class="sline-li clearfix">
                    <div class="sline-fl fl"> <img src="https://www.eol.cn/e_html/gk/luqu/images/gou.png" /></div>
                    <div class="sline-fr fl">
                        <div class="word1">各批次录取日程</div>
                        <div class="word2">
                            <p>军队、公安、司法、消防类本科学校及安排在本科提前批录取的其它本科学校7 月10日至12日录取； <a
                                    href="https://gaokao.eol.cn/hai_nan/dongtai/201907/t20190701_1667104.shtml"><font color="#FF0000">　查看>></font></a></p>
                        </div>
                    </div>
                </div>
                <div class="sline-li clearfix">
                    <div class="sline-fl fl"> <img src="https://www.eol.cn/e_html/gk/luqu/images/gou.png" /></div>
                    <div class="sline-fr fl">
                        <div class="word1">征集志愿时间</div>
                        <div class="word2">本科提前批：7月11日上午；国家专项计划：7月13日;本科A批：7月19日上午；本科B批：7月31日上午；
                            <a href="https://gaokao.eol.cn/hai_nan/dongtai/201906/t20190623_1665815.shtml"><font color="#FF0000">　查看>></font></a></div>
                    </div>
                </div>
                <div class="sline-li clearfix">
                    <div class="sline-fl fl"> <img src="https://www.eol.cn/e_html/gk/luqu/images/gou.png" /></div>
                    <div class="sline-fr fl">
                        <div class="word1">录取结果查询</div>
                        <div class="btn"><a href="http://ea.hainan.gov.cn/">进入查询系统</a></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="showli" id="gd">
            <div class="topline">
                <p>广东</p>
            </div>
            <div class="sline">
                <div class="sline-li clearfix">
                    <div class="sline-fl fl"> <img src="https://www.eol.cn/e_html/gk/luqu/images/gou.png" /></div>
                    <div class="sline-fr fl">
                        <div class="word1">各批次录取日程</div>
                        <div class="word2">
                            <p>7月7日，提前批本科院校网上报到。空军招飞院校录取；7月12日本科批次院校网上报到。<a
                                    href="https://gaokao.eol.cn/guang_dong/dongtai/201907/t20190701_1666999.shtml"><font color="#FF0000">　查看>></font></a></p>
                        </div>
                    </div>
                </div>
                <div class="sline-li clearfix">
                    <div class="sline-fl fl"> <img src="https://www.eol.cn/e_html/gk/luqu/images/gou.png" /></div>
                    <div class="sline-fr fl">
                        <div class="word1">征集志愿时间</div>
                        <div class="word2"> 7月11日，文理类院校提前批征集志愿；7月21日7月26日，本科批次征集志愿。<a
                                href="https://gaokao.eol.cn/guang_dong/dongtai/201907/t20190701_1666999.shtml"><font color="#FF0000">　查看>></font></a></div>
                    </div>
                </div>
                <div class="sline-li clearfix">
                    <div class="sline-fl fl"> <img src="https://www.eol.cn/e_html/gk/luqu/images/gou.png" /></div>
                    <div class="sline-fr fl">
                        <div class="word1">录取结果查询</div>
                        <div class="btn"><a href="http://www.stegd.edu.cn/">进入查询系统</a></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="showli" id="gx">
            <div class="topline">
                <p>广西</p>
            </div>
            <div class="sline">
                <div class="sline-li clearfix">
                    <div class="sline-fl fl"> <img src="https://www.eol.cn/e_html/gk/luqu/images/gou.png" /></div>
                    <div class="sline-fr fl">
                        <div class="word1">各批次录取日程</div>
                        <div class="word2">
                            <p> 2019年广西高考录取日程公布 ，详细如下：空军招飞预计投档时间7月3日，艺本一批
                                预计投档时间7月3日<a
                                        href="https://gaokao.eol.cn/guang_xi/dongtai/201907/t20190701_1667106.shtml"><font color="#FF0000">　查看>></font></a></p>
                        </div>
                    </div>
                </div>
                <div class="sline-li clearfix">
                    <div class="sline-fl fl"> <img src="https://www.eol.cn/e_html/gk/luqu/images/gou.png" /></div>
                    <div class="sline-fr fl">
                        <div class="word1">征集志愿时间</div>
                        <div class="word2"> <a
                                href="http://gaokao.eol.cn/guang_xi/dongtai/201806/t20180628_1613776.shtml"></a></div>
                    </div>
                </div>
                <div class="sline-li clearfix">
                    <div class="sline-fl fl"> <img src="https://www.eol.cn/e_html/gk/luqu/images/gou.png" /></div>
                    <div class="sline-fr fl">
                        <div class="word1">录取结果查询</div>
                        <div class="btn"><a href="http://www.gxeea.cn/">进入查询系统</a></div>
                    </div>
                </div>
            </div>
        </div>



    </div>
</div>
</body>

</html>

Process finished with exit code 0

