<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>

  <meta charset="UTF-8">

<title>约会吧(｡ì _ í｡)</title>
<link href="约会吧/img/title.ico" rel="icon" type="image/x-ico">
  <link rel='stylesheet prefetch' href='http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css'>
<link rel='stylesheet prefetch' href='http://puertokhalid.com/up/demos/puerto-Mega_Menu/css/normalize.css'>

<link rel="stylesheet" type="text/css" href="约会吧/css/normalize.css" />
<link rel="stylesheet" type="text/css" href="约会吧/css/demo.css">
<link rel="stylesheet" href="约会吧/css/style.css">
<style>
div.ab{
	width:67%;
	height:67%;
	position:absolute;
	left:300px;
	top:150px;
}
body {
	background-size:1600px 900px; 
	background:url(约会吧/img/bg.jpg); 
	overflow-x:hidden;
}
.clearfix:before,
.clearfix:after {
    content: " ";
    display: table;
}

.clearfix:after {
    clear: both;
}
.clearfix {
    *zoom: 1;
}

.container {
    position: relative;
    margin: 20px;
    padding: 120px 0;
    clear: both;
}
@media only screen and (min-width: 1200px) {
    .container {
        width: 1210px;
    }
}

@media only screen and (min-width: 960px) and (max-width: 1199px) {
    .container {
        width: 1030px;
    }
}

@media only screen and (min-width: 768px) and (max-width: 959px) {
    .container {
        width: 682px;
    }
}

@media only screen and (min-width: 480px) and (max-width: 767px) {
    .container {
        width: 428px;
        margin: 0 auto;
    }
}

@media only screen and (max-width: 479px) {
    .container {
        width: 320px;
        margin: 0 auto;
    }
}


  
.mcd-menu {
  list-style: none;
  padding: 0;
  margin: 0;
  background: #FFF;
  /*height: 100px;*/
  border-radius: 2px;
  -moz-border-radius: 2px;
  -webkit-border-radius: 2px;
  
  /* == */
  width: 250px;
  /* == */
}
.mcd-menu li {
  position: relative;
  /*float:left;*/
}
.mcd-menu li a {
  display: block;
  text-decoration: none;
  padding: 12px 20px;
  color: #777;
  /*text-align: center;
  border-right: 1px solid #E7E7E7;*/
  
  /* == */
  text-align: left;
  height: 36px;
  position: relative;
  border-bottom: 1px solid #EEE;
  /* == */
}
.mcd-menu li a i {
  /*display: block;
  font-size: 30px;
  margin-bottom: 10px;*/
  
  /* == */
  float: left;
  font-size: 20px;
  margin: 0 10px 0 0;
  /* == */
  
}
/* == */
.mcd-menu li a p {
  float: left;
  margin: 0 ;
}
/* == */

.mcd-menu li a strong {
  display: block;
  text-transform: uppercase;
}
.mcd-menu li a small {
  display: block;
  font-size: 10px;
}

.mcd-menu li a i, .mcd-menu li a strong, .mcd-menu li a small {
  position: relative;
  
  transition: all 300ms linear;
  -o-transition: all 300ms linear;
  -ms-transition: all 300ms linear;
  -moz-transition: all 300ms linear;
  -webkit-transition: all 300ms linear;
}
.mcd-menu li:hover > a i {
    opacity: 1;
    -webkit-animation: moveFromTop 300ms ease-in-out;
    -moz-animation: moveFromTop 300ms ease-in-out;
    -ms-animation: moveFromTop 300ms ease-in-out;
    -o-animation: moveFromTop 300ms ease-in-out;
    animation: moveFromTop 300ms ease-in-out;
}
.mcd-menu li:hover a strong {
    opacity: 1;
    -webkit-animation: moveFromLeft 300ms ease-in-out;
    -moz-animation: moveFromLeft 300ms ease-in-out;
    -ms-animation: moveFromLeft 300ms ease-in-out;
    -o-animation: moveFromLeft 300ms ease-in-out;
    animation: moveFromLeft 300ms ease-in-out;
}
.mcd-menu li:hover a small {
    opacity: 1;
    -webkit-animation: moveFromRight 300ms ease-in-out;
    -moz-animation: moveFromRight 300ms ease-in-out;
    -ms-animation: moveFromRight 300ms ease-in-out;
    -o-animation: moveFromRight 300ms ease-in-out;
    animation: moveFromRight 300ms ease-in-out;
}

