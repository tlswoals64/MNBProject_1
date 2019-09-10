<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> M&B babyIntro</title>
<style>

@import url("resources/css/font.css");

body {margin:0;padding:0;  text-decoration:none; font-family:"NanumSquare","NanumMyeongjo","malgun","나눔고딕", "NanumGothic", "돋움", "Dotum", "굴림", "Gulim", "Sans-serif","Roboto"; font-size:13px; letter-spacing:-1px; background:#fff;line-height:160%}
div,ul,ol,li,h1,h2,h3,h4,h5,h6,form,fieldset,input,textarea,p,th,td,dd,dl {margin:0;padding:0;}
html{ }
img{border:0; vertical-align:middle;}
ul{list-style:none;}
li{list-style:none;}
a {text-decoration:none;color:#000;cursor:pointer;}
a:link, a:visited {text-decoration:none;color:#000;}
a:hover, a:focus, a:active{background:none;text-decoration:none;}
.both {height: 0;
    clear: both;
    visibility: hidden;
    margin: 0px;
    padding: 0px;}

#boardchoose{width:1200px;margin-bottom:65px;margin:0 auto;}
.boardchoose_wrap	{margin-top: 15px;}
.boardchoose_wrap ul li {float:left; width:50%; text-align:center
    
}

#content{width:100%;margin-bottom:20px;}
.Community_list {width:800px;margin:0 auto;}
.Community_list h2 {font-size:30px;padding-top:25px;text-align:center;margin-bottom:25px}


.Community_list{width:1200px; margin:0 auto;margin-top:65px;}
.Community_list h2 {font-size:30px; margin-bottom:55px;text-align:center;}
.Community_list ul {margin-bottom:16px; min-height:416px;}
.Community_list ul li{width:24%;float:left;margin-right:16px;}
.Community_list ul li:last-child{width:24%;float:left;margin-right:0px;}
.Community_list ul li h4 {font-size:20px;margin-top:10px; padding-bottom:10px; border-bottom:1px solid #ededed;}
.Community_list ul li p {font-size: 13px; color:#5d5d5d; margin-top:10px;}

</style>

</head>

<body>


  <jsp:include page="../../common/header.jsp"></jsp:include>
  
		<div class="both"></div>
	
	<div id ="boardchoose">
	<div class="boardchoose_wrap">
		<ul>
			<li><a href="#"><img src="resources/images/board/babyParentIntro.png" width="550" height="600"></a></li>
			<li><a href="suppotList.do"><img src="resources/images/board/babySitterIntro.png" width="550" height="600"></a></li>
		</ul>
	</div>
	</div>
	
	<div class="both"></div>
	
	<div id="content">
	<div class="Community_list">
		<h2>실시간 인기 게시글</h2>
		<ul>	
			<li><a href=""><img src="img/main/mong6.jpg" width="300" height="300"></a>
			<h4>M & B</h4>
			<p>씨벌 사이즈 존나크네</p>
			</li>
			<li><a href=""><img src="img/main/mong6.jpg" width="300" height="300"></a>
			<h4>M & B</h4>
			<p>씨벌 사이즈 존나크네</p>
			</li>
			<li><a href=""><img src="img/main/mong6.jpg" width="300" height="300"></a>
			<h4>M & B</h4>
			<p>씨벌 사이즈 존나크네</p>
			</li>
			<li><a href=""><img src="img/main/mong6.jpg" width="300" height="300"></a>
			<h4>M & B</h4>
			<p>씨벌 사이즈 존나크네</p>
			</li>
		</ul>
		<ul>	
			<li><a href=""><img src="img/main/mong6.jpg" width="300" height="300"></a>
			<h4>M & B</h4>
			<p>씨벌 사이즈 존나크네.</p>
			</li>
			<li><a href=""><img src="img/main/mong6.jpg" width="300" height="300"></a>
			<h4>M & B</h4>
			<p>씨벌 사이즈 존나크네.</p>
			</li>
			<li><a href=""><img src="img/main/mong6.jpg" width="300" height="300"></a>
			<h4>M & B</h4>
			<p>씨벌 사이즈 존나크네</p>
			</li>
			<li><a href=""><img src="img/main/mong6.jpg" width="300" height="300"></a>
			<h4>M & B</h4>
			<p>씨벌 사이즈 존나크네</p>
			</li>
		</ul>
	</div>
</div>
 
  
  <jsp:include page="../../common/footer.jsp"></jsp:include>
 
 
 </body>
</html>