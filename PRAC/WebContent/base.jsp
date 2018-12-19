<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
    <%@ page import="service.baseinfoservice" %>
        <%@ page import="modle.User" %>
<!DOCTYPE html>
<html>

<head>

  <meta charset="UTF-8">

  <title>基本信息(>▽<)</title>
<link href="约会吧/img/title.ico" rel="icon" type="image/x-ico">
    <link rel="stylesheet" href="约会吧/css/info.css" media="screen" type="text/css" />

<style>
body {
  background:url(http://localhost:8080/PRAC/约会吧/img/base.jpg) no-repeat;
}
.m1{
	width:800px;
	height:500px;
	font-size:20px;}
strong{
		font-family:"幼圆";
		}
		
</style>
</head>

<body>
<%
	String username = (String)session.getAttribute("username");
    if(username == null||session.getAttribute("password")==null)
    {
    	%>
    	<script>
    	alert('尊敬的游客，由于您未登录，所以无法使用该平台，请登录后再进行访问！');location.href('login.jsp');
    	</script>
<%
    }
    baseinfoservice service = new baseinfoservice();
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

<h1 align="center"><font>您的基本信息</font></h1>
<div style="padding-left:350px">
<div class=".block">
<table>

<tr>
 <td>
 真实姓名：<%=user.getRealname()%><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 </td>
</tr>
<tr>
 <td>
 出生日期：<%=user.getBirthday()%><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 </td>
</tr>
<tr>
<td>
 您的城市：<%=user.getCity()%><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 </td>
</tr>
<tr>
 <td>
 兴趣爱好：<%=user.getHobby()%><br><br><br>
 </td>
</tr>
<tr>
 <td>
 个人简介：<%=user.getResume()%><br><br><br><br><br>
 <td>
</tr>
<tr>
 <td>
 <input type="button" style="background-color:#F9C;width:100px;height:40px; font-size:15px" value="添加/编辑" onclick="javascrtpt:window.location.href='http://localhost:8080/PRAC/baseinfo.jsp'"/> &nbsp;
 </td>
</tr>
</div>
</div>
</strong>
</body>

</html>