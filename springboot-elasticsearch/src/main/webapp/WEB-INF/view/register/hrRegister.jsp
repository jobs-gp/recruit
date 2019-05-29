<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <title>企业注册</title>

    <meta http-equiv="Content-Type" content="text/html; charset=utf8">

    <meta charset="utf-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="../../../css/bootstrap.min.css" rel="stylesheet">


    <script src="../../../js/bootstrap.min.js"></script>

    <style>
        .bg{
            background-image: url("<%=basePath%>img/regist_bg.jpg");
            ;
        }
        #contanier{
            border: 0px solid white;
            width: 1300px;
            margin: auto;
        }

        #top{
            border: 0px solid white;
            width: 100%;
            height: 50px;
        }
        #menu{
            border: 0px solid white;
            height: 40px;
            background-color: black;
            padding-top: 10px;
            margin-bottom: 15px;
            margin-top: 10px;
        }
        .top{
            border: 0px solid white;
            width: 405px;
            height: 100%;
            float: left;
            padding-left: 25px;
        }
        #top1{
            padding-top: 15px;
        }
        #bottom{
            margin-top: 13px;
            text-align: center;
        }

        #form{
            height: 500px;
            padding-top: 70px;
            background-image: url("<%=basePath%>img/services.gif");
            margin-bottom: 10px;
        }
        a{
            text-decoration: none;
        }

        label.error{
            background:url("<%=basePath%>img/unchecked.gif") no-repeat 10px 3px;
            padding-left: 30px;
            font-family:georgia;
            font-size: 15px;
            font-style: normal;
            color: red;
        }

        label.success{
            background:url("<%=basePath%>img/unchecked.gif") no-repeat 10px 3px;
            padding-left: 30px;
        }

        #father{
            border: 0px solid white;
            padding-left: 307px;
        }

        #form2{
            border: 5px solid gray;
            width: 660px;
            height: 450px;
        }
    </style>

    <script src="../../../js/jquery-1.9.1.js"></script>

    <script type="text/javascript" src="../../../js/jquery.validate.min.js"></script>
    <!--引入国际化js文件-->
    <script type="text/javascript" src="../../../js/messages_zh.js"></script>

    <script>
        $(function(){
            $("#registForm").validate({
                rules:{
                    employerAccount:{
                        required:true,
                        minlength:3
                    },
                    employerPwd:{
                        required:true,
                        digits:true,
                        minlength:6
                    },
                    // repassword:{
                    //     required:true,
                    //     equalTo:"[name='password']"
                    // },
                    employerEmail:{
                        required:true,
                        email:true
                    },
                    employerName:{
                        required:true,
                        maxlength:5
                    },
                    // sex:{
                    //     required:true
                    // }
                },
                messages:{
                    employerAccount:{
                        required:"用户名不能为空!",
                        minlength:"用户名不得少于3位!"
                    },
                    employerPwd:{
                        required:"密码不能为空!",
                        digits:"密码必须是整数!",
                        minlength:"密码不得少于6位!"
                    },
                    // repassword:{
                    //     required:"确认密码不能为空!",
                    //     equalTo:"两次输入密码不一致!"
                    // },
                    employerEmail:{
                        required:"邮箱不能为空!",
                        email:"邮箱格式不正确!"
                    },
                    employerName:{
                        required:"姓名不能为空!",
                        maxlength:"姓名不得多于5位!"
                    },
                    // sex:{
                    //     required:"性别必须勾选!"
                    // }
                },
                errorElement: "label", //用来创建错误提示信息标签,validate插件默认的就是label
                success: function(label) { //验证成功后的执行的回调函数
                    //label指向上面那个错误提示信息标签label
                    label.text(" ") //清空错误提示消息
                        .addClass("success"); //加上自定义的success类
                }
            });
        });
    </script>
</head>
<body class="bg">
<%--<img src="<%=path%>/img/header_bg.jpg">--%>
<div class="container">
    <div class="row"  >
        <div class="col-lg-6 col-md-6 col-sm-6">
            <img src="../../../img/logo2.jpg" width="160px" height="80px" />
        </div>
        <div align="right" class="col-lg-6 col-md-6 col-sm-6" style="padding-top: 25px;">
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
                <a class="navbar-brand" href="/index.jsp">首页</a>
            </div>

            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
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
<%--style="background-image: url(<%=basePath%>img/regist_bg.jpg)"--%>


<div id="form">
    <form action="/register/getEmployerRegister" method="post" id="registForm">
        <div id="father">
            <div id="form2">
                <table border="0px" width="100%" height="100%" align="center" cellpadding="0px" cellspacing="0px" bgcolor="white">
                    <tr>
                        <td colspan="2" >
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <font size="5">企业注册</font>&nbsp;&nbsp;&nbsp;Employer REGISTER
                        </td>
                    </tr>
                    <tr>
                        <td width="180px">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;
                            <label for="user" >用户名</label>
                        </td>
                        <td>
                            <em style="color: red;">*</em>&nbsp;&nbsp;&nbsp;<input type="text" name="employerAccount" size="35px" id="user"/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;
                            密码
                        </td>
                        <td>
                            <em style="color: red;">*</em>&nbsp;&nbsp;&nbsp;<input type="password"  name="employerPwd" size="35px" id="password" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;
                            姓名
                        </td>
                        <td>
                            <em style="color: red;">*</em>&nbsp;&nbsp;&nbsp;<input type="text" name="employerName" size="35px"/>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;
                            电话
                        </td>
                        <td>
                            <em style="color: red;">*</em>&nbsp;&nbsp;&nbsp;<input type="text" name="employerTel" size="35px"/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;
                            Email
                        </td>
                        <td>
                            <em style="color: red;">*</em>&nbsp;&nbsp;&nbsp;<input type="text" name="employerEmail" size="35px" id="email"/>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;
                            居住详址
                        </td>
                        <td>
                            <em style="color: red;">*</em>&nbsp;&nbsp;&nbsp;<input type="text" name="employerAddress"  size="35px"/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;
                            企业编号
                        </td>
                        <td>
                            <em style="color: red;">*</em>&nbsp;&nbsp;&nbsp;<input type="text" name="companyId"  size="35px"/>
                        </td>
                    </tr>

                    <tr>
                        <td colspan="2">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <input type="submit" value="注 册" height="50px" class="btn btn-primary"/>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </form>
</div>
</form>
</div>
</div>
</body>
</html>
