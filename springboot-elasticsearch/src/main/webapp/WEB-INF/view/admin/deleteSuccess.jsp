<%@ page language="java" contentType="text/html; charset=utf8"
         pageEncoding="utf8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf8">
    <title>管理员页面详情</title>
    <meta charset="utf-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="../../css/bootstrap.min.css" rel="stylesheet">

    <script src="../../js/jquery-1.9.1.js"></script>

    <script src="../../js/bootstrap.min.js"></script>

    <script type="text/javascript">
        function updateRecord(id) {
            document.getElementById("listRecord").action="/deliveryrecord/updateRecordJsp?deliverid="+ id;
            document.getElementById("listRecord").submit();
        }
    </script>

    <style>
        .table{
            width: 80%;
        }

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
    <!--logo部分-->
    <div class="container">
        <div class="row"  >
            <div class="col-lg-6 col-md-6 col-sm-6">
                <img src="../../img/logo2.jpg" width="160px" height="80px" />
            </div>
            <div align="right" class="col-lg-6 col-md-6 col-sm-6" style="padding-top: 25px;">
                <span style="font-size: 15px" class="glyphicon glyphicon-user"><span>${admin.account},你好！</span></span>
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
                            <a href="/position/hrGetPositions?companyId=${employer.companyId}" class="navbar-brand" />公司职位</a>
                        </li>
                        <li>
                            <a href="/position/addPositionJsp?companyId=${employer.companyId}" class="navbar-brand"/>增加职位</a>
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
    <b class="text-danger" style="font-size: 20px;font-family: 华文楷体">
        恭喜您,删除成功！
    </b>
    <br >
    <a href="<%=path%>/admin/login" rel="external nofollow" style="text-decoration: none;font-family: 华文楷体">返回</a>
</div>
</body>
</html>