.mcd-menu li:hover > a {
  color: #e67e22;
}
.mcd-menu li a.active {
  position: relative;
  color: #e67e22;
  border:0;
  /*border-top: 4px solid #e67e22;
  border-bottom: 4px solid #e67e22;
  margin-top: -4px;*/
  box-shadow: 0 0 5px #DDD;
  -moz-box-shadow: 0 0 5px #DDD;
  -webkit-box-shadow: 0 0 5px #DDD;
  
  /* == */
  border-left: 4px solid #e67e22;
  border-right: 4px solid #e67e22;
  margin: 0 -4px;
  /* == */
}
.mcd-menu li a.active:before {
  content: "";
  position: absolute;
  /*top: 0;
  left: 45%;
  border-top: 5px solid #e67e22;
  border-left: 5px solid transparent;
  border-right: 5px solid transparent;*/
  
  /* == */
  top: 42%;
  left: 0;
  border-left: 5px solid #e67e22;
  border-top: 5px solid transparent;
  border-bottom: 5px solid transparent;
  /* == */
}

/* == */
.mcd-menu li a.active:after {
  content: "";
  position: absolute;
  top: 42%;
  right: 0;
  border-right: 5px solid #e67e22;
  border-top: 5px solid transparent;
  border-bottom: 5px solid transparent;
}
/* == */

@-webkit-keyframes moveFromTop {
    from {
        opacity: 0;
        -webkit-transform: translateY(200%);
        -moz-transform: translateY(200%);
        -ms-transform: translateY(200%);
        -o-transform: translateY(200%);
        transform: translateY(200%);
    }
    to {
        opacity: 1;
        -webkit-transform: translateY(0%);
        -moz-transform: translateY(0%);
        -ms-transform: translateY(0%);
        -o-transform: translateY(0%);
        transform: translateY(0%);
    }
}
@-webkit-keyframes moveFromLeft {
    from {
        opacity: 0;
        -webkit-transform: translateX(200%);
        -moz-transform: translateX(200%);
        -ms-transform: translateX(200%);
        -o-transform: translateX(200%);
        transform: translateX(200%);
    }
    to {
        opacity: 1;
        -webkit-transform: translateX(0%);
        -moz-transform: translateX(0%);
        -ms-transform: translateX(0%);
        -o-transform: translateX(0%);
        transform: translateX(0%);
    }
}
@-webkit-keyframes moveFromRight {
    from {
        opacity: 0;
        -webkit-transform: translateX(-200%);
        -moz-transform: translateX(-200%);
        -ms-transform: translateX(-200%);
        -o-transform: translateX(-200%);
        transform: translateX(-200%);
    }
    to {
        opacity: 1;
        -webkit-transform: translateX(0%);
        -moz-transform: translateX(0%);
        -ms-transform: translateX(0%);
        -o-transform: translateX(0%);
        transform: translateX(0%);
    }
}



.mcd-menu li ul,
.mcd-menu li ul li ul {
  position: absolute;
  height: auto;
  min-width: 200px;
  padding: 0;
  margin: 0;
  background: #FFF;
  /*border-top: 4px solid #e67e22;*/
  opacity: 0;
  visibility: hidden;
  transition: all 300ms linear;
  -o-transition: all 300ms linear;
  -ms-transition: all 300ms linear;
  -moz-transition: all 300ms linear;
  -webkit-transition: all 300ms linear;
  /*top: 130px;*/
  z-index: 1000;
  
  /* == */
  left:280px;
  top: 0px;
  border-left: 4px solid #e67e22;
  /* == */
}
.mcd-menu li ul:before {
  content: "";
  position: absolute;
  /*top: -8px;
  left: 23%;
  border-bottom: 5px solid #e67e22;
  border-left: 5px solid transparent;
  border-right: 5px solid transparent;*/
  
  /* == */
  top: 25px;
  left: -9px;
  border-right: 5px solid #e67e22;
  border-bottom: 5px solid transparent;
  border-top: 5px solid transparent;
  /* == */
}
.mcd-menu li:hover > ul,
.mcd-menu li ul li:hover > ul {
  display: block;
  opacity: 1;
  visibility: visible;
  /*top: 100px;*/
  
  /* == */
  left:250px;
  /* == */
}
/*.mcd-menu li ul li {
  float: none;
}*/
.mcd-menu li ul li a {
  padding: 10px;
  text-align: left;
  border: 0;
  border-bottom: 1px solid #EEE;
  
  /* == */
  height: auto;
  /* == */
}
.mcd-menu li ul li a i {
  font-size: 16px;
  display: inline-block;
  margin: 0 10px 0 0;
}
.mcd-menu li ul li ul {
  left: 230px;
  top: 0;
  border: 0;
  border-left: 4px solid #e67e22;
}  
.mcd-menu li ul li ul:before {
  content: "";
  position: absolute;
  top: 15px;
  /*left: -14px;*/
  /* == */
  left: -9px;
  /* == */
  border-right: 5px solid #e67e22;
  border-bottom: 5px solid transparent;
  border-top: 5px solid transparent;
}
.mcd-menu li ul li:hover > ul {
  top: 0px;
  left: 200px;
}



