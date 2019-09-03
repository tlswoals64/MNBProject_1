<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> M&B Main</title>
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
*#header {width:100%;background:url('resources/images/main/header_bak_img.png') no-repeat;min-height:908px;}

#content{width:100%;margin-bottom:65px;}
.content_wrap{width:1200px;margin:0 auto}
.content_wrap_title h2{font-family: 'NanumMyeongjo';font-size:48px;text-align:center;color:#afbf00;padding-bottom:25px;}
.content_wrap_title p {font-size:18px; text-align:center; margin-top:25px;}

#content2 {width:100%;}
.content2_right {width:1200px;margin:0 auto;margin-top:130px;}
.content2_right ul li {float:left;}
.content2_right ul li img {width:80%}
.content2_right ul li h2{color:#e2e1e1;font-size:122px;font-family: 'NanumMyeongjo';margin-bottom:35px;margin-top:35px;}
.content2_right ul li h3 {font-size:36px;}
.content2_right ul li p {width:100%;font-size:14px;padding-top:30px;}
.content2_right ul li h5 {padding:10px 15px; border:1px solid #000;font-size:14px;width:150px;text-align:center;margin-top:35px;}

.content2_right2 {width:1200px;margin:0 auto;margin-top:130px;}
.content2_right2 ul li {float:left;}
.content2_right2 ul li img {width:80%}
.content2_right2 ul .li_right2 {padding-left:79px;}
.content2_right2 ul .li_right2 h2{color:#e2e1e1;font-size:122px;font-family: 'NanumMyeongjo';margin-bottom:35px;margin-top:35px;}
.content2_right2 ul .li_right2 h3 {font-size:36px;}
.content2_right2 ul .li_right2 p {width:100%;font-size:14px;padding-top:30px;}
.content2_right2 ul .li_right2 h5 {padding:10px 15px; border:1px solid #000;font-size:14px;width:150px;text-align:center;margin-top:35px;}

.content2_left {width:1200px;margin:0 auto;margin-top:130px;}
.content2_left ul li {float:left;}
.content2_left ul li img {width:80%;text-align:right;}
.content2_left ul .li_text {width:50%;padding-left:40px;}
.content2_left ul .li_text h2{color:#e2e1e1;font-size:122px;font-family: 'NanumMyeongjo';margin-bottom:35px;margin-top:35px;}
.content2_left ul .li_text h3 {font-size:36px;}
.content2_left ul .li_text p {width:100%;font-size:14px;padding-top:30px;}
.content2_left ul .li_text h5 {padding:10px 15px; border:1px solid #000;font-size:14px;width:150px;text-align:center;margin-top:35px;}

</style>
</head>
<body>
	<jsp:include page="WEB-INF/views/common/header.jsp"></jsp:include>
  <div class="both"></div>

  <div id="content">
   <div class="content_wrap">
      <div class="content_wrap_title">
         <h2><i>From. MnB</i></h2>
         <hr size="1px" color="#afbf00;" width="350px" align="center">   
         <p>MnB가 함께하는 내아이 올바른 육아지침</p>
      </div>
   </div>
  </div>
  <div class="both"></div>

  <div id ="content2">
   <div class="content2_right">
      <ul>
         <li><img src="resources/images/main/main_img_01.png"></li>
         <li><h2><i>01</i></h2>
         <p class="both"></p>
         <h3>육아용품 나눔합니다!</h3>
         <p>쑥쑥 크는 우리아이, 그에 비해 육아용품은 턱없이 비싸기만 하죠?<br>
            이럴때 비슷한 또래가 있어 육아용품 공유를 할 수 있다면 얼마나<br>
            좋을까요? 이러한 고민을 가진 부모들에게 추천합니다!<br>
            육아용품 나눔하고 나눔받아가세요~ </p>
         <h5><a href="#">더 많은 정보보기</a></h5>
         </li>
      </ul>
   </div>
   <div class="both"></div>
	
   <div class="content2_left">
      <ul>
        <li><img src="resources/images/main/main_img_02.png"></li>
         <li class="li_text"><h2><i>02</i></h2>
         <p class="both"></p>
         <h3>연년생, 우리아이들</h3>
         <p>가장 많이 싸우고 부딪힌다는 연년생 우리아이들,<br>
            어떻게 육아를 해야할지 고민이시라구요?<br>
            자신의 육아법을 공유하고, 다른 부모님의 육아법도 보고 듣고!</p>
         <h5><a href="#">더 많은 정보보기</a></h5>
         </li>
      </ul>
   </div>
   <div class="both"></div>
	
   <div class="content2_right2">
      <ul>
         <li><img src="resources/images/main/main_img_03.png"></li>
         <li class="li_right2"><h2><i>03</i></h2>
         <p class="both"></p>
         <h3>도와주세요, 베이비시터!</h3>
         <p>도와주세요~ 베이비시터!<br>
         육아가 너무 어려워요. 육아로 인해 진땀빼는 부모님들을 위한 공간.<br>
         최고의 베이비시터들이 여러분들의 아이와 즐겁게 놀아주고, 알려주고<br>
         좋은 아이가 되는 길로 이끌어 줄 것 입니다.</p>
         <h5><a href="#">베이비시터 구하기</a></h5>
         </li>
      </ul>
   </div>
  </div>
  <div class="both"></div>
	
   <jsp:include page="WEB-INF/views/common/footer.jsp"></jsp:include>
 </body>
</html>