<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <title>私聊</title>
    <link href="../../resources/layui/css/layui.css" charset="UTF-8">
    <script src="/index/plugins/jquery-3.4.1.min.js"></script>
    <script src="../../resources/layui/layui.all.js"></script>
    <style>
        ul li {
            list-style: none;
        }
       .inputMessage{
           width: 100%;
           position: absolute;
           bottom: 0;
       }
       .inputMessage .input{
           width:80%;
           height: 18px;
       }
       .inputMessage .submit{
           float: right;
       }

        .friend-ul {
            margin: 10px;
            padding: 0;

        }

        .head-icon {
            width: 36px;
            height: 36px;
            border-radius: 100%;
        }

        .friend-div {
            display: flex;
            height: 70px;
            margin: 0 auto;
            align-items: center;
        }

        .layui-btn {
            display: inline-block;
            height: 38px;
            line-height: 38px;
            padding: 0 18px;
            background-color: #969696;
            color: #fff;
            white-space: nowrap;
            text-align: center;
            font-size: 14px;
            border: none;
            border-radius: 2px;
            cursor: pointer;
        }

        .triangle {
            width: 100%;
            height: 90%;
            padding-bottom: 10px;
            position: relative;
            transition: all 0.5s;
            overflow-x: hidden;
            overflow-y: auto;
        }

        .triangle ul {
            padding: 10px;
        }

        .friendListUl {
            display: none;
        }

        .triangle li {
            padding: 5px;
            margin-bottom: 10px;
        }

        .triangle li span {
            position: relative;
            border-radius: 7px;
            background-color: #a6e860;
            padding: 6px 10px 8px 10px;
            z-index: 1;
        }

        .triangle .textLeft span {
            background-color: #EDEDED;
        }

        .textRight {
            text-align: right;
        }

        .naviga {
            display: flex;
            justify-content: space-around;
            border-bottom: 1px solid #3F3F3F;
            background: #1E9FFF;
        }

        .naviga span {
            width: 50%;
            padding: 10px;
            cursor: pointer;
            text-align: center;

        }

        .active {
            border-bottom: 2px solid #1E9FFF;
            background-color: #1E9FFF;
            color: #FFFFFF;
        }

    </style>
</head>
<body>&nbsp;&nbsp;&nbsp;
<shiro:hasRole name="系统管理员">
    <a href="#" style="text-decoration: none" onclick="openSendSysMsgWindow()">发送系统消息</a>
</shiro:hasRole>
<%--<div id="friendList" class="friendList">--%>
<%--    <a href="javascript:void(0)" onclick="document.getElementById('friendList').style.display='none'">关闭聊天</a>--%>
<%--    <div class="naviga" id="naviga"><span class="active">Artoria</span></div>--%>
<%--    <ul id="friend" class="friend-ul">--%>