/*.mcd-menu li.float {
  float: right;
}*/
.mcd-menu li a.search {
  /*padding: 29px 20px 30px 10px;*/
  padding: 10px 10px 15px 10px;
  clear: both;
}
.mcd-menu li a.search i {
  margin: 0;
  display: inline-block;
  font-size: 18px;
}
.mcd-menu li a.search input {
  border: 1px solid #EEE;
  padding: 10px;
  background: #FFF;
  outline: none;
  color: #777;
  
  /* == */
  width:170px;
  float:left;
  /* == */
}
.mcd-menu li a.search button {
  border: 1px solid #e67e22;
  /*padding: 10px;*/
  background: #e67e22;
  outline: none;
  color: #FFF;
  margin-left: -4px;
  
  /* == */
  float:left;
  padding: 10px 10px 11px 10px;
  /* == */
}
.mcd-menu li a.search input:focus {
  border: 1px solid #e67e22;
}


.search-mobile { 
	display:none !important;
	background:#e67e22;
	border-left:1px solid #e67e22;
	border-radius:0 3px 3px 0;
}
.search-mobile i { 
	color:#FFF; 
	margin:0 !important;
}


@media only screen and (min-width: 960px) and (max-width: 1199px) {
    .mcd-menu {
		margin-left:10px;
	}
}

@media only screen and (min-width: 768px) and (max-width: 959px) {
    .mcd-menu {
		width: 200px;
	}
	.mcd-menu li a {
		height:30px;
	}
	.mcd-menu li a i {
		font-size: 22px;
	}
	.mcd-menu li a strong {
		font-size: 12px;
	}
	.mcd-menu li a small {
		font-size: 10px;
	}	
	.mcd-menu li a.search input {
		width: 120px;
		font-size: 12px;
	}
	.mcd-menu li a.search buton{
		padding: 8px 10px 9px 10px;
	}
	.mcd-menu li > ul {
		min-width:180px;
	}
	.mcd-menu li:hover > ul {
		min-width:180px;
		left:200px;
	}
	.mcd-menu li ul li > ul, .mcd-menu li ul li ul li > ul {
		min-width:150px;
	}
	.mcd-menu li ul li:hover > ul {
		left:180px;
		min-width:150px;
	}
	.mcd-menu li ul li ul li:hover > ul {
		left:150px;
		min-width:150px;
	}
	.mcd-menu li ul a {
		font-size:12px;
	}
	.mcd-menu li ul a i {
		font-size:14px;
	}
}

@media only screen and (min-width: 480px) and (max-width: 767px) {
	
	.mcd-menu { 
		width: 50px;
	}
	.mcd-menu li a { 
		position: relative;
		padding: 12px 16px;
		height:20px;
	}
	.mcd-menu li a small { 
		display: none;
	}
	.mcd-menu li a strong { 
		display: none;
	}
	.mcd-menu li a:hover strong,.mcd-menu li a.active strong {
		display:block;
		font-size:10px;
		padding:3px 0;
		position:absolute;
		bottom:0px;
		left:0;
		background:#e67e22;
		color:#FFF;
		min-width:100%;
		text-transform:lowercase;
		font-weight:normal;
		text-align:center;
	}
	.mcd-menu li .search { 
		display: none;
	}
	
	.mcd-menu li > ul {
		min-width:180px;
		left:70px;
	}
	.mcd-menu li:hover > ul {
		min-width:180px;
		left:50px;
	}
	.mcd-menu li ul li > ul, .mcd-menu li ul li ul li > ul {
		min-width:150px;
	}
	.mcd-menu li ul li:hover > ul {
		left:180px;
		min-width:150px;
	}
	.mcd-menu li ul li ul li > ul {
		left:35px;
		top: 45px;
		border:0;
		border-top:4px solid #e67e22;
	}
	.mcd-menu li ul li ul li > ul:before {
		left:30px;
		top: -9px;
		border:0;
		border-bottom:5px solid #e67e22;
		border-left:5px solid transparent;
		border-right:5px solid transparent;
	}
	.mcd-menu li ul li ul li:hover > ul {
		left:30px;
		min-width:150px;
		top: 35px;
	}
	.mcd-menu li ul a {
		font-size:12px;
	}
	.mcd-menu li ul a i {
		font-size:14px;
	}
	
}

