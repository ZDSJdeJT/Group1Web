<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ page import="service.baseinfoservice" %>
        <%@ page import="modle.User" %>
<!DOCTYPE html>
<html>

<head>

  <meta charset="UTF-8">

  <title>基本信息(≧∇≦)</title>
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
    if(session.getAttribute("username") == null||session.getAttribute("password")==null)
    {
    	%>
    	<script>
    	alert('尊敬的游客，由于您未登录，所以无法使用该平台，请登录后再进行访问！');
    	location.href('login.jsp');
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

<h1 align="center"><font>您的基本信息</font></h1>
<div style="padding-left:350px">

<div class="m1">
<form name="form" action="http://localhost:8080/PRAC/baseinfoservlet" method="post"  onsubmit="return sumbit_sure()">
真实姓名：<small style="color:#666">[您最多可以输入8个字符]</small><br />
<input type="text" style="font-size:20px" placeholder="您的姓名" name="realname" size="30" maxlength="8"  value="<%=user.getRealname()%>" /><br /><br />
出生日期：<input type="date" style="font-size:20px" size="30" name="birthday" maxlength="16"  value="<%=user.getBirthday()%>"/>&nbsp;<br>
您的城市：<input type="text" size="30" maxlength="8" style="font-size:20px; width:250px"  value="<%=user.getCity()%>" name="city"/><small style="color:#666">[您最多可以输入8个字符]</small><br>
兴趣爱好：<small style="color:#666">[您最多可以输入75个字符]</small><br><textarea style=" font-size:20px;width:655px;height:60px" placeholder="您的兴趣" maxlength="75"  name="hobby"><%=user.getHobby()%></textarea><br />
个人简介：<small style="color:#666">[您最多可以输入100个字符]</small><br><textarea style=" font-size:20px;width:655px;height:110px" maxlength="100"  placeholder="描述一下自己吧~"  name="resume" ><%=user.getResume()%></textarea><br /><br>
<input type="submit"  style="background-color:#F9C;width:90px;height:40px; font-size:25px" value="保存"/> &nbsp;
 </form>
 <div style="padding-top:10px">
  <a onclick="myFunction1()">取消/退出</a>
 <script>
function myFunction1(){
	var r=confirm("您确定要取消吗？");
	if (r==true){
		window.location.href="http://localhost:8080/PRAC/base.jsp" ;
	}
else{
	}
  }
</script>
</div>
</div>
</div>

</strong>

</body>

</html>