<%--    </ul>--%>
<%--    <ul id="sysMsg" class="friend-ul friendListUl">--%>
<%--        <li style="border-bottom: 1px solid #D6D6D6; cursor: pointer;">--%>
<%--            <div class="friend-div" onclick="openSysMsg()">--%>
<%--                <img class="head-icon" src="../resources/images/message.png">--%>
<%--                <span style="margin-left: 10px">系统消息</span>--%>
<%--            </div>--%>
<%--        </li>--%>
<%--    </ul>--%>
<%--    <div id="historyMessages" class="historyMessages"></div>--%>
<%--    <div id="inputMessage" class="inputMessage">--%>
<%--        <input class="input" type="text" placeholder="请输入聊天信息"/><input class="submit" type="submit" value="发送"/>--%>
<%--    </div>--%>
<%--</div>--%>
</body>
<script>
    var currentUser = '${currentUser}';
    var ws = null;
    var img = null;//发送图片
    var toUser = '${toUser}';
    $(function () {
        $('#naviga span').each(function (i, e) {
            $(this).click(function () {
                $(this).addClass('active').siblings().removeClass('active')

                $(".friend-ul").hide().eq($(this).index()).show();

            })
        });

        if ('WebSocket' in window) {
            ws = new WebSocket("ws://"+location.host+"${pageContext.request.contextPath}"+"/chatServer")
        } else if ('MozWebSocket' in window) {
            ws = new MozWebSocket(target);
        } else {
            alert('WebSocket is not supported by this browser.');
            return;
        }
        ws.onopen = function (ev) {
            console.log("onopen"+ev.data);
        }


        ws.onmessage = function (ev) {
            console.log("onmessage"+ev.data);
            var data = JSON.parse(ev.data)
            // if (data.type == 1) {
            //     // $('#' + data.from_id + "output").empty();
            //     // $('#' + data.to_id + "output").empty();
            //     //
            //     var msgList = getMsgList(data.from);
            //     msgList.forEach(function (e) {
            //         showReceiveMessage(e.from, e.to, e.msg, e.time, e.type)
            //     })
            // }
            showReceiveMessage(data.fromUser,data.toUser,data.content,data.date,data.type);
        }

        ws.onclose = function (ev) {
            console.log("oncolse"+ev.data);
            var data = JSON.parse(ev.data)
            layer.msg(data.tip)
        }
        //打开私人聊天的窗口
        openChatWindow('${toUser}');
    })

    //  打开单人聊天窗口
    function openChatWindow(name) {
        var chatWith = '<div style="width: 100%;height: 100%;overflow: hidden">'
            + '<div  class="triangle" > <ul id="' + name + 'output"></ul>'
            + '</div>'
            +
            '<div style="width: 100%;height: 35px"><input id="' + name +
            'messageText" oninput="checkInput()" type="text" style="width: 87%;height: 100%"> <div id ="sendBtn" style="width:20px" class="layui-btn" onclick="sendMsg(\''+ name +'\')">发送</div></div></div>';
        layer.open({
            type: 1,
            title: [name, 'font-family:Microsoft YaHei;font-size: 24px;height: 80px;'],
            content: chatWith,
            area: ['600px', '600px'],
            maxmin: true,
            shade: [0.5,'#000'],
            resize: true,
            zIndex: layer.zIndex,
            success: function (layero) {
            }
        });

         var msgList = getMsgList(name);
         var msg = null;
         for(msg in msgList){
             showReceiveMessage(msgList[msg].fromUser,msgList[msg].toUser,msgList[msg].content,msgList[msg].date,1)
         }
    }

    // 将消息显示在聊天列表上
    function showReceiveMessage(from, to, msg, time, type) {
        time = getDateFull(time)
        if (from == currentUser) {
            var rightHtml = '<li class="textRight"><span>' + msg + '</span><img class="head-icon" src="/resources/images/icon.jpg" alt=""></li>';
            $('#' + to + "output").append(rightHtml);

        } else {
            var leftHtml = '<li class="textLeft"><img class="head-icon" src="/resources/images/icon.jpg" alt=""><span>' + msg +
                '</span></li>'
            $('#' + from + "output").append(leftHtml);
        }
        var scrollDiv = $('.triangle')
        scrollDiv.scrollTop(scrollDiv[0].scrollHeight);
    }

    function appendZero(s) {
        return ("00" + s).substr((s + "").length);
    } //补0函数

    //获取当前时间日期
    function getDateFull(time) {
        var date = new Date(time);
        var currentdate = date.getFullYear() + "-"
            + appendZero(date.getMonth() + 1) + "-"
            + appendZero(date.getDate()) + " "
            + appendZero(date.getHours()) + ":"
            + appendZero(date.getMinutes()) + ":"
            + appendZero(date.getSeconds());
        return currentdate;
    }

    // 发送消息
    function sendMsg(name) {
        var msg = $("#" + name + "messageText").val();
        if (msg != "") {
            var message = {
                fromUser: currentUser,
                toUser: name,
                content: msg,
                type: 1,
                date: getDateFull(new Date()),
            }
            //将信息显示到对话框里
            //uploadMineMsgList(name, msg);
            //发送信息
            ws.send(JSON.stringify(message));
            //将输入框清空
            $("#" + name + "messageText").val("");
        }

    }

    // 发消息时，本人的消息实时更新在消息列表上
    function uploadMineMsgList(name, msg) {
        var rightHtml = '<li class="textRight"><span>' + msg + '</span><img class="head-icon" src="resources/images/icon.jpg" alt=""></li>';
        $('#' + name + "output").append(rightHtml);
        var scrollDiv = $('.triangle')
        scrollDiv.scrollTop(scrollDiv[0].scrollHeight);
    }

    // 好友列表
    // function friendList(data) {
    //     $('#friend').empty();
    //     $('#header-panel').empty();
    //     var online;
    //     var color;
    //     data.users.forEach(function (e) {
    //         if (e.online == 0) {
    //             online = '离线';
    //             color = '#666666';
    //         } else if (e.online == 1) {
    //             online = '在线';
    //             color = '#0000FF';
    //         }
    //         if (e.id != userid) {
    //             $('#friend').append('<li onclick="openChatWindow(' + e.id + ',\'' + e.nickname +
    //                 '\')" style="border-bottom: 1px solid #D6D6D6; cursor: pointer;"><div class="friend-div">' +
    //                 '<img class="head-icon" src="resources/images/icon.jpg">' +
    //                 '<span style="margin-left: 10px">' + e.nickname + '</span><span style="margin-left: 10px;color: ' + color + '">' +
    //                 online +
    //                 '</span>' +
    //                 '</div></li>');
    //         } else {
    //             $('#header-panel').append('<div class="friend-div"style="padding-left: 5px;">\n' +
    //                 '            <img class="head-icon" src="resources/images/icon.jpg" alt="">\n' +
    //                 '            <span style="margin-left: 10px">' + e.nickname + '</span>\n' +
    //                 '        </div>');
    //         }
    //     })
    // }

    // 获取消息记录
    function getMsgList() {
        var allMessages = null;
        $.ajax({
            async: false, //设置同步
            url: '/getMsgList',
            data: {'fromUser': currentUser, "toUser": toUser},
            type: 'POST',
            dataType: "json",
            contentType: "application/x-www-form-urlencoded",
            success: function (res) {
                allMessages =JSON.parse(JSON.stringify(res));
            }
        })

        return allMessages;
    }

    function openSendSysMsgWindow() {
        var chatWith = '<div style="width: 100%;height: 100%;overflow: hidden">' +
            '<div style="width: 100%;height: 35px">' +
            '<input id="sysMessageText" type="text" style="width: 87%;height: 100%"> <button class="layui-btn" onclick="sendSysMsg()">发送</button></div></div>';
        layer.open({
            type: 1,
            title: ['系统消息'],
            content: chatWith,
            area: ['600px', '100px'],
            shade: 0,
            id: '系统消息',
            resize: true,
            zIndex: layer.zIndex,
            success: function (layero) {
            }
        });
    }

    //发送系统消息
    function sendSysMsg() {
        var msg = $("#sysMessageText").val();
        var message = {
            msg: msg,
            type: 2
        }
        ws.send(JSON.stringify(message));
        $("#sysMessageText").val("");
    }

    // 获取系统消息
    function openSysMsg() {


        var chatWith = '<div style="width: 100%;height: 100%;overflow: hidden">'
            + '<div  class="triangle" > <ul id="sysmsglist"></ul>'
            + '</div></div>';
        layer.open({
            type: 1,
            title: ['系统消息', 'font-family:Microsoft YaHei;font-size: 24px;height: 80px;'],
            content: chatWith,
            area: ['600px', '600px'],
            maxmin: true,
            shade: 0,
            id: "系统消息",
            resize: true,
            zIndex: layer.zIndex,
            success: function (layero) {
            }
        });
        $.ajax({
            async: false, //设置同步
            url: 'getSysMsgList',
            type: 'GET',
            success: function (res) {
                if (res.obj) {
                    var msgList = res.obj;
                    msgList.forEach(function (e) {
                        var rightHtml = '<li class="textLeft"><img class="head-icon" src="resources/images/icon.jpg" alt=""><span>' + e.msg +
                            '</span></li>';
                        $('#sysmsglist').append(rightHtml);
                    })
                }
            }
        })
    }

    //监听输入框是否有消息
    function checkInput(){
        var text = $("#"+toUser+"messageText").val();
        if(text==null||text==""){
            $("#sendBtn").css({"background-color":"#969696"});
        }else{
            $("#sendBtn").css({"background-color":"#009688"});
        }
    }
    window.onload=function(){
       $(".layui-layer-close1").attr("href","javascript:history.back(-1)");
    }

</script>

</html>
