 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link href="/luntan/css/bootstrap.min.css" rel="stylesheet">
    <script src="/luntan/js/jquery-3.2.1.js"></script>
    <script src="/luntan/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="//at.alicdn.com/t/font_1837362_m0snx2qm47.css">
    <script src="/luntan/js/layer/layer.js"/>
    <title>${art.title}-校内论坛 </title>
</head>
<body>
<!-- 引入header文件 -->
<%@ include file="header.jsp"%>
<span hidden="hidden" id="currentUser">${user}</span>
<div style="width: 70%;margin:1% 2% 1% 5%;float: left;">
<div class="panel panel-default" id="contarin" style="">
    <div class="panel-heading" style="background-color: white">
        <div>
            <div class="panel-heading" style="background-color: white">
                <a href="/artList/all">论坛首页</a>
            </div>
            <h3>${art.title}</h3><br/>
            <div>
                <a href="/userInfo/${art.author}"><span ><strong>${art.author}</strong></span></a>&nbsp;&nbsp;
                <small class="text-muted">${art.createTime}&nbsp;&nbsp;&nbsp;+08:00</small>&nbsp;&nbsp;
                <small class="text-muted">${art.readCount}次点击</small>
            </div>
        </div>

        <div style="float: right;margin-top: -100px" >
            <img width="50px" height="50px" src="${art.icon}" class="img-rounded">
        </div>
    </div>

    <ul class="list-group" style="width: 100%">
            <li class="list-group-item">
                ${art.content}
            </li>
    </ul>
    <c:if test="${user!=null}">
        <div class="panel panel-default" id="main" style="">
            <span style="margin-left:20px;font-size:16px"> 添加一条新评论</span>
            <span style="width: 20px;height: 20px;margin-left: 65%" class="iconfont icondianzan">${art.likeCount}</span>
            <span style="width: 20px;height: 20px;margin-left:30px" class="iconfont icondianzan11-copy">${art.unlikeCount}</span>
            <span style="width: 20px;height: 20px;margin-left:30px" class="iconfont iconjubao"></span>
            <div class="panel-body">
                <div class="form-group">
                    <form action="/comment/art" method="post">
                        <input type="hidden" name="articleId" value="${art.id}"/>
                        <input type="hidden" name="commentor" value="${user}"/>
                        <textarea class="form-control" rows="3" name="content" required="required"></textarea><br/>
                        <input type="submit" class="btn btn-default btn-sm" value="回复">
                    </form>
                </div>

            </div>
        </div>
    </c:if>
    <p id="commentList" style="font-size: 16px;margin-left: 20px">评论列表</p>
    <c:forEach items="${comment}" var="comment">
        <li class="list-group-item">
            <div style="height: 50px">
                <div style="float: left;width: 6%;margin-bottom: 5px">
                    <img width="50px" height="50px" src="${comment.icon}" class="img-rounded" id="icon${comment.id}">
                </div>
                <div style="width: 89%;float: left">
                    <div>&nbsp;&nbsp;
                        <a href="/userInfo/${art.author}?school=${school}"><span id="name${comment.id}"><strong>${comment.name}</strong></span></a>
                        <span id="content${comment.id}">${comment.content}</span>
                        <span style="width: 20px;height: 20px;float: right" class="iconfont icondianzan" id="dianzan${comment.id}" onclick="dianzan(${comment.id})">12</span><br>
                    </div>
                </div>
                <div style="float: left;margin-top:20px">
                    <span style="margin-left: 10px" class="text-muted">${comment.createTime}·</span>
                    <a style="width: 20px;height: 20px;margin-right:20px" class="iconfont iconpinglun-copy" onclick='sonComment(${comment.id},"${user}")'>${comment.commentCount}</a>
                </div>
            </div>
        </li>
    </c:forEach>
