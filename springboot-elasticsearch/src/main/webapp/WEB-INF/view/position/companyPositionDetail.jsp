<%@ page language="java" contentType="text/html; charset=utf8"
         pageEncoding="utf8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf8">
    <title>投递详情</title>
    <meta charset="utf-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="../../../css/bootstrap.min.css" rel="stylesheet">

    <script src="../../../js/jquery-1.9.1.js"></script>

    <script src="../../../js/bootstrap.min.js"></script>

    <script type="text/javascript">
        function updateRecord(id) {
            document.getElementById("listRecord").action="/deliveryrecord/updateRecordJsp?deliverid="+ id;
            document.getElementById("listRecord").submit();
        }
    </script>


</head>
<body>

<!--logo部分-->
<div class="container">
    <div class="row"  >
        <div class="col-lg-6 col-md-6 col-sm-6">
            <img src="../../../img/logo2.jpg" width="160px" height="80px" />
        </div>
        <div align="right" class="col-lg-6 col-md-6 col-sm-6" style="padding-top: 25px;">
            <h5>${employer.employerAccount},你好！</h5>
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
                        <a href="/position/hrGetPositions?companyId=${employer.companyId}" />公司职位</a>
                    </li>
                    <li>
                        <a href="/position/addPositionJsp?companyId=${employer.companyId}" >增加职位</a>
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


<div class="text-primary" align="center"><h3>职位详情</h3></div>
    <form id="listRecord" method="post">
        <div class="container" style="margin-top: 20px">
            <table class="table  table-striped table-bordered table-hover" align="center" valign="center" border="1">
                 <tr class="text-primary">
                    <th>职位编号</th>
                    <th>职位</th>
                    <th>职位类型</th>
                    <th>发布时间</th>
                    <th>职位数量</th>
                    <th>职位描述</th>
                    <th>职位要求</th>
                    <th>薪资</th>
                    <th>联系电话</th>
                    <th>工作地址</th>
                 </tr>
            <c:forEach items="${companyPosition}" var="p">
                 <tr>
                    <td>${p.positionid}</td>
                    <td>${p.positions}</td>
                    <td>${p.postype}</td>
                    <td>${p.posdate}</td>
                    <td>${p.posnum}</td>
                    <td>${p.posdes}</td>
                    <td>${p.posreq}</td>
                    <td>${p.possal}</td>
                    <td>${p.posphone}</td>
                    <td>${p.posloc}</td>
                 </tr>
            </c:forEach>
            </table>
        </div>
    </form>
</div>


<div class="text-primary" align="center"><h3>此职位的简历投递情况</h3></div>
    <div class="container">
    <table class="table  table-striped table-bordered table-hover" align="center" border="1" style="margin-top: 20px">
        <tr class="text-primary">
            <th>投递编号</th>
            <th>职位编号</th>
            <th>用户编号</th>
            <th>简历编号</th>
            <th>求职者姓名</th>
            <th>投递的职位</th>
            <th>拟用情况</th>
            <th>权限操作</th>
        </tr>
        <c:forEach items="${deliveryrecord}" var="c">
            <tr>
                <td>${c.deliverid}</td>
                <td>${c.positionid}</td>
                <td>${c.userid}</td>
                <td><a href="/resume/getEmployResume?resumeid=${c.resumeid}">${c.resumeid}</a></td>
                <td>${c.realname}</td>
                <td>${c.positions}</td>
                <td style="color: red">${c.acceptorrefuse}</td>
                <td><input class="btn btn-primary" type="button" value="修改" onclick="updateRecord(${c.deliverid});"/></td>
            </tr>
        </c:forEach>
    </div>
</table>
</form>
</body>
</html>
