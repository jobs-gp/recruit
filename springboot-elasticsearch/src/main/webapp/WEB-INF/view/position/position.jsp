<%@ page language="java" contentType="text/html; charset=utf8"
         pageEncoding="utf8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf8">
    <title>求职者浏览职位</title>
    <meta charset="utf-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="../../../css/bootstrap.min.css" rel="stylesheet">

    <script src="../../../js/jquery-1.9.1.js"></script>

    <script src="../../../js/bootstrap.min.js"></script>

</head>
<body>

<div class="container">
    <div class="row"  >
        <div class="col-lg-6 col-md-6 col-sm-6">
            <img src="../../../img/logo2.jpg" width="160px" height="80px" />
        </div>
        <div align="right" class="col-lg-6 col-md-6 col-sm-6" style="padding-top: 25px;">
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

<div class="container">
    <table class=" table table-striped table-bordered table-hover">
        <tr class="text-primary">
            <th>职位编号</th>
            <th>职位名称</th>
            <th>职位详情</th>
        </tr>
        <c:forEach items="${positions}" var="p">
            <tr>
                <td>${p.positionid}</td>
                <td>${p.positions}</td>
                <td><a href="/position/getPersonPosition?positionid=${p.positionid}" class="btn btn-primary "/>职位详情</td>
            </tr>
        </c:forEach>
    </table>
</div>

</body>
</html>
