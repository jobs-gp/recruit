<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf8">
    <title>企业人员修改职位</title>
    <meta charset="utf-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="../../../css/bootstrap.min.css" rel="stylesheet">

    <script src="../../../js/jquery-1.9.1.js"></script>

    <script src="../../../js/bootstrap.min.js"></script>


    <script type="text/javascript">
        function updatePosition(id) {
            document.getElementById("listPosition").action="/position/updatepositionJsp?positionid="+ id;
            document.getElementById("listPosition").submit();
        }
    </script>
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
                <img src="../../../img/logo2.jpg" width="160px" height="80px" />
            </div>
            <div align="right" class="col-lg-6 col-md-6 col-sm-6" style="padding-top: 25px;">
                <span style="font-size: 15px" class="glyphicon glyphicon-user"><span>${employer.employerAccount},你好！</span></span>
                <%--<h5>${employer.employerAccount},你好！</h5>--%>
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
                            <a href="/position/hrGetPositions?companyId=${employer.companyId}" class="navbar-brand"/>公司职位</a>
                        </li>
                        <li>
                            <a href="/position/addPositionJsp?companyId=${employer.companyId}" class="navbar-brand" />增加职位</a>
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
</div>


<div class="container">
    <form action="/position//updatePosition" method="post">
        <fieldset style="text-align: center">
            <%--<legend class="text-primary" style="font-size: 25px;width: 1140px" >职位修改</legend>--%>

            <div class="container"  align="center">
                <div class="row" style="background-image: url(<%=basePath%>img/); width: 1100px"  >
                    <div class=" col-md-6 ">
                        <%--<div align="left"><p class="bg-info" style="width: 60%;font-size: 20px;margin-top: 10px" align="center">基本信息</p></div>--%>
                        <div style="color: #46B8DA; font-size: 15px;" align="left" >职位编号:</div> <div align="left"><input type="text" class="form-control" style="width: 60%;"  name="positionid" readonly="readonly" value="${position.positionid}"/></div><br>
                        <div style="color: #46B8DA; font-size: 15px;" align="left" >职位名称:</div> <div align="left"><input type="text" class="form-control" style="width: 60%;" name="positions"  value="${position.positions}" /></div><br>
                        <div style="color: #46B8DA; font-size: 15px;" align="left" >职位类型:</div> <div align="left"><input type="text" class="form-control" style="width: 60%;" name="postype"  value="${position.postype}" /></div><br>
                        <div style="color: #46B8DA; font-size: 15px;" align="left" >发布时间:</div> <div align="left"><input type="date" class="form-control" style="width: 60%;" name="posdate"  value="${position.posdate}" /></div><br>
                        <div style="color: #46B8DA; font-size: 15px;" align="left" >职位描述:</div><div align="left"><textarea name="posdes" class="form-control" style="width: 60%;" > </textarea></div><br>
                        <div align="left" style="margin-top: 20px"><input type="submit" value="确认修改"  class="btn btn-info btn-lg "></div>
                    </div>

                    <div class=" col-md-6 ">
                        <%--<div align="left"><p class="bg-info" style="width: 60%;font-size: 20px;margin-top: 10px" align="center">个人意向</p></div>--%>
                        <div style="color: #46B8DA; font-size: 15px;" align="left" >职位数量:</div> <div align="left"><input type="text" class="form-control" style="width: 60%;" name="posnum"  value="${position.posnum}" /></div><br>
                        <div style="color: #46B8DA; font-size: 15px;" align="left" >职位薪资:</div> <div align="left"><input type="text" class="form-control" style="width: 60%;" name="possal"  value="${position.possal}" /></div><br>
                        <div style="color: #46B8DA; font-size: 15px;" align="left" >联系电话:</div> <div align="left"><input type="text" class="form-control" style="width: 60%;" name="posphone"  value="${position.posphone}" /></div><br>
                        <div style="color: #46B8DA; font-size: 15px;" align="left" >工作地点:</div> <div align="left"><input type="text" class="form-control" style="width: 60%;" name="posloc"  value="${position.posloc}" /></div><br>
                        <div style="color: #46B8DA; font-size: 15px;" align="left" >职位要求:</div><div align="left"><textarea name="posreq" class="form-control" style="width: 60%;" > </textarea></div><br>
                    </div>

                </div>
            </div>



            <%--职位编号：<input type="text" name="positionid" readonly="readonly" value="${position.positionid}"/><br>--%>

            <%--职位名称：<input type="text" name="positions" value="${position.positions}"/><br>--%>

            <%--职位类型：<input type="text" name="postype" value="${position.postype}"/><br>--%>

            <%--发布时间：<input type="date" name="posdate" value="${position.posdate}"/><br>--%>

            <%--职位数量：<input type="text" name="posnum" value="${position.posnum}"/><br>--%>

            <%--职位描述：<input type="text" name="posdes" value="${position.posdes}"/><br>--%>

            <%--职位要求：<input type="text" name="posreq" value="${position.posreq}"/><br>--%>

            <%--薪 &nbsp;&nbsp;&nbsp; 资：&nbsp; <input type="text" name="possal" value="${position.possal}"/><br>--%>

            <%--联系电话：<input type="text" name="posphone" value="${position.posphone}"/><br>--%>

            <%--工作地点：<input type="text" name="posloc" value="${position.posloc}"/><br>--%>
            <%--<p></p>--%>
            <%--<input type="submit" value="确认修改" class=" btn-primary"/>--%>
        </fieldset>
    </form>
</div>
</body>
</html>