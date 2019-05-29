<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
      String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <meta charset="utf-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>招聘系统首页</title>

    <%--<link href="css/bootstrap.css" rel="stylesheet">--%>

    <%--<link rel="stylesheet" href="../libs/bootstrap-3.3.7/css/bootstrap.css">--%>

    <%--<link rel="stylesheet" href="css/bootstrap-3.3.7/css/bootstrap.css">--%>

    <link href="../css/bootstrap.min.css" rel="stylesheet">

    <script src="../js/jquery-1.9.1.js"></script>

    <script src="../js/bootstrap.min.js"></script>

    <%--<style>--%>

    <%--body{--%>
        <%--background-image: url("img/header_bg.jpg");--%>
    <%--}--%>
<%--</style>--%>
</head>

<body>


<!--logo部分-->
<div class="container">
    <div style="background-image: image(black)">
    <div class="row" style="background-image: image(black)" >
        <div class="col-lg-6 col-md-6 col-sm-6">
            <img src="../img/logo2.jpg"  width=160px" height="80px" />
        </div>
        <div align="right" class="col-lg-6 col-md-6 col-sm-6" style="padding-top: 35px;">
            <a href="/register/addEmployJsp" style="text-decoration: none;color: black;font-size: 16px">求职者注册</a>
            <a href="/register/addEmployerJsp" style="text-decoration: none;color: black;font-size: 16px">企业注册</a>
        </div>
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
                <a class="navbar-brand" href="#">首页</a>
            </div>

            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="/employ/employLoginJsp">求职者登录</a>
                    </li>
                    <li>
                        <a href="/company/hrLoginJsp">企业登录</a>
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

<!--轮播图-->
<div class="container">
    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
            <li data-target="#carousel-example-generic" data-slide-to="2"></li>
            <li data-target="#carousel-example-generic" data-slide-to="3"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner" role="listbox">
            <div class="item active">
                <img src="../img/1.jpg" alt="...">
                <div class="carousel-caption">
                </div>
            </div>
            <div class="item">
                <img src="../img/2.jpg" alt="...">
                <div class="carousel-caption">
                </div>
            </div>
            <div class="item">
                <img src="../img/3.jpg" alt="...">
                <div class="carousel-caption">
                </div>
            </div>
            <div class="item">
                <img src="../img/4.jpg" alt="...">
                <div class="carousel-caption">
                </div>
            </div>
        </div>

        <!-- Controls -->
        <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>

    </div>
</div>

<!--友情链接和版权信息-->
<div class="container" style="margin-top: 15px;">
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
