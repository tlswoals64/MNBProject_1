<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>InsertTransaction</title>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<link rel="stylesheet" href="../../css/inserticon.css">
<style>
label {
	margin: 0;
}

.ss {
	font-size: 18px;
	margin-left: 5px;
	vertical-align: bottom;
}

.boardbox {
	width: 80%;
	max-width: 1024px;
	margin: 0 auto;
	padding: 2%;
	text-align: center;
	position: relative;
	display: table;
	float: center;
	background: #fff;
}

.boxrow-top {
	border-bottom-style: solid;
	border-color: #BDBDBD;
	height: 55px;
	border-width: 3px;
}

.boxrow {
	position: relative;
	display: table;
	width: 100%;
	padding-bottom: 30px;
}

.subtext {
	font-size: 1.2em;
	text-transform: uppercase;
	text-align: left;
	width: 30%;
	font-size: 35px;
	font-weight: 700;
	line-height: 55px;
	margin: auto;
	text-align: center;
}

.pnaw_box {
	width: 100%;
	margin: 30px 0;
}

.pnaw_box th {
	width: 25%;
	padding: 20px;
	border: 1px solid #eee;
	font-size: 17px;
	font-weight: normal;
	background: #fafafa;
}

.pnaw_box td {
	width: 75%;
	padding: 10px;
	border: 1px solid #eee;
	font-size: 13px;
	text-align: left;
}

.pnaw_box td input, select {
	
}

input, textarea, select {
	box-shadow: none;
	outline: none;
	box-shadow: none;
	border: 1px solid #eee;
	padding: 0 1em;
	appearance: none;
}

.joinbox {
	width: 100%;
	max-width: 1024px;
	margin: 0 auto;
	padding: 0 5px;
	text-align: center;
	position: relative;
	display: table;
}

.ul01 li {
	display: inline-block;
}

.inputbox02 {
	width: 200px;
	height: 40px;
	border-radius: 15px;
}

#titleImgArea {
	width: 350px;
	height: 200px;
	text-align: center;
	display: table-cell;
}

#contentImgArea1, #contentImgArea2, #contentImgArea3 {
	width: 120px;
	height: 100px;
	text-align: left;
	display: table-cell;
	vertical-align: middle;
}

.par {
	display: inline-block;
}

.po {
	text-algin: center;
	float: left;
	margin-right: 50px; <%--
	border: 1px solid red;
	--%>
}

.comm {
	vertical-align: middle;
}

.icon {
	width: 150px;
	height: 150px;
	curson: pointer;
	border: 1px solid pink;
	display: inline-block;
	margin: 10px;
}

.menu {
	color: pink;
}

label{
vertical-align: top;
}

