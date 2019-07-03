<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <title>创建简历</title>

    <meta http-equiv="Content-Type" content="text/html; charset=utf8">

    <meta charset="utf-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="../../css/bootstrap.min.css" rel="stylesheet">

    <script src="../../js/jquery-1.9.1.js"></script>

    <script src="../../js/bootstrap.min.js"></script>
    <style>

        body{
            background-color: #F4F6F9;
        }


        #bg{
            background-color: white;
        }
    </style>

</head>
<body>
<div class="container-fluid" id="bg">
    <div class="container">
        <div class="row"  >
            <div class="col-lg-6 col-md-6 col-sm-6">
                <img src="../../img/logo2.jpg" width="160px" height="80px" />
            </div>
            <div align="right" class="col-lg-6 col-md-6 col-sm-6" style="padding-top: 25px;">
                <span style="font-size: 15px" class="glyphicon glyphicon-user"><span>${admin.account},你好！</span></span>
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
                        <%--<li>--%>
                        <%--<a href="/position/getPosition" class="navbar-brand"/>职位浏览<span class="sr-only">(current)</span></a>--%>
                        <%--</li>--%>
                        <%--<li>--%>
                        <%--<a href="/employ/getEmployInfo" class="navbar-brand"/>投递反馈</a>--%>
                        <%--</li>--%>
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
</div>

<div class="container">
    <form action="/company/addCompany" method="post">
        <fieldset style="text-align: left">
            <legend  style="font-size: 25px;" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>新增公司</strong></legend>

            <div class="container"  align="center">
                <div class="row" style="background-image: url(<%=basePath%>img/); width: 1100px"  >
                    <div class=" col-md-12 ">
                        <%--<div align="center"><p class="bg-info" style="width: 60%;font-size: 20px;margin-top: 10px" align="center">公司信息</p></div>--%>
                        <div style="font-size: 15px;" align="left" class="text-primary">公司名称:</div> <div align="left"><input type="text" class="form-control" style="width: 60%;"  name="companyName" /></div><br>
                        <div style="font-size: 15px;" align="left" class="text-primary" >公司描述:</div> <div align="left"><input type="text" class="form-control" style="width: 60%;" name="companyDscp"  value="" /></div><br>
                        <div style="font-size: 15px;" align="left" class="text-primary">公司地址:</div> <div align="left"><input type="text" class="form-control" style="width: 60%;" name="address"  value="" /></div><br>
                        <div style="font-size: 15px;" align="left" class="text-primary">公司电话:</div> <div align="left"><input type="text" class="form-control" style="width: 60%;" name="tel"  value="" /></div><br>
                        <div style="font-size: 15px;" align="left" class="text-primary">公司邮箱:</div> <div align="left"><input type="text" class="form-control" style="width: 60%;" name="email"  value="" /></div><br>
                        <div style="font-size: 15px;" align="left" class="text-primary">公司编号:</div> <div align="left"><input type="text" class="form-control" style="width: 60%;" name="companyId"  value="" /></div><br>
                        <div align="left" style="margin-top: 20px"><input type="submit" value="确认新增"  class="btn btn-primary btn-lg "></div>
                    </div>
                </div>

                <%--用户编号：<input type="text" name="userid" readonly="readonly" value="<%=request.getParameter("userid")%>"/><br>--%>

                <%--姓名：<input type="text"   name="realname"><br>--%>

                <%--生日：<input type="date"  name="birthdays"><br>--%>

                <%--性别：<input type="text" name="sex"><br>--%>

                <%--所在城市：<input type="text" name="city"><br>--%>

                <%--手机号：<input type="text" name="phonenum"><br>--%>

                <%--邮箱：<input type="text" name="email"><br>--%>

                <%--学校名称：<input type="text" name="school"><br>--%>

                <%--学历：<input type="text" name="education"><br>--%>

                <%--专业：<input type="text" name="major"><br>--%>

                <%--工作经验：<input type="text" name="workexp"><br>--%>

                <%--期望职位：<input type="text" name="positions"><br>--%>

                <%--期望薪资：<input type="text" name="exsalary"><br>--%>

                <%--期望工作地点：<input type="text" name="exaddress"><br>--%>

                <%--个人描述：<input type="text" name="perdscp"><br>--%>

                <%--<input type="submit" value="确认增加" class="btn btn-primary">--%>

        </fieldset>
    </form>
</div>
</body>
</html>
