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
    <title>求职者首页</title>
    <meta charset="utf-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="../../../css/bootstrap.min.css" rel="stylesheet">

    <script src="../../../js/jquery-1.9.1.js"></script>

    <script src="../../../js/bootstrap.min.js"></script>

    <style>
        #divtable{
            width: 500px;

        }


    </style>

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
        <div class="text-primary" align="center"><h3 class="page-header" style="margin-top: 10px">简历投递反馈情况</h3></div>
    </div>

    <div class="container">
    <div class="row">
        &nbsp;<div class="col-md-3" align="center">
            <a href="/position/getPosition" style="text-decoration: none" class="btn-primary btn-block btn-lg"><b style="text-align: center">职位浏览</b></a>
            <a href="/resume/getResume?userid=${employ.userid}" style="text-decoration: none" class="btn-primary btn-block btn-lg"><b style="text-align: center">我的简历</b></a>
            <a href="/resume/addreJsp?userid=${employ.userid}" style="text-decoration: none" class="btn-primary btn-block btn-lg"><b style="text-align: center">新增简历</b></a>
            <a href="/employ/getEmployInfo" style="text-decoration: none" class="btn-primary btn-block btn-lg"><b style="text-align: center">投递反馈</b></a>
        </div>

    <div class="col-md-9">
    <%--<div class="container" >--%>
    <table align="center" class="table table-hover table-striped table-bordered bootstrap-datatable datatable" border="1" id="divtable" style="margin-top: 10px">
    <thead>
    <tr class="success">
        <th>职位名称</th>
        <th>投递反馈</th>
    </tr>
    </thead>
    <c:forEach items="${deliverinfo}" var="c">
        <tbody>
        <tr>
            <td class="text-primary">${c.positions}</td>
            <td class="text-success" >${c.acceptorrefuse}</td>
        </tr>
        </tbody>
    </c:forEach>
    </table>

    </div>
    </div>
    </div>

<!--友情链接和版权信息-->
<div class="container" style="margin-top: 150px;">
    <div class="row">
        <div class="" align="center">
            <div style="margin-top: 15px;">
                <a href=""><b color="black">关于我们</b></a>
                <a href="#"><b color="black">联系我们</b></a>
                <a href="#"><b color="black">招贤纳士</b></a>
                <a href="#"><b color="black">法律声明</b></a>
                <a href="#"><b color="black">友情链接</b></a>
                <a href="#"><b color="black">服务声明</b></a>
                <a href="#"><b color="black">广告声明</b></a>
                <p style="margin-top: 10px; color: black" >
                    <b>
                    北京石油化工学院康庄校区 3086寝  吴逸新  联系电话：XXXX-XXXXXXX
                    </b>
                </p>
            </div>
        </div>
    </div>
</div>
</body>
</html>
