<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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

.notice_wrap ul li {float:left; width:49%;min-height:630px;text-align:center;}
.notice_wrap ul li:first-child {float:left; width:49%;margin-right:1%}

.content_wrap {width:1200px; margin:0 auto; margin-top:100px;}
.content_wrap ul li {float:left;width:49%;}
.content_wrap ul li:first-child {margin-right:1%;width:49%;}
.content_notice {width:100%; height:225px;background-color:#fff;border:1px #e0dfdf solid;margin-right:1%}
.content_notice2 {width:100%; height:225px;background-color:#fff;border:1px #e0dfdf solid;}
.cont_name {color:#3360a9; font-size:18px; font-weight:600;padding:15px 0 15px 20px;border-bottom:1px #e0dfdf solid;font-family: 'NanumSquare'}
.notice_cont {padding:15px 20px 15px 20px;}
.cont_more {float:right;padding-right:20px;padding-top:5px;}

</style>

</head>
<body>
  <jsp:include page="../../common/header.jsp"></jsp:include>
  		
		<div class="both"></div>
	
	<div id ="boardchoose">
	<div class="boardchoose_wrap">
		<ul>

			<li><a href="#"><img src="resources/images/board/communityIntro.png" width="500" height="550"><h5 style="position:absolute;top:633px;left:480px;font-size:20px;line-height:115%">커뮤니티바로가기</h5></a></li>
			<li><a href="bNanumlist.do"><img src="resources/images/board/nanumIntro.png" width="500" height="550"><h5 style="position:absolute;top:633px;left:1100px;font-size:20px;line-height:115%">무료나눔바로가기</h5></a></li>
			      
		</ul>
	</div>
	</div>
	
	<div class="both"></div>
	
<div class="content_wrap">
	<ul>
		<li>
			<div class="content_notice">
				<div class="cont_name">
					" 커뮤니티 게시판 " 
				</div>
				<div class="notice_cont">
					<li class="pro_title">판매자정보</li>
				</div>
			</div>
		</li>
		<li>
			<div class="content_notice">
				<div class="cont_name">
					" 무료나눔 게시판 " 
				</div>
				<div class="notice_cont">
						<li class="pro_title">판매자정보</li>
				</div>	
			</div>
		</li>
	</ul>
</div>	
			
	<p class="both"></p>
 
	  <jsp:include page="../../common/footer.jsp"></jsp:include>

 </body>
</html>