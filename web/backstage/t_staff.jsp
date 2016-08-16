<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
%>
<html>
<head>
    <title></title>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="Css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="Css/bootstrap-responsive.css" />
    <link rel="stylesheet" type="text/css" href="Css/style.css" />
    <script type="text/javascript" src="Js/jquery2.js"></script>
    <script type="text/javascript" src="Js/jquery2.sorted.js"></script>
    <script type="text/javascript" src="Js/bootstrap.js"></script>
    <script type="text/javascript" src="Js/ckform.js"></script>
    <script type="text/javascript" src="Js/common.js"></script>

    <style type="text/css">
        body {font-size: 20px;
            font-size: 20px;
            padding-bottom: 40px;
            background-color:#e9e7ef;
        }
        .sidebar-nav {
            padding: 9px 0;
        }

        @media (max-width: 980px) {
            /* Enable use of floated navbar text */
            .navbar-text.pull-right {
                float: none;
                padding-left: 5px;
                padding-right: 5px;
            }
        }


    </style>
</head>
<body >
<form class="form-inline definewidth m20" action="#" method="get">
    <font color="#777777"><strong>员工名字：</strong></font>
    <input type="text" name="menuname" id="menuname"class="abc input-default" placeholder="" value="">&nbsp;&nbsp;
    <button type="submit" class="btn btn-primary">查询</button>&nbsp;&nbsp;
    <button type="button"  id="addnew"><a href="t_staffAdd.jsp">添加员工</a></button>
</form>
<table class="table table-bordered table-hover definewidth m10">
    <thead>
    <tr>
        <th>员工编号</th>
        <th>员工名字</th>
        <th>员工性别</th>
        <th>员工籍贯</th>
        <th>电话号码</th>
        <th>身份证号码</th>
        <th>民族</th>
        <th>住址</th>
        <th>进入时间</th>
        <th>状态</th>
        <th>邮箱</th>
        <th>管理菜单</th>
    </tr>
    </thead>

    <tr>
        <td>复仇者联盟</td>
        <td>电影</td>
        <td><a href="studentdetail.jsp">小强</a></td>
        <td>2016.07.22</td>
        <td>电影</td>
        <td>电影</td>
        <td>电影</td>
        <td>电影</td>
        <td>电影</td>
        <td>电影</td>
        <td>电影</td>
        <td>电影</td>
        <td> <button type="submit">修改</button></a></td>
        <td> <button type="submit">删除</button></a></td>
    </tr>


</table>

</body>
</html>
