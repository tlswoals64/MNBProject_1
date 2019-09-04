<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
  <script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
</head>

<style>
	td.small {
		text-align:center;
		cursor:pointer;
		width:150px;
	}
	td.small a img {
		border:none;
		margin:10px;
		width:60px;
		height:60px;
	}
	td.small p{font-weight:bold;}
	.large {width:500px; text-align:center;}
	.hover {background-color:powderblue;}
	
	@charset "utf-8";

@import url('font.css');

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


.content{width:100%}
.nanum_view{width:1200px;margin-bottom:65px;margin:0 auto; margin-top:20px; }
.nanum_view ul li {float:left; border:5px solid #dfdfdf; min-height:400px;}
.nanum_view ul li:first-child {width:41.6%; margin-right:20px;}
.nanum_view ul li:nth-child(2) {width:55%; margin-right:0;}

.nanum_content{width:1200px;margin-bottom:65px; margin:0 auto; margin-top:20px;  border:5px solid #dfdfdf; min-height:400px; }

.replyArea {width:1200px; margin-bottom:65px; margin:0 auto; margin-top:20px; }
.replyArea h2 {pont-size:12px; border-bottom:2px solid #dfdfdf; padding-bottom:10px;}
.replyArea td


</style>

<body>
	<jsp:include page="../../common/header.jsp"></jsp:include>


	<div class="both"></div>
	
	
	<div class="content">
		<div class="nanum_view">
			<ul>
				<li>
					<table>
						<tr>
							<th colspan="5"><img src="resources/images/main/main_img_01.png"
								width="500" height="380" class="large" /></th>
						</tr>
						<tr>
							<td class="small"><a href="resources/images/main/main_img_01.png"><img
									src="resources/images/main/main_img_01.png" width="480" height="380" /></a>
								<p>
									물품사진1<br>&#8361;500</td>
							<td class="small"><a href="resources/images/main/main_img_02.png"><img
									src="resources/images/main/main_img_02.png" width="480" height="380" /></a>
								<p>
									물품사진2<br>&#8361;500</td>
							<td class="small"><a href="resources/images/main/main_img_03.png"><img
									src="resources/images/main/main_img_03.png" width="480" height="380" /></a>
								<p>
									물품사진3<br>&#8361;500</td>
							<td class="small"><a href="resources/images/main/main_img_01.png"><img
									src="resources/images/main/main_img_01.png" width="480" height="380" /></a>
								<p>
									물품사진4<br>&#8361;500</td>
						</tr>
					</table> <script>
						var src = "";
						$(function() {
							$('.small').find('img').hover(function() {
								src = $(this).attr('src');
								$('.large').fadeOut(0);
								$('.large').attr('src', src).fadeIn(2000);
							}, function() {
								$('.large').stop().fadeIn();
							});
						});
					</script>
				</li>







				<li>내용</li>
			</ul>
		</div>


		<div class="both"></div>


		<div class="nanum_content">
			<ul>
				<li>내용</li>
			</ul>
		</div>

		<div class="both"></div>

		<div class="replyArea">
			<div class="replyWriterArea">

				<div class="replySelectArea">
					<table id="replySelectTable">

						<h2>댓글</h2>
						<tr>
							<td style="width: 100px; font-size: 20px;">고브르</td>
							<td style="width: 200px; font-size: 20px;">2019-08-06</td>
						</tr>
						<tr>
							<td
								style="width: 600px; text-align: left; padding-left: 10px; font-size: 15px; margin-top: 20px;">갈만
								하겠죠?? ㅎㅎ</td>
						</tr>



					</table>
				</div>


				<div class="comment_wrap">
					<div class="comment_text">
						<textarea id="replyContent" rows="3" cols="80"
							class="form-control" placeholder="댓글을 입력하세요."
							style="width: 750px; height: 90px; margin: 0 auto; margin-top: 20px; display: inline-block; resize: none; position: relative; box-shadow: -1px 0px 15px 1px #9d9a9a;"></textarea>
						<input type="button" id="addReply"
							style="width: 100px; height: 90px; color: #000; background-color: #FFC0CB; border: 0; position: absolute; left: 912px; margin-top: 20px;"
							value="댓글쓰기">
					</div>
				</div>
			</div>
		</div>

	</div>

	<div class="both"></div>

	  <jsp:include page="../../common/footer.jsp"></jsp:include>
	  
</body>
</html>