<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ page import="service.eduservice" %>
        <%@ page import="modle.User" %>
<!DOCTYPE html>
<html>

<head>

  <meta charset="UTF-8">

  <title>教育经历(●′ϖ`●)</title>
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
    eduservice service = new eduservice();
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
<h1 align="center"><font>您的教育经历</font></h1>
<div style="padding-left:350px">
<div class="a1"><br><br>
<table>
<tr>
 <td>
 院校名称：<%=user.getCollege()%><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 </td>
</tr>
<tr>
 <td>
 专业名称：<%=user.getMajor()%><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 </td>
</tr>
<tr>
 <td>
 入学时间：<%=user.getTime()%><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 </td>
</tr>
<tr>
 <td>
 毕业时间：<%=user.getTimeend()%><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 </td>
</tr>
<tr>
 <td>
 最高学历：<%=user.getHistory()%><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 </td>
</tr>
<tr>
 <td>
 相关技术：<%=user.getSkill()%><br><br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 </td>
</tr>
<tr>
 <td>
 在校荣誉：<%=user.getHonor()%><br><br><br><br><br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 </td>
</tr>
<tr>
 <td>
 <input type="button" style="background-color:#F9C;width:100px;height:40px; font-size:15px" value="添加/编辑" onclick="javascrtpt:window.location.href='http://localhost:8080/PRAC/eduinfo.jsp'"/> &nbsp;
 </td>
</tr>
</table>
</div>
</div>
</strong>
</body>

</html>