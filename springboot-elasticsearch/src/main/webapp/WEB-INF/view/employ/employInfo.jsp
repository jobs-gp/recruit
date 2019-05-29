<%@ page language="java" contentType="text/html; charset=utf8"
         pageEncoding="utf8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf8">
    <title>求职者个人中心</title>
    <meta charset="utf-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="../../css/bootstrap.min.css" rel="stylesheet">

    <script src="../../js/jquery-1.9.1.js"></script>

    <script src="../../js/bootstrap.min.js"></script>

    <style>

        /*body{*/
            /*background-color: #F4F6F9;*/
        /*}*/
        #divtable{
            width: 720px;

        }
        #bg{
            background-color: white;
        }

    </style>

</head>
<body>
<div class="container-fluid" id="bg">
<!--logo部分-->
<div class="container">
    <div class="row"  >
        <div class="col-lg-6 col-md-6 col-sm-6">
            <img src="../../img/logo2.jpg" width="160px" height="80px" />
        </div>
        <div align="right" class="col-lg-6 col-md-6 col-sm-6" style="padding-top: 25px;">
            <%--<a href="#" class="btn btn-primary btn-large">登录</a>--%>
                <span style="font-size: 15px" class="glyphicon glyphicon-user"><span>${employ.account},你好！</span></span>
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
</div>
    <div class="container">
        <div class="text-primary" align="center"><h3 class="page-header" style="margin-top: 20px">求职者个人中心</h3></div>
    </div>

    <div class="container">
    <div class="row">
        &nbsp;<div class="col-md-2" style="margin-top: 10px" >
        <div align="center"><a href="/position/getPosition" style="text-decoration: none" class="btn btn-primary"><b style="text-align: center">职位浏览</b></a></div>
        <div align="center"><a href="/resume/getResume?userid=${employ.userid}" style="text-decoration: none" class="btn btn-primary "><b style="text-align: center">我的简历</b></a></div>
        <div align="center"><a href="/resume/addreJsp?userid=${employ.userid}" style="text-decoration: none" class="btn btn-primary "><b style="text-align: center">新增简历</b></a></div>
        <div align="center"><a href="/employ/getEmployInfo" style="text-decoration: none" class="btn btn-primary "><b style="text-align: center">投递反馈</b></a></div>
        </div>

    <div class="col-md-10">
    <%--<div class="container" >--%>
    <table align="center" class="table table-hover table-striped table-bordered " border="1" id="divtable" style="margin-top: 10px">
    <thead>
    <tr class="text-primary">
        <th>已投递职位名称</th>
        <th>投递反馈情况</th>
    </tr>
    </thead>
    <c:forEach items="${deliverinfo}" var="c">
        <tbody>
        <tr>
            <td >${c.positions}</td>
            <td class="text-success" >${c.acceptorrefuse}</td>
        </tr>
        </tbody>
    </c:forEach>
    </table>

    </div>
    </div>
    </div>


</body>
</html>
