<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <title>修改简历</title>

    <meta http-equiv="Content-Type" content="text/html; charset=utf8">

    <meta charset="utf-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="../../../css/bootstrap.min.css" rel="stylesheet">

    <script src="../../../js/jquery-1.9.1.js"></script>

    <script src="../../../js/bootstrap.min.js"></script>

    <script type="text/javascript">
        function updateResume(id) {
            document.getElementById("listResume").action = "/resume/updateResumes?resumeid="+ id;
            document.getElementById("listResume").submit();
        }

    </script>



</head>
<body>

<div class="container">
    <div class="row"  >
        <div class="col-lg-6 col-md-6 col-sm-6">
            <img src="../../../img/logo2.jpg" width="160px" height="80px" />
        </div>
        <div align="right" class="col-lg-6 col-md-6 col-sm-6" style="padding-top: 25px;">
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
<form action="/resume/updateResumes" method="post">
    <fieldset style="text-align: center">
        <legend class="text-primary" style="font-size: 25px;width: 1140px" >修改个人简历</legend>

        <div class="container"  align="center">
            <div class="row" style="background-image: url(<%=basePath%>img/); width: 1100px"  >
                <div class=" col-md-6 ">
                    <div align="left"><p class="bg-info" style="width: 60%;font-size: 20px;margin-top: 10px" align="center">基本信息</p></div>
                    <div style="color: #46B8DA; font-size: 15px;" align="left" >简历编号:</div> <div align="left"><input type="text" class="form-control" style="width: 60%;"  name="resumeid" readonly="readonly" value="<%=request.getParameter("resumeid")%>"/></div><br>
                    <div style="color: #46B8DA; font-size: 15px;" align="left" >修改姓名:</div> <div align="left"><input type="text" class="form-control" style="width: 60%;" name="realname"  value="${resume.realname}" /></div><br>
                    <div style="color: #46B8DA; font-size: 15px;" align="left" >修改生日:</div> <div align="left"><input type="date" class="form-control" style="width: 60%;" name="birthdays"  value="${resume.birthdays}" /></div><br>
                    <div style="color: #46B8DA; font-size: 15px;" align="left" >修改性别:</div> <div align="left"><input type="text" class="form-control" style="width: 60%;" name="sex"  value="${resume.sex}" /></div><br>
                    <div style="color: #46B8DA; font-size: 15px;" align="left" >修改所在城市:</div> <div align="left"><input type="text" class="form-control" style="width: 60%;" name="city"  value="${resume.city}" /></div><br>
                    <div style="color: #46B8DA; font-size: 15px;" align="left" >修改手机号:</div> <div align="left"><input type="text" class="form-control" style="width: 60%;" name="phonenum"  value="${resume.phonenum}" /></div><br>
                    <div style="color: #46B8DA; font-size: 15px;" align="left" >修改邮箱:</div> <div align="left"><input type="text" class="form-control" style="width: 60%;" name="email"  value="${resume.email}" /></div><br>
                    <%--<div style="color: #46B8DA; font-size: 15px;" align="left" >个人描述:</div> <div align="left"><input type="text" class="form-control" style="width: 60%;" name="perdscp"  value="" /></div><br>--%>
                    <div style="color: #46B8DA; font-size: 15px;" align="left" >修改个人描述:</div><div align="left"><textarea name="perdscp"  class="form-control" style="width: 60%;" > </textarea></div><br>
                </div>

                <div class=" col-md-6 ">
                    <div align="left"><p class="bg-info" style="width: 60%;font-size: 20px;margin-top: 10px" align="center">个人意向</p></div>
                    <div style="color: #46B8DA; font-size: 15px;" align="left" >修改学校名称:</div> <div align="left"><input type="text" class="form-control" style="width: 60%;" name="school"  value="${resume.school}" /></div><br>
                    <div style="color: #46B8DA; font-size: 15px;" align="left" >修改学历:</div> <div align="left"><input type="text" class="form-control" style="width: 60%;" name="education"  value="${resume.education}" /></div><br>
                    <div style="color: #46B8DA; font-size: 15px;" align="left" >修改专业:</div> <div align="left"><input type="text" class="form-control" style="width: 60%;" name="major"  value="${resume.major}" /></div><br>
                    <div style="color: #46B8DA; font-size: 15px;" align="left" >修改工作经验:</div> <div align="left"><input type="text" class="form-control" style="width: 60%;" name="workexp"  value="${resume.workexp}" /></div><br>
                    <div style="color: #46B8DA; font-size: 15px;" align="left" >修改期望职位:</div> <div align="left"><input type="text" class="form-control" style="width: 60%;" name="positions"  value="${resume.positions}" /></div><br>
                    <div style="color: #46B8DA; font-size: 15px;" align="left" >修改期望薪资:</div> <div align="left"><input type="text" class="form-control" style="width: 60%;" name="exsalary"  value="${resume.exsalary}" /></div><br>
                    <div style="color: #46B8DA; font-size: 15px;" align="left" >修改期望工作地点:</div> <div align="left"><input type="text" class="form-control" style="width: 60%;" name="exaddress"  value="${resume.exaddress}" /></div><br>
                    <div align="left" style="margin-top: 20px"><input type="submit" value="确认修改"  class="btn btn-info btn-lg "></div>
                </div>
            </div>
        </div>



        <%--简历ID：<input type="text" name="resumeid" readonly="readonly" value="<%=request.getParameter("resumeid")%>"/><br>--%>

        <%--修改姓名：<input type="text" name="realname" value="${resume.realname}"/><br>--%>

        <%--修改生日：<input type="date" name="birthdays" value="${resume.birthdays}"/><br>--%>

        <%--修改性别：<input type="text" name="sex" value="${resume.sex}"/><br>--%>

        <%--修改所在城市：<input type="text" name="city" value="${resume.city}"/><br>--%>

        <%--修改电话号：<input type="text" name="phonenum" value="${resume.phonenum}"/><br>--%>

        <%--修改邮箱：<input type="text" name="email" value="${resume.email}"/><br>--%>

        <%--修改学校：<input type="text" name="school" value="${resume.school}"/><br>--%>

        <%--修改学历：<input type="text" name="education" value="${resume.education}"/><br>--%>

        <%--修改专业：<input type="text" name="major" value="${resume.major}"/><br>--%>

        <%--修改工作经验：<input type="text" name="workexp" value="${resume.workexp}"/><br>--%>

        <%--修改期望职位：<input type="text" name="positions" value="${resume.positions}"/><br>--%>

        <%--修改期望薪资：<input type="text" name="exsalary" value="${resume.exsalary}"/><br>--%>

        <%--修改期望工作地址：<input type="text" name="exaddress" value="${resume.exaddress}"/><br>--%>

        <%--修改个人描述：<input type="text" name="perdscp" value="${resume.perdscp}"/><br>--%>

        <%--<input type="submit" value="修改" class="btn btn-primary"/>--%>
    </fieldset>
</form>
</div>
</body>
</html>
