<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <title>求职者注册</title>

    <meta http-equiv="Content-Type" content="text/html; charset=utf8">

    <meta charset="utf-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="../../../css/bootstrap.min.css" rel="stylesheet">
    
    <script src="../../../js/bootstrap.min.js"></script>

    <style>
        .bg{
            background-image: url("<%=basePath%>img/regist_bg.jpg");

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
                    account:{
                        required:true,
                        minlength:3
                    },
                    pwd:{
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
                    realname:{
                        required:true,
                        maxlength:5
                    },
                    sex:{
                        required:true
                    }
                },
                messages:{
                    account:{
                        required:"用户名不能为空!",
                        minlength:"用户名不得少于3位!"
                    },
                    pwd:{
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
                    realname:{
                        required:"姓名不能为空!",
                        maxlength:"姓名不得多于5位!"
                    },
                    sex:{
                        required:"性别必须勾选!"
                    }
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

<div id="form">
    <form action="/register/getEmployRegister" method="POST" id="registForm">
        <div id="father">
            <div id="form2">
                <table border="0px" width="100%" height="100%" align="center" cellpadding="0px" cellspacing="0px" bgcolor="white">
                    <tr>
                        <td colspan="2" >
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <font size="5">求职者注册</font>&nbsp;&nbsp;&nbsp;Employ REGISTER
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
                            <em style="color: red;">*</em>&nbsp;&nbsp;&nbsp;<input type="text" name="account" size="35px" id="user"/>
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
                            <em style="color: red;">*</em>&nbsp;&nbsp;&nbsp;<input type="password"  name="pwd" size="35px" id="password" />
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
                            <em style="color: red;">*</em>&nbsp;&nbsp;&nbsp;<input type="text" name="realname" id="realname"  size="35px"/>
                        </td>
                    </tr>


                    <tr>
                    <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;
                    性别
                    </td>
                    <td>
                    <span style="margin-right: 155px;">
                    <em style="color: red;">*</em>&nbsp;&nbsp;&nbsp;<input type="radio" name="sex" value="男"/>男
                    <input type="radio" name="sex" value="女"/>女<em></em>
                    <label for= "sex" class="error" style="display: none;"></label>
                    </span>

                    </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;
                            年龄
                        </td>
                        <td>
                            <em style="color: red;">*</em>&nbsp;&nbsp;&nbsp;<input type="text" name="age"  size="35px"/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;
                            求职编号
                        </td>
                        <td>
                            <em style="color: red;">*</em>&nbsp;&nbsp;&nbsp;<input type="text" name="userid"  size="35px"/>
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


<%--<div class="container" align="center">--%>
<%--<div>--%>
    <%--<form action = "/register/getEmployRegister" method="POST">--%>
        <%--<!--提交效果(没加name属性):ok.html?sex=on&hobby=on&hobby=on&province=--北京---->--%>
        <%--<!--**想把填写的用户名的内容提交到action，就要用name属性，理论是随意，但是一般原则为看出意愿，比如用户名，后为username-->--%>
        <%--用户名:<input type="text" name="account" /><br>--%>
        <%--密码:<input type="password" name="pwd" required="required"/><br>--%>
        <%--<!--隐藏字段:<input type=hidden name="id" value-->--%>
        <%--姓名:<input type="text" name="realname"/><br>--%>
        <%--性别:<input type="radio" name="sex" value="男"/>男--%>
        <%--<!--checked="checked默认选项",required="required"必填项-->--%>
        <%--<!--name的取值用来分组用，向后台传参sex=男-->--%>
        <%--<input type="radio" name="sex" value="女" checked="checked"/>女<br />--%>
        <%--年龄:<input type="text" name="age"/><br>--%>
        <%--求职编号:<input type="text" name="userid" /><br>--%>
        <%--<!--checkbox复选框-->--%>
        <%--<!--有单选框和复选框要记得加value属性-->--%>
        <%--&lt;%&ndash;爱好:<input type="checkbox" name="hobby" value="打电动" />打电动&ndash;%&gt;--%>
        <%--&lt;%&ndash;<input type="checkbox" name="hobby" value="钓鱼"/>钓鱼&ndash;%&gt;--%>
        <%--&lt;%&ndash;<input type="checkbox" name="hobby" value="篮球" checked="checked"/>篮球<br />&ndash;%&gt;--%>
        <%--&lt;%&ndash;头像:<input type="file" name="file" /><br />&ndash;%&gt;--%>
        <%--<!--select选择标签-->--%>
        <%--&lt;%&ndash;籍贯:<select name="province">&ndash;%&gt;--%>
        <%--&lt;%&ndash;<!--下拉列表标签option-->&ndash;%&gt;--%>
        <%--&lt;%&ndash;<option>--请选择--</option>&ndash;%&gt;--%>
        <%--&lt;%&ndash;<option value="北京">--北京--</option>&ndash;%&gt;--%>
        <%--&lt;%&ndash;<!--selected="selected默认选择"-->&ndash;%&gt;--%>
        <%--&lt;%&ndash;<option value="天津" selected="selected">--天津--</option>&ndash;%&gt;--%>
        <%--&lt;%&ndash;<option value="上海">--上海--</option>&ndash;%&gt;--%>
    <%--&lt;%&ndash;</select><br>&ndash;%&gt;--%>
        <%--&lt;%&ndash;自我介绍:&ndash;%&gt;--%>
        <%--&lt;%&ndash;<!--textarea标签-->&ndash;%&gt;--%>
        <%--&lt;%&ndash;<textarea name="ziwojieshao">&ndash;%&gt;--%>

			<%--&lt;%&ndash;</textarea><br>&ndash;%&gt;--%>
        <%--<!--value为定义按钮的名字,value是输入的地方呈现的内容-->--%>
        <%--提交:<input type="submit" value="注册"/>&nbsp;<br />--%>

    <%--</form>--%>
<%--</div>--%>
<%--</div>--%>
</body>
</html>
