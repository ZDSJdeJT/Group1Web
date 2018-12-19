<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
            <%@ page import="service.workservice" %>
        <%@ page import="modle.User" %>
<!DOCTYPE html>
<html>

<head>

  <meta charset="UTF-8">

  <title>工作经历( ˙灬˙ )</title>
<link href="约会吧/img/title.ico" rel="icon" type="image/x-ico">
    <link rel="stylesheet" href="约会吧/css/info.css" media="screen" type="text/css" />

<style>
body {
  background:url(http://localhost:8080/PRAC/约会吧/img/base.jpg) no-repeat;
}
.a1{
	width:800px;
	height:500px;
    margin-left:90px;
	font-size:20px;}
.m1{
	width:800px;
	height:500px;
	font-size:20px;}
strong{
		font-family:"幼圆"		
		}
		.time{
position: relative;width: 200px;
}
.pic{
position: absolute;
background-image:url(日历.png); 
background-repeat: no-repeat; 
background-position: 0px 0px; 
width: 20px; 
height: 20px;
}
.block{
height:100px;
width:150px;
background:#C9F;
margin-left:90px;}
.n1{
	width:800px;
	height:500px;
    margin-left:90px;
	font-size:20px;
	}
	.zi{
		text-align:center
		size:80px;
		font-family:"新宋体";}
</style>
</head>

<body>
<%
	String username = (String)session.getAttribute("username");
    if(username == null||session.getAttribute("password")==null)
    {
    	%>
    	<script>
    	alert('尊敬的游客，由于您未登录，所以无法使用该平台，请登录后再进行访问！');
    	location.href('login.jsp');
    	</script>
<%
    }
    workservice service = new workservice();
	User user = service.result(username);
    %>
    <link rel="stylesheet" href="style.css">
  <nav class="menu-opener">
    <div class="menu-opener-inner"></div>
  </nav>
  <nav class="menu">
    <ul class="menu-inner">
     <a href="http://localhost:8080/PRAC/base.jsp" class="menu-link">
        <li>基本信息</li>
      </a>
      <a href="http://localhost:8080/PRAC/edu.jsp" class="menu-link">
        <li>教育经历</li>
      </a>
      <a href="http://localhost:8080/PRAC/work.jsp" class="menu-link">
        <li>工作经历</li>
      </a>
      <a href="http://localhost:8080/PRAC/A%20home.jsp" class="menu-link">
        <li>返回主页</li>
      </a>
    </ul>
  </nav>
  <script type="text/javascript" src="约会吧/js/jquery-1.9.1.js"></script>
  <script src="menu-opener.js"></script>

  <script src='约会吧/js/jquery.js'></script>

  <script src="约会吧/js/indexinfo.js"></script>
<div style="text-align:center;clear:both;margin-top:150px">
<script src="/gg_bd_ad_720x90.js" type="text/javascript"></script>
<script src="/follow.js" type="text/javascript"></script>
</div>
<strong>
<h1 align="center"><font>您的工作经历</font></h1>
<div style="padding-left:350px">
<div class="n1"><br><br>
<table>
<tr>
 <td>
 公司名称：<%=user.getCompany()%><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 </td>
</tr>
<tr>
 <td>
 职位头衔：<%=user.getJob()%><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 </td>
</tr>
<tr>
 <td>
 开始时间：<%=user.getWorktime()%><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 </td>
</tr>
<tr>
 <td>
 结束时间：<%=user.getWorkend()%><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 </td>
</tr>
<tr>
 <td>
 工作城市：<%=user.getWorkcity()%><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 </td>
</tr>
<tr>
 <td>
 年薪水平：<%=user.getSalary()%><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 </td>
</tr>
<tr>
 <td>
 职位描述：<%=user.getDescribe()%><br /><br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 </td>
</tr>
<tr>
 <td>
 <input type="button" style="background-color:#F9C;width:100px;height:40px; font-size:15px" value="添加/编辑" onclick="javascrtpt:window.location.href='http://localhost:8080/PRAC/workinfo.jsp'"/> &nbsp;
 </td>
</tr>
</div>
</div>
</strong>
</body>

</html>