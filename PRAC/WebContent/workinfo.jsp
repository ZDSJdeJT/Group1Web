<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
                <%@ page import="service.workservice" %>
        <%@ page import="modle.User" %>
<!DOCTYPE html>
<html>

<head>

  <meta charset="UTF-8">

  <title>工作经历(′•灬•‘)</title>

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
    if(session.getAttribute("username") == null||session.getAttribute("password")==null)
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
<a  class="menu-link" onclick="myFunction3()">
        <li>基本信息</li>
      </a>
      <a  class="menu-link" onclick="myFunction4()">
        <li>教育经历</li>
      </a>
      <a  class="menu-link" onclick="myFunction5()">
        <li>工作经历</li>
      </a>
      <a class="menu-link" onclick="myFunction2()">
        <li>返回主页</li>
      </a>
      <script>
      function myFunction2(){
    		var r=confirm("您确定要退出吗？系统将不会保存您的更改！");
    		if (r==true){
    			window.location.href="http://localhost:8080/PRAC/A%20home.jsp" ;

    		}
    	else{
    		}
    	  }
    	function myFunction3(){
    		var r=confirm("您确定要退出吗？系统将不会保存您的更改！");
    		if (r==true){
    			window.location.href="http://localhost:8080/PRAC/base.jsp" ;

    		}
    	else{
    		}
    	  }
    	function myFunction4(){
    		var r=confirm("您确定要退出吗？系统将不会保存您的更改！");
    		if (r==true){
    			window.location.href="http://localhost:8080/PRAC/edu.jsp" ;

    		}
    	else{
    		}
    	  }
    	function myFunction5(){
    		var r=confirm("您确定要退出吗？系统将不会保存您的更改！");
    		if (r==true){
    			window.location.href="http://localhost:8080/PRAC/work.jsp" ;

    		}
    	else{
    		}
    	  }


function sumbit_sure(){
var gnl=confirm("确定要保存您的信息吗?");
if (gnl==true){
return true;
}else{
return false;
}
}

</script>
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
<div class="n1">
<form name="form" action="http://localhost:8080/PRAC/workinfoservlet" method="post"  onsubmit="return sumbit_sure()">
公司名称：<input type="text"  name="company" size="30" maxlength="16" placeholder="公司/组织名称：" value="<%=user.getCompany()%>" style="font-size:20px"/><small style="color:#666">[您最多可以输入16个字符]</small><br>
职位头衔：<input type="text" name="job" size="30" maxlength="16" placeholder="如：Java工程师" value="<%=user.getJob()%>" style="font-size:20px"/><small style="color:#666">[您最多可以输入16个字符]</small><br /><br>
开始时间：<input type="date" style="font-size:20px" size="30" name="worktime" maxlength="16"  value="<%=user.getWorktime()%>"/><br>
结束时间：<input type="date" style="font-size:20px" size="30" name="workend" maxlength="16"  value="<%=user.getWorkend()%>"/><br>
工作城市：<input type="text" style="font-size:20px" name="workcity" size="30" maxlength="8" placeholder="如：上海" value="<%=user.getWorkcity()%>"/><small style="color:#666">[您最多可以输入8个字符]</small><br /><br />
年薪水平：<input type="text" style="font-size:20px" name="salary" size="30" maxlength="16" placeholder="5w-10w" value="<%=user.getSalary()%>"/><small style="color:#666">[您最多可以输入16个字符]</small><br><br><br>
职位描述：<small style="color:#666">[您最多可以输入100个字符]</small><br />
<textarea  name="describe" maxlength="100"  rows="10" cols="20" placeholder="在工作期间解决过什么问题？"style=" font-size:20px; resize: none;  width:700px;height: 100px; "><%=user.getDescribe()%></textarea><br /><br />
 <input type="submit" style=" font-size:15px;background-color:#F9C;width:60px;height:40px" value="保存"/> &nbsp;</form>
 <div style="padding-top:10px">
  <a onclick="myFunction1()">取消/退出</a>
 <script>
function myFunction1(){
	var r=confirm("您确定要取消吗？");
	if (r==true){
		window.location.href="http://localhost:8080/PRAC/work.jsp" ;
	}
else{
	}
  }
</script>
</div>
</div>
</strong>
</body>

</html>