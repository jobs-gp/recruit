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
    <style>

        body{
            background-color: #F6F6F8;
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
        <div style="background-image: image(black)">
            <div class="row" style="background-image: image(black)" >
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <img src="img/logo2.jpg"  width=160px" height="80px" />
                </div>
                <div align="right" class="col-lg-6 col-md-6 col-sm-6" style="padding-top: 35px;">
                    <a href="/register/addEmployJsp" style="text-decoration: none;color: black;font-size: 15px">求职者注册</a>
                    <a href="/register/addEmployerJsp" style="text-decoration: none;color: black;font-size: 15px">企业注册</a>
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
                            <a href="/employ/employLoginJsp" class="navbar-brand">求职者登录</a>
                        </li>
                        <li>
                            <a href="/company/hrLoginJsp" class="navbar-brand">企业登录</a>
                        </li>
                        <li>
                            <a href="/admin/adminJsp" class="navbar-brand">管理员登录</a>
                        </li>
                    </ul>
                    <%--<form class="navbar-form navbar-right" role="search">--%>
                    <%--<div class="form-group">--%>
                    <%--<input type="text" class="form-control" size="35" placeholder="Search">--%>
                    <%--</div>--%>
                    <%--<button type="submit" class="btn btn-default">搜索</button>--%>
                    <%--</form>--%>
                </div>
            </div>
        </nav>
    </div>
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
                <img src="img/1.jpg" alt="...">
                <div class="carousel-caption">
                </div>
            </div>
            <div class="item">
                <img src="img/2.jpg" alt="...">
                <div class="carousel-caption">
                </div>
            </div>
            <div class="item">
                <img src="img/3.jpg" alt="...">
                <div class="carousel-caption">
                </div>
            </div>
            <div class="item">
                <img src="img/4.jpg" alt="...">
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
<p>

</p>


<section class="about-wthree py-3">
    <div class="container  py-sm-5">
        <%--<div class="title-sec-w3layouts_pvt text-center">--%>
        <%--<span class="title-wthree">a world full of possibilities</span>--%>
        <%--<h4 class="w3layouts_pvt-head">allowing you to expand quickly.</h4>--%>
        <%--</div>--%>
        <div class="row head-row-home">
            <div class="col-md-4 my-4 home-grid">
                <span class="head-line"></span>
                <span class="fa fa-info-circle" aria-hidden="true"></span>
                <h4 class="home-title my-3"><strong>优质</strong></h4>
                <p> 200+ 本站自营猎头
                    本站独有高端人才库
                    人工筛选优质人才.</p>

            </div>
            <div class="col-md-4 my-4 home-grid">
                <span class="head-line"></span>
                <span class="fa fa-connectdevelop" aria-hidden="true"></span>
                <h4 class="home-title my-3"><strong>有实力</strong></h4>
                <p> 3次总理接见,4年完成5轮融资
                    已进入IPO筹备阶段.</p>

            </div>
            <div class="col-md-4 my-4 home-grid">
                <span class="fa fa-users" aria-hidden="true"></span>
                <h4 class="home-title my-3"><strong>有效</strong></h4>
                <p> BAT、TMD互联网人才招聘NO.1渠道
                    百度、今日头条产研职位在本站发布
                    B轮以上公司，60%互联网人才来自本站.</p>

            </div>
        </div>
    </div>
</section>
<p></p>
<div class="container">
    <div class="row" align="center">
        <div class="col-md-3">
            <img src="img/a1.jpg" width="261px" height="200px">
        </div>
        <div class="col-md-3">
            <img src="img/a2.jpg" width="261px" height="200px">
        </div>
        <div class="col-md-3">
            <img src="img/a3.jpg" width="261px" height="200px">
        </div>
        <div class="col-md-3">
            <img src="img/a5.jpg" width="261px" height="200px">
        </div>
    </div>
</div><br>


<div class="container">
    <div class="footer-top-w3ls">
        <p class="text-white" style="font-size: 16px">本站是一家专为拥有3至10年工作经验的资深互联网从业者，提供工作机会的招聘网站。本站专注于在为求职者提供更人性化、专业化服务的同时，降低企业端寻觅良才的时间和成本。本站致力于帮助互联网人士做出更好的职业选择，让求职者每一次职业选择变的更加明智。 </p>
    </div>
</div>
<!--友情链接和版权信息-->
<div class="container" style="margin-top: 15px;">
    <div class="row">
        <div class="" align="center">
            <div style="margin-top: 15px; font-size: 15px">
                <a href="#"><span style="color: black">关于我们</span></a>
                <a href="#"><span style="color: black">联系我们</span></a>
                <a href="#"><span style="color: black">招贤纳士</span></a>
                <a href="#"><span style="color: black">法律声明</span></a>
                <a href="#"><span style="color: black">友情链接</span></a>
                <a href="#"><span style="color: black">服务声明</span></a>
                <a href="#"><span style="color: black">广告声明</span></a>
                <p style="margin-top: 12px; color: black" >
                    <b style="font-size: 15px">
                        北京石油化工学院康庄校区 3086寝  吴少轩  联系电话：XXXX-XXXXXXX
                    </b>
                </p>
            </div>
        </div>
    </div>
</div>




</body>
</html>
