<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
     <link href="Js/bootstrap.min.css" rel="stylesheet">
   <script src="Js/jquery.min.js"></script>
   <script src="Js/bootstrap.min.js"></script>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="Css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="Css/bootstrap-responsive.css" />
    <link rel="stylesheet" type="text/css" href="Css/style.css" />
    <script type="text/javascript" src="Js/jquery.js"></script>
    <script type="text/javascript" src="Js/jquery.sorted.js"></script>
    <script type="text/javascript" src="Js/bootstrap.js"></script>
    <script type="text/javascript" src="Js/ckform.js"></script>
    <script type="text/javascript" src="Js/common.js"></script>
    <script type="text/javascript" src="Js/showdate.js"></script>
    <style type="text/css">
        body {font-size: 20px;
             padding-bottom: 40px;
             background-color:#e9e7ef;
             font-size:17px;
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
<h3><strong>基本信息：</strong></h3>
   <table class="table table-condensed">
                
                <tr>              
	              <td width="18%" height="30" align="center">用 户 名：</td>
	              <td width="82%" class="word_grey">艾斯</td>
	            </tr>
				<tr>              
	              <td width="18%" height="30" align="center">真实姓名：</td>
	              <td width="82%" class="word_grey">玩这</td>
	            </tr>
	            <tr>
	              <td height="28" align="center">密&nbsp;&nbsp;&nbsp;&nbsp;码：</td>
	              <td height="28">******</td>
	            </tr>
				<tr>
	              <td height="28" align="center">用户类型：</td>
	              <td height="28">学生</td>
	            </tr> 
	            <tr>
	              <td height="28" align="center">E-mail：</td>
	              <td height="28">fendou@fendou.com</td>
	            </tr> 
			   
	            <tr>
	              <td height="28" align="center">创建时间：</td>
	              <td height="28">2008-11-15 12:33:23</td>
	            </tr> 
	        </table>				
       <h3> <strong>操作记录：</strong><br></h3>
		&nbsp;&nbsp;&nbsp;&nbsp;<strong>浏览记录：</strong>
	 
	   <table class="table table-condensed"   >
	          <tr>
	             <td class="word_grey">序号 &nbsp;</td>
	              <td class="word_grey">操作对象 &nbsp;</td>
				  <td class="word_grey">操作时间 &nbsp; </td>
	            </tr>  
				  
	           <tr>
			   
	               <td class="word_grey">1</td>
	              <td class="word_grey">复仇者联盟</td>
				  <td class="word_grey">2015.03.15</td>
	            </tr> 
				 <tr>
			  
	               <td class="word_grey">2</td>
	              <td class="word_grey">复仇者联盟</td>
				  <td class="word_grey">2015.03.15</td>
	            </tr>   
				</table>
			<!--/////////////////////////////////////-->  
	 &nbsp;&nbsp;&nbsp;&nbsp; <strong>下载记录：</strong>        
		
	<table class="table table-condensed"  >
		<tr>
	             
	              <td class="word_grey">序号</td>
				  <td class="word_grey">下载对象</td>
				  <td class="word_grey">下载时间</td>
	            </tr> 
				<tr>
			  
	               <td class="word_grey">1</td>
	              <td class="word_grey">复仇者联盟</td>
				  <td class="word_grey">2015.03.15</td>
	            </tr> 
				 <tr>
			   
	               <td class="word_grey">2</td>
	              <td class="word_grey">复仇者联盟</td>
				  <td class="word_grey">2015.03.15</td>
	            </tr>
				</table>
				<!--/////////////////////////////////////-->
		&nbsp;&nbsp;&nbsp;&nbsp;	
		<strong>上传记录：</strong>
				
			<table  class="table table-condensed">
	           <tr>
	             
	              <td class="word_grey">序号</td>
				  <td class="word_grey">上传对象</td>
				  <td class="word_grey">上传时间</td>
	            </tr>               
	           <tr>
			   
	               <td class="word_grey">1</td>
	              <td class="word_grey">复仇者联盟</td>
				  <td class="word_grey">2015.03.15</td>
	            </tr> 
				 <tr>
			  
	               <td class="word_grey">2</td>
	              <td class="word_grey">复仇者联盟</td>
				  <td class="word_grey">2015.03.15</td>
	            </tr> 
            </table> 
				<!--/////////////////////////////////////-->    
<h3><strong>已发公告：</strong></h3>
			<table class="table table-condensed"   >
	                      
	           
	           <tr>
	             
				   <td class="word_grey">序号 &nbsp;&nbsp; &nbsp;&nbsp;</td>
	             
                   <td class="word_grey">公告标题 &nbsp;&nbsp; &nbsp;&nbsp;</td>
				    <td class="word_grey">公告内容 </td>
				  <td class="word_grey">操作时间 &nbsp;&nbsp; &nbsp;&nbsp;</td>
				  <td class="word_grey">删除</td>
	            </tr>  
				 
				 <tr>
			  <td class="word_grey">1</td>
	              <td class="word_grey">天王盖地虎</td>
				  <td class="word_grey">迟早会有一个对你蠢蠢欲动的人，你要等，别急。</td>
				  <td class="word_grey">2015.03.15</td>
				  <td class="word_grey"><button type="submit" >删除</button></td>
	            </tr> 
				 <tr>
			  <td class="word_grey">1</td>
	              <td class="word_grey">天王盖地虎</td>
				  <td class="word_grey">迟早会有一个对你蠢蠢欲动的人，你要等，别急。</td>
				  <td class="word_grey">2015.03.15</td>
				  <td class="word_grey"><button type="submit" >删除</button></td>
	            </tr> 
					</table>
				<!--/////////////////////////////////////-->    
<h3><strong>所授课程：</strong></h3>
			 <table class="table table-condensed"   >
	            
				  
	           <tr>
	             
				   <td class="word_grey">序号 &nbsp;&nbsp; &nbsp;&nbsp;</td>
	             
                   <td class="word_grey">课程名称 </td>
				
				  <td class="word_grey">删除</td>
	            </tr>  
				 
				 <tr>
			  <td class="word_grey">1</td>
	              <td class="word_grey">语文</td>
				 
				  <td class="word_grey"><button type="submit" >删除</button></td>
	            </tr> 
				
				 
				 <tr>
			  <td class="word_grey">1</td>
	              <td class="word_grey">数学</td>
				 
				  <td class="word_grey"><button type="submit" >删除</button></td>
	            </tr> 
				</table>
</body>
</html>
