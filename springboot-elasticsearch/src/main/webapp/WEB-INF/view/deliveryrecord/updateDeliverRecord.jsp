<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>简历审核</title>

    <meta charset="utf-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="../../../css/bootstrap.min.css" rel="stylesheet">

    <script src="../../../js/jquery-1.9.1.js"></script>

    <script src="../../../js/bootstrap.min.js"></script>
</head>
<body>

<!--logo部分-->
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
<div class="container">
    <form action="/deliveryrecord/updateDeliverRecord" method="post">

        <legend class="text-primary" style="font-size: 25px;width: 1140px" >简历审核</legend>

        <div style="font-size: 15px;" align="left" class="text-primary">投递编号：</div><input type="text" name="deliverid" style="width: 30%;" class="form-control" readonly="readonly" value="<%=request.getParameter("deliverid")%>"/><br>

        <div style="font-size: 15px;" align="left" class="text-primary" >此求职者：</div><input type="text" name="realname" style="width: 30%;" class="form-control" readonly="readonly" value="${deliver.realname}"/><br>

        <div style="font-size: 15px;" align="left" class="text-primary">拟用情况：</div><select name="acceptorrefuse" style="width: 30%;" class="form-control" value="${deliver.acceptorrefuse}"><option>--请选择--</option><option>通过</option><option>拒绝</option></select><br>

        <input class="btn btn-primary btn-lg" type="submit" value="确认修改"/>

    </form>
</div>
</body>
</html>
