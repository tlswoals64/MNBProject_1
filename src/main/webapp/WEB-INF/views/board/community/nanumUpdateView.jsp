<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>InsertTransaction</title>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<!--  <link rel="stylesheet" href="/resources/css/bootstrap.css"> -->
<style>
@import url("resources/css/font.css");

@import url("resources/css/bootstrap.css");

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
	font-size: 23px;
	font-weight: bold;
	line-height: 55px;
}

.pnaw_box {
	width: 100%;
	margin: 30px 0;
	border: 1px solid #eee;
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
	height: 40px;
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

.joinbox .ul01 li {
	padding: 1%;
	float: left;
	width: 50%;
}

.joinbox .ul01 li {
	padding: 1%;
	float: left;
	width: 50%;
	list-style: none;
}

.inputbox02 {
	width: 100%;
	height: 40px;
	font-size: 0.875em;
}

#titleImgArea {
	width: 350px;
	height: 200px;
	text-align: center;
	display: table-cell;
}

#titleImgArea:hover, #contentImgArea1:hover, #contentImgArea2:hover,
	#contentImgArea3:hover, #contentImgArea4:hover {
	cursor: pointer;
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
</style>
</head>
<body>

	<jsp:include page="../../common/header.jsp"></jsp:include>

	<div class="both"></div>
	~
	<br>
	<br>
	<div class="boardbox">
		<div class="boxrow">
			<div class="boxrow-top">
				<h2 class="subtext">무료나눔 게시판 수정</h2>
			</div>
			<!--  enctype은 전송되는 데이터 형식을 설정한다. -->
			<form name='writeform' id='writeform' action='updateNanumBoard.do' method='post' ENCTYPE='multipart/form-data'>
				<input type="hidden" name="bNo" value="${ board[0].bNo }"> 
				<table class="pnaw_box" summary="">
					<tbody>
						<tr>
							<th scope="row">제목</th>
							<td class="pnawtd">
								<input name="bTitle" value="${ board[0].bTitle }" class="inputTypeText" style='width: 80%;' maxLength="125" type="text" msg="제목을 입력해주세요." valch="yes" />
							</td>
						</tr>
						<tr>
							<th scope="row">작성자</th>
							<td class="pnawtd">
								<input name="bWriter" value="${ board[0].nickName }" class="inputTypeText" maxLength="125" type="text" readonly>
							</td>
						</tr>
						<tr>
							<th scope="row">메인 이미지</th>
							<td>
								<div id="titleImgArea">
									<img id="titleImg" name="thumbnailImg1" src="resources/images/board/${ board[0].changeName }" width="600" height="600" tabindex="0">
									<input type="hidden" id="upTitleImg" name="iNo0" value="${ board[0].iNo }" disabled>
								</div>
							</td>
						</tr>
						<tr>
							<th scope="row">상세내용</th>
							<td class="write pnawtd">
								<textarea name='bContent'  style='width: 100%; height: 200px;'>${ board[0].bContent} </textarea>
							</td>
						</tr>
						<tr style="height:150px;">
							<th>사진 첨부</th>
							<td> 
								<div class="par">
									<c:forEach begin="1" end="3" var="i">
											<c:if test="${ empty board[i].changeName }">
												<div id="contentImgArea${ i }" class="po">
					                              <img id="contentImg${ i }" name="thumbnailImg${ (i + 1) }" width="120" height="100">
					                           </div>
											</c:if>
											<c:if test="${ not empty board[i].changeName }">
												<div id="contentImgArea${ i }" class="po">
													<img id="contentImg${ i }" src="resources/images/board/${ board[i].changeName }" name="thumbnailImg${ i + 1 }" width="120" height="100">
													<input type="hidden" id="upContentImg${ i }" name="iNo${ i }" value="${ board[i].iNo }" disabled>
													<input type="button" value="삭제" id="deleteBtn${ i }" onclick="nanumDelete(${ i });" style="width:50px; height:20px; margin-top: 5px; margin-left: 35px;"  >
												</div>
											</c:if>
									</c:forEach>
								</div>
							</td>
						</tr>
					</tbody>
				</table>
				
				<div class="joinbox" style="max-width: 100%;">
					<ul class="ul01">
						<li>
							<input class="inputbox02 btn btn-outline-dark" type="button" value="수정완료" onclick="register();">
						</li>
						<li>
							<input class="inputbox02 btn btn-outline-dark" type="button" value="취소" onclick="javascript:history.back()">
						</li>
					</ul>
				</div>
				<div id="fileArea">
					<input type="file" id="thumbnailImg1" multiple="multiple" name="thumbnailImg1" onchange="LoadImg(this,1)"> 
					<input type="file" id="thumbnailImg2" multiple="multiple" name="thumbnailImg2" onchange="LoadImg(this,2)"> 
					<input type="file" id="thumbnailImg3" multiple="multiple" name="thumbnailImg3" onchange="LoadImg(this,3)"> 
					<input type="file" id="thumbnailImg4" multiple="multiple" name="thumbnailImg4" onchange="LoadImg(this,4)">
				</div>
			</form>
		</div>
	</div>

	<div class="both"></div>

	<footer>
		<jsp:include page="../../common/footer.jsp"></jsp:include>
	</footer>
	<script>
		$(function() {
			$("#fileArea").hide();
		});
		
		$(document).on('click', '#contentImg1', function(){
			$("#thumbnailImg2").click();
		});
		$(document).on('click', '#contentImg2', function(){
			$("#thumbnailImg3").click();
		});
		$(document).on('click', '#contentImg3', function(){
			$("#thumbnailImg4").click();
		});
		// 각각의 영역에 파일을 첨부 했을 경우 미리 보기가 가능하도록 하는 함수
		function LoadImg(value, num) {
			if (value.files && value.files[0]) {
				var reader = new FileReader();

				reader.onload = function(e) {
					switch (num) {
					case 1:
						$("#titleImg").attr("src", e.target.result);
						$("#upTitleImg").removeAttr("disabled");
						break;
					case 2:
						var check = $('#contentImg1').attr("src");
						$("#contentImg1").attr("src", e.target.result);
						$("#upContentImg1").removeAttr("disabled");
						
						if(check == undefined){
							$("#contentImgArea1").append($("<input type='button' value='삭제' id='deleteBtn1' onclick='nanumDelete(1);' style='width:50px; height:20px; margin-top: 5px; margin-left: 35px;'  >"));
						}
						break;
					case 3:
						var check = $('#contentImg2').attr("src");
						$("#contentImg2").attr("src", e.target.result);
						$("#upContentImg2").removeAttr("disabled");
						
						if(check == undefined){
							$("#contentImgArea2").append($("<input type='button' value='삭제' id='deleteBtn2' onclick='nanumDelete(2);' style='width:50px; height:20px; margin-top: 5px; margin-left: 35px;'  >"));
						}
						break;
					case 4:
						var check = $('#contentImg3').attr("src");
						$("#contentImg3").attr("src", e.target.result);
						$("#upContentImg3").removeAttr("disabled");

						if(check == undefined){
							$("#contentImgArea3").append($("<input type='button' value='삭제' id='deleteBtn3' onclick='nanumDelete(3);' style='width:50px; height:20px; margin-top: 5px; margin-left: 35px;'  >"));
						}
						break;
					}
				}

				reader.readAsDataURL(value.files[0]);
			}
		}
		
		function nanumDelete(num){
			var value = $('#upContentImg'+num).val();
			$('#upContentImg'+num).val('N' + value);
			$('#upContentImg'+num).removeAttr("disabled");
			$('#contentImg'+num).remove();
			$('#deleteBtn'+num).remove();
			
			var $img;
			$img = $("<img id='contentImg" + num + "' name='thumbnailImg" + (num + 1) + "' width='120' height='100'>");
			$('#contentImgArea'+num).append($img);
		}

		// 등록 버튼이 눌렷을때
		function register() {
			var form = $('#writeform');
			var isall = true;
			console.log('실행');
			console.log($('#cates').val());
			var img = $('etitleImg')[0];

			// 의류 값이 없을 경우 포커스
			if ($('#cates').val() == '') {
				alert('종류를 선택해주세요.');
				var offset = $('#cates').offset();
				$("html").animate({
					scrollTop : offset.top
				}, 400);
				isall = false;
				return false;
			}

			/*     // 의류종류 선택 안햇을 경우 포커스
			    if($('#Smallclassification').val() == ''){
			        alert('의류종류를 선택해주세요.');
			        var offset = $('#cates').offset();
			        $("html").animate({scrollTop:offset.top},400);
			        isall = false;
			        return false;
			     } */

			// text 박스 구분
			form.find('input[type=text]').each(function() {
				var obj = $(this);
				/*      console.log(obj); */

				if (obj.attr('valch') == 'yes') {
					if (obj.val() == '') {
						alert(obj.attr('msg'));
						obj.focus();
						isall = false;
						return false;
					}
				}
			});
			/*   
			  // 메인 이미지가 없을 경우 포커스
			   if(img.src !== ''){
					alert('메인 이미지를 넣어주세요.');
					$('#titleImg').focus();
					return false;
				} */
			// 작성 최종 확인
			if (isall) {
				answer = confirm("작성한 글을 등록 하시겠습니까?");
				if (answer == true) {
					form.submit();
				}
			}
		}
	</script>
</body>
</html>