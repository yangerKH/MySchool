<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<header>
    <nav class="navbar navbar-default" role="navigation" style="background-color: white">
        <div class="container-fluid" style="margin-left: 10%">
            <div class="navbar-header">
                <a class="navbar-brand" href="/artList/all?school=${school}">全部</a>
            </div>
            <div>

                <!--向左对齐-->
                <ul class="nav navbar-nav navbar-left">
                    <li <c:if test="${selected == 'help'}">
                            class="active" </c:if>><a href="/artList/help?school=${school}">求助</a>
                    </li>
                    <li <c:if test="${selected == 'study'}">class="active"
                        </c:if>><a href="/artList/study?school=${school}">学习</a></li>
                    <li <c:if test="${selected == 'work'}">class="active"
                        </c:if>><a href="/artList/work?school=${school}">兼职</a></li>
                    <li <c:if test="${selected == 'rent'}">class="active"
                         </c:if>><a href="/artList/rend?school=${school}">租房</a></li>
                    <li <c:if test="${selected == 'team'}">class="active"
                        </c:if>><a href="/artList/team?school=${school}">组团</a></li>

                </ul>
            <c:if test="${user!=null}">
                   <!--已登陆-->
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <p class="navbar-text"><a href="/">首页</a></p>
                    </li>
                    <li>
                        <p class="navbar-text"><a href="/member/${user}">${user}</a></p>
                    </li>
                    <li>
                        <p class="navbar-text"><a href="/settings">设置</a></p>
                    </li>
                    <li>
                        <p class="navbar-text"><a href="javascript:signout_confirm();">登出</a></p>
                    </li>
                </ul>
            </c:if>
            </div>
        </div>
    </nav>


</header>
<script>
    function signout_confirm()
    {
        var r=confirm("确定退出?")
        if (r==true)
        {
            window.location.href="/signout";
        }
        else
        {

        }
    }
</script>