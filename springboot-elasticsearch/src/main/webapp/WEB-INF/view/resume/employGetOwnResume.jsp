<%@ page language="java" contentType="text/html; charset=utf8"
         pageEncoding="utf8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

    <meta http-equiv="Content-Type" content="text/html; charset=utf8">

    <title>个人简历详情页面</title>

    <meta charset="utf-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="../../css/bootstrap.min.css" rel="stylesheet">

    <script src="../../js/jquery-1.9.1.js"></script>

    <script src="../../js/bootstrap.min.js"></script>

    <%--<style>--%>

        <%--body{--%>
            <%--background-color: #F4F6F9;--%>
        <%--}--%>


        <%--#bg{--%>
            <%--background-color: white;--%>
        <%--}--%>
    <%--</style>--%>


</head>
<body>
<%--<div class="container-fluid" id="bg">--%>
<!--logo部分-->
<div class="container">
    <div class="row"  >
        <div class="col-lg-6 col-md-6 col-sm-6">
            <img src="../../img/logo2.jpg" width="160px" height="80px" />
        </div>
        <div align="right" class="col-lg-6 col-md-6 col-sm-6" style="padding-top: 25px;">
            <%--<a href="#" class="btn btn-primary btn-large">登录</a>--%>
                <span style="font-size: 15px" class="glyphicon glyphicon-user"><span>${employ.account},你好！</span></span>
            <%--<h5>${employ.account},你好！</h5>--%>
        </div>
    </div>
</div>

<!--导航栏-->
<div class="container" style="margin-top: 10px;">
    <nav class="navbar navbar-inverse">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="/">首页</a>
            </div>

            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="/position/getPosition" class="navbar-brand"/>职位浏览</a>
                    </li>
                    <li>
                        <a href="/resume/getResume?userid=${employ.userid}" class="navbar-brand"/>我的简历</a>
                    </li>
                    <li>
                        <a href="/resume/addreJsp?userid=${employ.userid}" class="navbar-brand"/>新增简历</a>
                    </li>
                    <li>
                        <a href="/employ/getEmployInfo" class="navbar-brand"/>投递反馈</a>
                    </li>
                </ul>
                <form class="navbar-form navbar-right" id="sfrom" action="/position/searchPosition?position=" method="get" role="search">
                    <div class="form-group">
                        <input type="text" id="sformp" class="form-control" size="35" placeholder="职位查询"/>
                    </div>
                    <button type="button" class="btn btn-default" onclick="submitaaa();">搜索</button>
                    <script>
                        function submitaaa() {
                            location.href = '/position/searchPosition?position=' + $('#sformp').val();
                            return false;
                        };
                    </script>
                </form>
            </div>
        </div>
    </nav>
</div>
<%--</div>--%>

<div class="container">
    <div class="row">
        <div class="col-md-6" align="left">
            <div>
                <b style="font-size: 20px;font-family: 华文新魏" ><h2>${emp.realname}</h2></b>
                <span><b style="font-size: 18px;font-family: 华文楷体" >${emp.sex}</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <b style="font-size: 18px;font-family: 华文楷体" >${emp.city}</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <b style="font-size: 18px;font-family: 华文楷体"  >${emp.birthdays}</b></span><br><br>
                    <b style="font-size: 16px;font-family: 华文楷体" ><span class="glyphicon glyphicon-phone">${emp.phonenum}</span></b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <b style="font-size: 16px;font-family: 华文楷体" ><span class="glyphicon glyphicon-envelope">${emp.email}</span></b><br>
            </div>
            <div style="margin-top: 10px">
                <div><b style="font-size: 18px;font-family: 华文楷体" >${emp.school}</b>&nbsp;&nbsp;&nbsp;&nbsp;
                <span><b style="font-size: 18px;font-family: 华文楷体" >${emp.education}</b></span></div>
                <div><b style="font-size: 20px;font-family: 华文楷体;margin-top: 10px" >${emp.major}</b></div>
            </div>
            <div style="margin-top: 20px">
                <b style="font-size: 25px;font-family: 华文楷体" >求职意向：</b><br>
                <b style="font-size: 18px;font-family: 华文楷体" >期望职位：${emp.positions}</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span><b style="font-size: 18px;font-family: 华文楷体" >期望工作地点：${emp.exaddress}</b></span><br>
                <b style="font-size: 18px;font-family: 华文楷体" >期望薪资：${emp.exsalary}</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span><b style="font-size: 18px;font-family: 华文楷体" >求职状态：求职</b></span><br>
            </div>
            <div style="margin-top: 18px">
                <div><b style="font-size: 25px;font-family: 华文楷体" >工作经验：</b><br>
                <b style="font-size: 18px;font-family: 华文楷体" >${emp.workexp}</b>
                </div><br>
                <b style="font-size: 25px;font-family: 华文楷体" >个人描述：</b><br>
                <b style="font-size: 18px;font-family: 华文楷体" >${emp.perdscp}</b><br>
            </div>
        </div>
        <div class="col-md-6">
            <img src="../../img/ff.jpg" width="555px" height="450px">
        </div>
    </div>
</div>
<p>&nbsp;</p>
</body>
</html>
