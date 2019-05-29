<%@ page language="java" contentType="text/html; charset=utf8"
         pageEncoding="utf8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf8">
    <title>求职者简历</title>

    <meta charset="utf-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="../../../css/bootstrap.min.css" rel="stylesheet">

    <script src="../../../js/jquery-1.9.1.js"></script>

    <script src="../../../js/bootstrap.min.js"></script>

</head>
<body>

<!--logo部分-->
<div class="container">
    <div class="row"  >
        <div class="col-lg-6 col-md-6 col-sm-6">
            <img src="../../../img/logo2.jpg" width="160px" height="80px" />
        </div>
        <div align="right" class="col-lg-6 col-md-6 col-sm-6" style="padding-top: 25px;">
            <h5>${employer.employerAccount},你好！</h5>
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
                        <a href="#">XX</a>
                    </li>
                    <li>
                        <a href="#">XX</a>
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

<div class="text-primary" align="center"><h3>求职者简历</h3></div>
    <div class="container" style="margin-top: 20px">
        <table class="table  table-striped table-bordered table-hover" align="center"  border="1">
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
            </tr>
        <c:forEach items="${employresume}" var="e">
            <tr>
                <td>${e.resumeid}</td>
                <td>${e.userid}</td>
                <td>${e.realname}</td>
                <td>${e.birthdays}</td>
                <td>${e.sex}</td>
                <td>${e.city}</td>
                <td>${e.phonenum}</td>
                <td>${e.email}</td>
                <td>${e.school}</td>
                <td>${e.education}</td>
                <td>${e.major}</td>
                <td>${e.workexp}</td>
                <td>${e.positions}</td>
                <td>${e.exsalary}</td>
                <td>${e.exaddress}</td>
                <td>${e.perdscp}</td>
            </tr>
        </c:forEach>
        </table>
    </div>
</body>
</html>
