<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>

<head>

  <meta charset="UTF-8">

  <title>发布约会(つд⊂)</title>

<link href="约会吧/img/title.ico" rel="icon" type="image/x-ico">
    <link rel="stylesheet" href="约会吧/css/info.css" media="screen" type="text/css" />
<style>
body {
background:url(http://localhost:8080/PRAC/约会吧/img/tryst.png) no-repeat;
}
.a1{

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

    if(session.getAttribute("username") == null||session.getAttribute("password")==null)
    {
    	%>
    	<script>
    	alert('尊敬的游客，由于您未登录，所以无法使用该平台，请登录后再进行访问！');
    	location.href('login.jsp');
    	</script>
<%
    }

    %>
    <link rel="stylesheet" href="style.css">
  <nav class="menu-opener">
    <div class="menu-opener-inner"></div>
  </nav>
  <nav class="menu">
    <ul class="menu-inner">
      <a href="#" class="menu-link">
        <li>发布约会</li>
      </a>
      <a class="menu-link" onclick="myFunction3()">
        <li>查看约会</li>
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
    			window.location.href="#" ;

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
<h1 align="center"><font>发布约会</font></h1>
<div style="padding-left:1100px">
<div class="a1">
<form name="form" action="http://localhost:8080/PRAC/pushtrystservlet" method="post"  onsubmit="return sumbit_sure()">

约会主题：<img src="约会吧/img/吃饭.png"/><input type="radio" name="theme" value="吃饭" checked="checked"/>吃饭&nbsp;&nbsp;<img src="约会吧/img/唱歌.png"/><input type="radio" name="theme" value="唱歌"/>唱歌&nbsp;&nbsp;<img src="约会吧/img/运动.png"/><input type="radio" name="theme" value="运动"/>运动<br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="约会吧/img/咖啡.png"/><input type="radio" name="theme" value="咖啡"/>咖啡&nbsp;&nbsp;<img src="约会吧/img/旅行.png"/><input type="radio" name="theme" value="旅行"/>旅行&nbsp;&nbsp;<img src="约会吧/img/其他.png"/><input type="radio" name="theme" value="其他"/>其他<br><br><br>
付款方式：<input type="radio" name="pay" value="我买单" checked="checked"/>我买单&nbsp;&nbsp;<input type="radio" name="pay" value="you"/>你买单&nbsp;&nbsp;<input type="radio" name="pay" value="AA制"/>AA制<br /><br>
约会时间：<input required style="font-size:20px" size="30" type="date" name="trysttime"  maxlength="16"  />
<br /><br>
约会地点：<input required style="font-size:20px" type="text" name="place" size="30"  placeholder="让我猜猜你想在哪里约会呢？" maxlength="20"/><small style="color:#666">[您最多可以输入20个字符]</small><br><br>
约会描述：<small style="color:#666">[您最多可以输入50个字符]</small><br />
<textarea  required name="trystdescribe" rows="10" cols="20" placeholder="如：具体的约会时间" style=" font-size:20px;resize: none;  width: 740px;height: 100px "></textarea><br /><br />
 <input type="submit" maxlength="50" style=" font-size:15px;background-color:#F9C;width:60px;height:40px" value="保存"/> &nbsp;
</form>
 <div style="padding-top:10px">
  <a onclick="myFunction1()">取消/退出</a>
 <script>
function myFunction1(){
	var r=confirm("您确定要取消吗？");
	if (r==true){
		window.location.href="http://localhost:8080/PRAC/showtryst.jsp" ;
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