.insertinput{
height : 40px;
}
</style>
</head>
<body>
	<div class="boardbox">
		<div class="boxrow">
			<div class="boxrow-top">
				<pre class="subtext">베이비시터 지원</pre>
			</div>
			<!--  enctype은 전송되는 데이터 형식을 설정한다. -->
			<form name='writeform' id='writeform' action='' method='post'
				ENCTYPE='multipart/form-data'>
				<table class="pnaw_box"
					summary="베이비시터가 자신을 고용해달라고 어필을 하기위한 베이비시터 지원글 작성이다.">
					<tbody>
						<tr class="first">
							<th>성별</th>
							<td class="pnawtd">
								<input type = "radio" id = "man" name = "gender" value = "M" checked><label for = "man">남</label>
								<input type = "radio" id = "woman" name = "gender" value = "F"><label for = "woman">여</label>
							</td>
						</tr>

						<tr class="first">
							<th>희망 아이유형</th>
							<td class="pnawtd"><select class="insertinput po" style="width: 150px;"
								name='category' id='Smallclassification'>
									<option>선택</option>
							</select></td>
						</tr>
						<tr>
							<th scope="row">제목</th>
							<td class="pnawtd"><input name="subject" value=""
								class="insertinput inputTypeText" style='width: 80%;' maxLength="125"
								type="text" msg="제목을 입력해주세요." valch="yes" /></td>
						</tr>
						<tr>
							<th scope="row">희망 시간</th>
							<td class="pnawtd"><input name="mem_name" value=""
								class="insertinput inputTypeText" maxLength="125" type="text" readonly></td>
						</tr>
						<tr>
							<th>주소</th>
							<td></td>
						</tr>

						<tr>
							<th scope="row">상세내용</th>
							<td class="write pnawtd"><textarea name='content'
									style='width: 90%; height: 200px;'></textarea></td>
						</tr>
						<tr>
							<th>아이 연령</th>
							<td style="text-align: center;">
								<div>
									<div class="icon">
										<br> <img
											src="<%=request.getContextPath()%>/images/bcimg/milk-bottle.png"
											style="width: 100px; height: 100px; border: 1px solide pink;"><br>
										<p class="menu">신생아</p>
									</div>
									<div class="icon">
										<br> <img
											src="<%=request.getContextPath()%>/images/bcimg/pacifier (2).png"
											style="width: 100px; height: 100px; border: 1px solide pink;"><br>
										<p class="menu">영아</p>
									</div>
									<div class="icon">
										<br> <img
											src="<%=request.getContextPath()%>/images/bcimg/maternity (2).png"
											style="width: 100px; height: 100px; border: 1px solide pink;"><br>
										<p class="menu">유아</p>
									</div>
								</div>
							</td>
						</tr>
						<tr>
							<th>활동 유형</th>
							<td style="text-align: center;">
								<div>
									<div class="icon">
										<br> <input type="checkbox" id="cb1"> <label
											for="cb1"></label>
										<p class="menu">실내놀이</p>
									</div>
									<div class="icon">
										<br> <img
											src="<%=request.getContextPath()%>/images/bcimg/maternity.png"
											style="width: 100px; height: 100px; border: 1px solide pink;"><br>
										<p class="menu">등하원돕기</p>
									</div>
									<div class="icon">
										<br> <img
											src="<%=request.getContextPath()%>/images/bcimg/book.png"
											style="width: 100px; height: 100px; border: 1px solide pink;"><br>
										<p class="menu">책읽기</p>
									</div>
									<br> <br>
									<div class="icon">
										<br> <img
											src="<%=request.getContextPath()%>/images/bcimg/butterfly.png"
											style="width: 100px; height: 100px; border: 1px solide pink;"><br>
										<p class="menu">야외활동</p>
									</div>
									<div class="icon">
										<br> <img
											src="<%=request.getContextPath()%>/images/bcimg/english.png"
											style="width: 100px; height: 100px; border: 1px solide pink;"><br>
										<p class="menu">한글놀이</p>
									</div>
									<div class="icon">
										<br> <img
											src="<%=request.getContextPath()%>/images/bcimg/english.png"
											style="width: 100px; height: 100px; border: 1px solide pink;"><br>
										<p class="menu">영어놀이</p>
									</div>
									<br> <br>
									<div class="icon">
										<br> <img
											src="<%=request.getContextPath()%>/images/bcimg/maternity.png"
											style="width: 100px; height: 100px; border: 1px solide pink;"><br>
										<p class="menu">학습지도</p>
									</div>
									<div class="icon">
										<br> <img
											src="<%=request.getContextPath()%>/images/bcimg/soccer.png"
											style="width: 100px; height: 100px; border: 1px solide pink;"><br>
										<p class="menu">체육놀이</p>
									</div>
									<div class="icon">
										<br> <img
											src="<%=request.getContextPath()%>/images/bcimg/maternity.png"
											style="width: 100px; height: 100px; border: 1px solide pink;"><br>
										<p class="menu">밥챙겨주기</p>
									</div>
								</div>
							</td>
						</tr>
						<tr>
							<th>zzz</th>
							<td>
								<div class="ccheck">
									<input type="checkbox" id="cb1"> <label for="cb1"></label>
								</div>
							</td>
						</tr>
						<tr>
							<th>사진 첨부</th>
							<td>
								<div class="par">
									<div id="contentImgArea1" class="po">
										<img id="contentImg1" width="120" height="100">
									</div>

									<div id="contentImgArea2" class="po">
										<img id="contentImg2" width="120" height="100">
									</div>

									<div id="contentImgArea3" class="po">
										<img id="contentImg3" width="120" height="100">
									</div>
								</div>
							</td>

						</tr>
					</tbody>
				</table>
				<div class="joinbox" style="max-width: 90%;">
					<ul class="ul01">
						<li><input class="inputbox02 btn btn-outline-dark"
							type="button" value="등록" onclick="register();"></li>
						<li><input class="inputbox02 btn btn-outline-dark"
							type="button" value="취소" onclick="javascript:history.back()"></li>
					</ul>
				</div>
			</form>
		</div>
	</div>
</body>
</html>