</div>
<!-- 引入侧边栏文件 -->
</div>
<%@ include file="side.jsp"%>
<script>
    function sonComment(id,user) {
        var icon = $("#icon"+id).attr("src");
        var name=$("#name"+id).text();
        var content =$("#content"+id).text();
        var dianzan =$("dianzan"+id).text();
        var commentList='<span hidden="hidden" id="layerid">'+id+'</span>\n'
        commentList+='<li class="list-group-item" id=li'+id+'>\n' +
            '            <div style="height: 50px">\n' +
            '                <div style="float: left;width: 6%;margin-bottom: 5px">\n' +
            '                    <img width="50px" height="50px" src="'+icon+'" class="img-rounded">\n' +
            '                </div>\n' +
            '                <div style="width: 89%;float: left">\n' +
            '                    <div>&nbsp;&nbsp;\n' +
            '                        <a href="/userInfo/?school=${school}"><span ><strong>'+name+'</strong></span></a>\n' +
            '                        <span>'+content+'</span>\n' +
            '                        <span style="width: 20px;height: 20px;float: right" class="iconfont icondianzan" id="dianzan" onclick="dianzan()">12</span><br>\n' +
            '                    </div>\n' +
            '                </div>\n' +
            '                <div style="float: left;margin-top:20px">\n' +
            '                    <span style="margin-left: 10px" class="text-muted">2020-5-10·</span>\n' +
            '                    <a style="width: 20px;height: 20px;margin-right:20px" class="iconfont iconpinglun-copy" onclick="comment()"></a>\n' +
            '                </div>\n'
        if(name===user){
            commentList+='<div style="float: right;margin-top: 20px" onclick="deleteCom('+id+','+id+')">删除</div>';
        }
        commentList+='</div>\n' +
        '        </li>\n' +
        '        <li style="text-align: center;font-size: 20px" class ="list-group-item" >' +
        '             <span>评论列表</span>' + ' </li>'
        $.ajax({
            url: "/getComment/son",
            data: {id: id},
            type: "POST",
            dataType: "json",
            sync:false,
            success: function(data) {
                let jsonData = JSON.stringify(data);
                jQuery.each(JSON.parse(jsonData),function (i,item) {
                    commentList+='<li class="list-group-item" id="li'+item.id+'">\n' +
                        '<div style="height: 50px">\n' +
                        '                <div style="float: left;width: 6%;margin-bottom: 5px">\n' +
                        '                    <img width="50px" height="50px" src="'+item.icon+'" class="img-rounded">\n' +
                        '                </div>\n' +
                        '                <div style="width: 89%;float: left">\n' +
                        '                    <div>&nbsp;&nbsp;\n' +
                        '                        <a href="/userInfo/?school=${school}"><span ><strong>'+item.name+'</strong></span></a>\n' +
                        '                        <span>:'+item.content+'</span><a>'+item.beName+':</a><span>'+item.beContent+'</span>\n' + '<span style="width: 20px;height: 20px;float: right" class="iconfont icondianzan" id="dianzan" onclick="dianzan()">'+item.likeCount+'</span><br>\n' +
                        '                    </div>\n' +
                        '                </div>\n' +
                        '                <div style="float: left;margin-top:20px">\n' +
                        '                    <span style="margin-left: 10px" class="text-muted">2020-5-10·</span>\n' +
                        '                    <a style="width: 20px;height: 20px;margin-right:20px" class="iconfont iconpinglun-copy" onclick="comment('+item.id+')"></a>\n' +
                        '                </div>\n'

                    if(user==item.name){
                        commentList+='<div style="float: right;margin-top: 20px" onclick="deleteCom('+id+','+item.id+')">删除</div>';
                    }
                    commentList+= '</div></li>'
                })
                $(".layui-layer-content").html(commentList);
            }
        });
        layer.open({
            type: 1,
            area: ['800px', '700px'],
            shadeClose: true, //点击遮罩关闭
            content: commentList
        });
    }
    var comflag=false
    function comment(id){
        var curUser = $("#currentUser").text();
        if(curUser.length==0) alert("未登录，请先登录")
        else {
            if(!comflag) {
                var commentText = '<div id="comText'+id+'" style="width: 100%;height: 20px;margin-top: 20px">\n' +
                    '                <input id = "commentText' + id + '" style="margin-right:20px;width: 80%"/><input type="submit" value="提交评论" onclick="submitCom('+id+')">\n' +
                    '            </div>';
                var li = $("#li" + id).append(commentText);
                comflag=true;
            }else{
                var comText = $("#comText"+id);
                comText.remove();
                comflag=false;
            }
        }
    }
    function submitCom(id) {
        var commentor = $("#currentUser").text();
        var content = $("#commentText" + id).val();
        var layerid=$("#layerid").text();
        if (content.length == 0) alert("请输入评论的内容")
        else {
            $.ajax({
                url: "/comment/submit",
                data: {
                    id: id,
                    commentor: commentor,
                    content: content
                },
                type: "POST",
                dataType: "json",
                sync: false,
                success: function (data) {
                    let jsonData = JSON.stringify(data)
                    if(jsonData==0) alert("评论失败，请待会再试")
                    else {
                        layer.closeAll();
                        sonComment(layerid, commentor);
                    }
                }
            })
        }
    }
    function deleteCom(parentId,id) {
        var cur = $("#currentUser").text()
        $.ajax({
            url: "/deleteCom",
            data: {id: id},
            type: "POST",
            dataType: "json",
            sync: false,
            success:function(data) {
                layer.closeAll();
                if(parentId!==id) {
                    sonComment(parentId, cur);
                }
            }

        });
    }
</script>
<script>

</script>
</body>
</html>