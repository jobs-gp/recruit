<%@ page language="java" contentType="text/html; charset=utf8"
         pageEncoding="utf8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

    <meta http-equiv="Content-Type" content="text/html; charset=utf8">

    <title>个人简历页面</title>

    <meta charset="utf-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="../../../css/bootstrap.min.css" rel="stylesheet">

    <script src="../../../js/jquery-1.9.1.js"></script>

    <script src="../../../js/bootstrap.min.js"></script>

    <script type="text/javascript">
        function updateResume(id) {
            document.getElementById("listResume").action="/resume/updatereJsp?resumeid="+ id;
            document.getElementById("listResume").submit();
        }
    </script>




</head>
<body>

<!--logo部分-->
<div class="container">
    <div class="row"  >
        <div class="col-lg-6 col-md-6 col-sm-6">
            <img src="../../../img/logo2.jpg" width="160px" height="80px" />
        </div>
        <div align="right" class="col-lg-6 col-md-6 col-sm-6" style="padding-top: 25px;">
            <%--<a href="#" class="btn btn-primary btn-large">登录</a>--%>
            <h5>${employ.account},你好！</h5>
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
                <a class="navbar-brand" href="/index.jsp">首页</a>
            </div>

            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li class="active">
                        <a href="/position/getPosition"/>职位浏览<span class="sr-only">(current)</span></a>
                    </li>
                    <li>
                        <a href="/resume/getResume?userid=${employ.userid}"/>我的简历</a>
                    </li>
                    <li>
                        <a href="/resume/addreJsp?userid=${employ.userid}"/>新增简历</a>
                    </li>
                    <li>
                        <a href="/employ/getEmployInfo"/>投递反馈</a>
                    </li>
                </ul>
                <form class="navbar-form navbar-right" role="search">
                    <div class="form-group">
                        <input type="text" class="form-control" size="35" placeholder="Search">
                    </div>
                    <button type="submit" class="btn btn-default">搜索</button>
                </form>
            </div>
        </div>
    </nav>
</div>

<div class="container">
<form id="listResume" method="post">

<table align="center" border="1" class="table table-striped table-bordered table-hover">

    <tr class="text-primary">
        <th>简历编号</th>
        <th>用户编号</th>
        <th>姓名</th>
        <th>生日</th>
        <th>性别</th>
        <th>所在城市</th>
        <th>电话号</th>
        <th>邮箱</th>
        <th>学校名称</th>
        <th>学历</th>
        <th>专业</th>
        <th>工作经验</th>
        <th>期望职位</th>
        <th>期望薪资</th>
        <th>期望工作地点</th>
        <th>个人描述</th>
        <th>修改简历</th>
        <th>删除简历</th>
    </tr>

    <c:forEach items="${resume}" var="resume">
        <tbody>
        <tr >
            <td>${resume.resumeid}</td>
            <td>${resume.userid}</td>
            <td>${resume.realname}</td>
            <td>${resume.birthdays}</td>
            <td>${resume.sex}</td>
            <td>${resume.city}</td>
            <td>${resume.phonenum}</td>
            <td>${resume.email}</td>
            <td>${resume.school}</td>
            <td>${resume.education}</td>
            <td>${resume.major}</td>
            <td>${resume.workexp}</td>
            <td>${resume.positions}</td>
            <td>${resume.exsalary}</td>
            <td>${resume.exaddress}</td>
            <td>${resume.perdscp}</td>
            <td><input type="button" value="修改" class="btn btn-primary " onclick="updateResume(${resume.resumeid});"/></td>
            <td><a href="/resume/deleteresume?id=${resume.resumeid}" class="btn btn-primary ">删除</a></td>
        </tr>
        </tbody>
    </c:forEach>

        <%--<a href="/resume/addreJsp?userid=${employ.userid}">新增简历</a>--%>

</table>
</form>
</div>
</body>
</html>
