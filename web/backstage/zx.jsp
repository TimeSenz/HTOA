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
    <script type="text/javascript" src="Js/jquerypicture.js"></script>
    
    <style type="text/css">
        body {font-size: 20px;
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
<body>
<font color="#777777"><strong>添加大类：</strong></font> 
<form action="#" method="post" class="definewidth m20" enctype="multipart/form-data">
<table class="table table-bordered table-hover m10" style="margin-left:10px;margin-top:3px;">
    <tr>
         <td>大类名称</td>
		 <td><input type="text" name="classname"/></td>
    </tr>
	</table>  
         <div class="box">
  		<table cellpadding="1" cellspacing="0" border="0">
        		<th>请添加小类：</th>
				<tr>
                	<th ></th>
                   
                    <th > </th>
                </tr>
                <tr class="di">
                	<td><input type='text' class='input_140'   placeholder='请输入小类名称'/></td>
                 </tr>
        </table>
        <div class="tianjia"><button type="button">添加</button></div>
  </div>
  <br>
    <br>
	  <br>
	<table>
    <tr>
        <td class="tableleft"></td>
        <td>
            <button style="margin-left:5px;"type="submit" class="btn btn-primary" type="button"  >保存</button> &nbsp;&nbsp;<button type="button" class="btn btn-success" name="backid" id="backid">返回列表</button>
        </td>
    </tr>
</table>
</form>
 <img src="" id="img0" > 
 
<!-- 动态添加input-->
<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
 <script type="text/javascript">
  $(function(){
	 $('.tianjia').click(function(e) {
			var $html=$("<tr><td><input type='text' class='input_140'   placeholder='请输入姓名'/></td><td><a class='shanchu' onclick=\'sc()\'>删除</a></td></tr>");
           $('.box table ').append($html);
        }); 
	  
	})
	function sc(){
		$(" .box table tr").eq($(this).index()).remove();
	}	
	
  </script>


</body>
</html>
 