@media only screen and (max-width: 479px) {
    .mcd-menu { 
		width: 50px;
	}
	.mcd-menu li a { 
		position: relative;
		padding: 12px 16px;
		height:20px;
	}
	.mcd-menu li a small { 
		display: none;
	}
	.mcd-menu li a strong { 
		display: none;
	}
	.mcd-menu li a:hover strong,.mcd-menu li a.active strong {
		display:block;
		font-size:10px;
		padding:3px 0;
		position:absolute;
		bottom:0px;
		left:0;
		background:#e67e22;
		color:#FFF;
		min-width:100%;
		text-transform:lowercase;
		font-weight:normal;
		text-align:center;
	}
	.mcd-menu li .search { 
		display: none;
	}
	
	.mcd-menu li > ul {
		min-width:180px;
		left:70px;
	}
	.mcd-menu li:hover > ul {
		min-width:180px;
		left:50px;
	}
	.mcd-menu li ul li > ul, .mcd-menu li ul li ul li > ul {
		min-width:150px;
	}
	.mcd-menu li ul li:hover > ul {
		left:180px;
		min-width:150px;
	}
	.mcd-menu li ul li ul li > ul {
		left:35px;
		top: 45px;
		border:0;
		border-top:4px solid #e67e22;
	}
	.mcd-menu li ul li ul li > ul:before {
		left:30px;
		top: -9px;
		border:0;
		border-bottom:5px solid #e67e22;
		border-left:5px solid transparent;
		border-right:5px solid transparent;
	}
	.mcd-menu li ul li ul li:hover > ul {
		left:30px;
		min-width:150px;
		top: 35px;
	}
	.mcd-menu li ul a {
		font-size:12px;
	}
	.mcd-menu li ul a i {
		font-size:14px;
	}
    
</style>

</head>

<body>
<%
    if(session.getAttribute("user") == null)
    {
    	%>
    	<script>
    	alert('尊敬的游客，由于您未登录，所以无法使用该平台，请登录后再进行访问！');location.href('login.jsp');
    	</script>
<%
    }
    %>
  <div class="container">
<nav>
		<ul class="mcd-menu">
			<li>
				<div style="padding-bottom:20px">
                <a href="http://localhost:8080/PRAC/A%20home.jsp"  class="active">
					<i class="fa fa-home"></i>
					<strong>主页</strong>
					<small>HOME</small>                   
				</a>
                </div>
			</li>
			<li>
            <div style="padding-bottom:20px">
				<a href="" target="_blank">
					<i class="fa fa-gift"></i>
					<strong>约会^0^</strong>
					<small>APPOINTMENT</small>
				</a>
                </div>
			</li>
            <li>
            <div style="padding-bottom:20px">
				<a href="" target="_blank">
					<i class="fa fa-edit"></i>
					<strong>招聘>_<</strong>
					<small>RECRUIT</small>
				</a>
                </div>
			</li>
			
			<li>
            <div style="padding-bottom:20px">
				<a href="" target="_blank">
					<i class="fa fa-comments-o"></i>
					<strong>问答=_=</strong>
					<small>QUESTION/ANSWER</small>
				</a>
                </div>
			</li>
			<li>
            <div style="padding-bottom:20px">
				<a>
					<i class="fa fa-globe"></i>
					<strong>您的信息</strong>
					<small>${user.username}</small>
				</a>
                </div>
				<ul>
					<li><a href="" target="_blank"><i class="fa fa-globe"></i>基本信息</a></li>
					<li>
						<a href="" target="_blank"><i class="fa fa-group"></i>教育经历</a>
					</li>
					<li><a href="" target="_blank"><i class="fa fa-trophy"></i>工作经历</a></li>
					<li><a onclick="myFunction()"><i class="fa fa-certificate"></i>注销该账户</a></li>
<script>
function myFunction(){
	var r=confirm("您确定要注销该账号吗？");
	if (r==true){
		window.location.href="http://localhost:8080/PRAC/logout.jsp" ;
    //url="http://192.168.0.51/hami/index.jsp";
	}
else{
	alert("您已取消");
	}
  }
</script>
				</ul>
			</li>
			<li>
            <div style="padding-bottom:20px">
				<a href="约会吧/app.html" target="_blank">
					<i class="fa fa-picture-o"></i>
					<strong>APP下载</strong>
					<small>DOWNLOAD</small>
				</a>
                </div>
			</li>
			<li>
            <div style="padding-bottom:20px">
				<a>
					<i class="fa fa-envelope-o"></i>
					<strong>其他</strong>
					<small>OTHER</small>
                    
				</a>
                </div>
                <ul>
					<li><a href="约会吧/about.html" target="_blank"><i class="fa fa-female"></i>关于我们</a></li>
					<li>
						<a href="约会吧/touch.html" target="_blank"><i class="fa fa-male"></i>联系我们</a>
					</li>
					<li><a href="约会吧/secret.html" target="_blank"><i class="fa fa-leaf"></i>隐私政策</a></li>
				</ul>
			</li>
			<li class="float">
            <div style="padding-bottom:20px">
				<a class="search">
					<input type="text" value="搜索 ...">
					<button><i class="fa fa-search"></i></button>
				</a>
                </div>
                <div style="padding-bottom:20px">
				<a href="" class="search-mobile">
					<i class="fa fa-search"></i>
				</a>
                </div>
			</li>
		</ul>
	</nav>
</div>
<div style="text-align:center;clear:both">
<script src="/gg_bd_ad_720x90.js" type="text/javascript"></script>
<script src="/follow.js" type="text/javascript"></script>
</div>

<div class="ab">
<div style="padding-bottom:70px"><h2><font size="+6" color="#FF6699"><strong>一起约会吧 (⁄ ⁄•⁄ω⁄•⁄ ⁄)</strong></font></h2></div>
	<div class="carousel" data-gap="20">
		<figure>
				<img src="约会吧/img/1.png" alt="">
			<img src="约会吧/img/2.png" alt="">
			<img src="约会吧/img/3.png" alt="">
			<img src="约会吧/img/4.png" alt="">
			<img src="约会吧/img/5.png" alt="">
			<img src="约会吧/img/6.png" alt="">
			<img src="约会吧/img/7.png" alt="">
			<img src="约会吧/img/8.png" alt="">
		</figure>
		<nav>
			<button class="nav prev">←</button>
			<button class="nav next">→</button>
		</nav>
	</div>
</div>
<script type="text/javascript">
	'use strict';

	window.addEventListener('load', function () {
		var carousels = document.querySelectorAll('.carousel');

		for (var i = 0; i < carousels.length; i++) {
			carousel(carousels[i]);
		}
	});

	function carousel(root) {
		var figure = root.querySelector('figure'),
			nav = root.querySelector('nav'),
			images = figure.children,
			n = images.length,
			gap = root.dataset.gap || 0,
			bfc = 'bfc' in root.dataset,
			theta = 2 * Math.PI / n,
			currImage = 0;

		setupCarousel(n, parseFloat(getComputedStyle(images[0]).width));
		window.addEventListener('resize', function () {
			setupCarousel(n, parseFloat(getComputedStyle(images[0]).width));
		});

		setupNavigation();

		function setupCarousel(n, s) {
			var apothem = s / (2 * Math.tan(Math.PI / n));

			figure.style.transformOrigin = '50% 50% ' + -apothem + 'px';

			for (var i = 0; i < n; i++) {
				images[i].style.padding = gap + 'px';
			}for (i = 1; i < n; i++) {
				images[i].style.transformOrigin = '50% 50% ' + -apothem + 'px';
				images[i].style.transform = 'rotateY(' + i * theta + 'rad)';
			}
			if (bfc) for (i = 0; i < n; i++) {
				images[i].style.backfaceVisibility = 'hidden';
			}rotateCarousel(currImage);
		}

		function setupNavigation() {
			nav.addEventListener('click', onClick, true);

			function onClick(e) {
				e.stopPropagation();

				var t = e.target;
				if (t.tagName.toUpperCase() != 'BUTTON') return;

				if (t.classList.contains('next')) {
					currImage++;
				} else {
					currImage--;
				}

				rotateCarousel(currImage);
			}
		}

		function rotateCarousel(imageIndex) {
			figure.style.transform = 'rotateY(' + imageIndex * -theta + 'rad)';
		}
	}
</script>
<audio autoplay="ture" loop><source src="约会吧/mus/未闻花名.mp3"></audio>
<footer>
<div align="left" style="padding:20px">
<br><br><br>
<hr>
<a target="_blank"><font color="#808080">Java Web实训group1小组所有</font></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a target="_blank"><font color="#808080">©南京工业职业技术学院计算机与软件学院移动应用开发1711班</font></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</div>
</footer>
</body>

</html>