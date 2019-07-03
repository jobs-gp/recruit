<%@ page language="java" contentType="text/html; charset=utf8"
         pageEncoding="utf8"%>
<%String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>--%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
        <title>浏览职位详情</title>

        <meta http-equiv="Content-Type" content="text/html; charset=utf8">

        <meta charset="utf-8">

        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link href="../../../css/bootstrap.min.css" rel="stylesheet">

        <script src="../../../js/jquery-1.9.1.js"></script>

        <script src="../../../js/bootstrap.min.js"></script>
        <style>

                /*body{*/
                /*background-color: #F4F6F9;*/
                /*}*/


                #bg{
                        background-color: white;
                }
        </style>

</head>

<body>

<%--<div class="container-fluid" id="bg">--%>
<div class="container">
        <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6">
                        <img src="../../../img/logo2.jpg" width="160px" height="80px"/>
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
                                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                                        data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
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

<div class="container" >
        <%--<fieldset style="text-align: center">--%>
        <%--<legend  style="font-size: 25px;width: 1140px" >职位详情</legend>--%>
        <div class="container" >
                <div class="row" style="background-image: url(<%=basePath%>img/); width: 1100px"  >
                        <div class=" col-md-6 ">
                                <div align="left">
                                        <div style="font-size: 30px;font-family: 华文新魏">${perposition.positions}&nbsp;&nbsp;
                                                <b style="font-size: 20px;font-family: 华文楷体">${perposition.postype}</b><br>
                                        </div>
                                        <div style="font-size: 18px;font-family: 华文楷体">
                                                <strong>${perposition.possal}</strong>&nbsp;&nbsp;&nbsp;
                                                <b style="font-size: 18px;font-family: 华文楷体">${perposition.posloc}</b>&nbsp;&nbsp;&nbsp;
                                                <b>全职</b>
                                        </div>
                                        <div style="font-size: 18px;font-family: 宋体"><strong>${perposition.posdate}</strong></div>
                                        <br>
                                        <div>
                                            <span class="glyphicon glyphicon-phone-alt">
                                                <b style="font-size: 18px;font-family: 华文新魏"><strong>${perposition.posphone}</strong></b>&nbsp;
                                                <b style="font-size: 20px;font-family: 华文楷体">
                                                <strong>${perposition.posnum}</strong>
                                                </b>
                                            </span>
                                        </div>
                                        <br>

                                        <div style="font-size: 25px;font-family: 宋体"><b>职位诱惑：</b></div>
                                        <div style="font-family: 华文楷体;font-size: 20px">
                                                <strong>弹性工作,免费三餐,租房补贴,带薪休假.</strong></div><br>
                                        <div>
                                                <div style="font-size: 25px;font-family: 宋体"><strong>职位描述：</strong>
                                                </div>
                                                <b style="font-size: 18px;font-family: 华文楷体">${perposition.posdes}</b><br>
                                        </div>
                                        <br>
                                        <div>
                                                <div style="font-size: 25px;font-family: 宋体"><strong>职位要求：</strong>
                                                </div>
                                                <b style="font-size: 18px;font-family: 华文楷体">${perposition.posreq}</b><br>
                                        </div>
                                </div><br>

                                <div style="margin-bottom: 30px" align="center"><a href="/resume/getOneResume?userid=${employ.userid}&positionid=${perposition.positionid}&positions=${perposition.positions}" class="btn btn-default btn-block btn-lg" >去投简历</a></div>
                        </div>

                        <div class="col-md-6" style="right: -54px" >
                                <div  align="right">
                                        <%--<div style="background-image: url(/img/b3.jpg)"></div>--%>
                                        <%--<img src="/img/b3.jpg" width="80%" height="80%">--%>
                                        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                                                <!-- Indicators -->
                                                <ol class="carousel-indicators">
                                                        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                                                        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                                                        <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                                                </ol>

                                                <!-- Wrapper for slides -->
                                                <div class="carousel-inner" role="listbox">
                                                        <div class="item active">
                                                                <img src="/img/lb1.jpg" style="width: 550px" height="250px" alt="第一张">
                                                                <div class="carousel-caption">

                                                                </div>
                                                        </div>
                                                        <div class="item">
                                                                <img src="/img/lb2.jpg" style="width: 550px" height="250px" alt="第二张">
                                                                <div class="carousel-caption">

                                                                </div>
                                                        </div>
                                                        <div class="item">
                                                                <img src="/img/lb3.jpg" style="width: 550px" height="250px" alt="第二张">
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

                                        <br>
                                        <p> &nbsp;</p>
                                        <div style="margin-top: 30px">
                                                <blockquote class="blockquote-reverse" >
                                                        <p style="font-family: 华文楷体;font-size: 20px">生命，需要我们去努力。年轻时，我们要努力锻炼自己的能力，掌握知识.</p>
                                                        <footer> <cite title="Source Title">俞敏洪</cite></footer>
                                                </blockquote>
                                        </div>
                                </div>
                        </div>
                        <%--<br>--%>
                        <%--<p> &nbsp;</p>--%>
                        <%--<div style="margin-top: 30px">--%>
                        <%--<blockquote class="blockquote-reverse" >--%>
                        <%--<p style="font-family: 华文楷体;font-size: 20px">生命，需要我们去努力。年轻时，我们要努力锻炼自己的能力，掌握知识.</p>--%>
                        <%--<footer> <cite title="Source Title">俞敏洪</cite></footer>--%>
                        <%--</blockquote>--%>
                        <%--</div>--%>

                </div>
        </div>
        <%--</fieldset>--%>
</div>
</body>
</html>
<%--<h2 class="text-success">职位名称：${perposition.positions}</h2>--%>
<%--<h3 class="text-success">发布时间：${perposition.posdate}</h3>--%>
<%--<h3 class="text-success">职位类型：${perposition.postype}</h3>--%>
<%--<h3 class="text-success">职位数量：${perposition.posnum}</h3>--%>
<%--<h3 class="text-success">职位描述：${perposition.posdes}</h3>--%>
<%--<h3 class="text-success">职位要求：${perposition.posreq}</h3>--%>
<%--<h3 class="text-success">薪   资：${perposition.possal}</h3>--%>
<%--<h3 class="text-success">联系电话：${perposition.posphone}</h3>--%>
<%--<h3 class="text-success">工作地点：${perposition.posloc}</h3>--%>