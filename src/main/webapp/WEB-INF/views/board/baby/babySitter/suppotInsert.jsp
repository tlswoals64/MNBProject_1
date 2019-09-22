<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>InsertTransaction</title>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<link rel="stylesheet" href="resources/css/baby/inserticon.css">
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

.inputbtn {
	width: 200px;
	height: 40px;
	border-radius: 15px;
	cursor: pointer;
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
	height: 160px;
	curson: pointer;
	border: 1px solid pink;
	display: inline-block;
	margin: 10px;
}

.la {
	width: 200px;
	color: gray;
}

.req {
	width: 200px;
	height: 30px;
}

.gender {
	font-size: 13px;
	width: 70px;
}

.gicon {
	width: 50px;
	height: 50px;
	curson: pointer;
	display: inline-block;
	margin-left: 30px;
}

#gen1, #gen2, #gen3 {
	width: 180px;
	height: 60px;
	margin-left: 10px;
}

#gen2, #gen3 {
	display: none;
	border-left: 1px solid gray;
}

#age2, #age3 {
	display: none;
}

.addr1 {
	margin: .2em 0;
	font-size: 1em;
	padding: .5em;
	border: 1px solid #ccc;
	border-color: #dbdbdb #d2d2d2 #d0d0d0 #d2d2d3;
	box-shadow: inset 0.1em 0.1em 0.15em rgba(0, 0, 0, .1);
	vertical-align: middle;
	line-height: 1.25em;
	outline: 0;
	width: 7em;
}

.addr {
	margin: .2em 0;
	font-size: 1em;
	padding: .5em;
	border: 1px solid #ccc;
	border-color: #dbdbdb #d2d2d2 #d0d0d0 #d2d2d3;
	al-align: middle;
	line-height: 1.25em;
	outline: 0;
	width: 20em;
}

#contentImg {
	width: 120px;
	height: 100px;
}

#contentImg img {
	max-width: 100%;
}

.checks input[type="checkbox"] {
	position: absolute;
	width: 1px;
	height: 1px;
	padding: 0;
	margin: -1px;
	overflow: hidden;
	clip: rect(0, 0, 0, 0);
	border: 0
}
.checks input[type="checkbox"] + label {
  display: inline-block;
  position: relative;
  cursor: pointer;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
}
.checks input[type="checkbox"] + label:before {  /* 가짜 체크박스 */
  content: ' ';
  display: inline-block;
  width: 21px;  /* 체크박스의 너비를 지정 */
  height: 21px;  /* 체크박스의 높이를 지정 */
  line-height: 21px; /* 세로정렬을 위해 높이값과 일치 */
  margin: -2px 8px 0 0;
  text-align: center; 
  vertical-align: middle;
  background: #fafafa;
  border: 1px solid #cacece;
  border-radius : 3px;
  box-shadow: 0px 1px 2px rgba(0,0,0,0.05), inset 0px -15px 10px -12px rgba(0,0,0,0.05);
}
.checks input[type="checkbox"] + label:active:before,
.checks input[type="checkbox"]:checked + label:active:before {
  box-shadow: 0 1px 2px rgba(0,0,0,0.05), inset 0px 1px 3px rgba(0,0,0,0.1);
}

.checks input[type="checkbox"]:checked + label:before {  /* 체크박스를 체크했을때 */ 
  content: '\2714';  /* 체크표시 유니코드 사용 */
  color: #99a1a7;
  text-shadow: 1px 1px #fff;
  background: #e9ecee;
  border-color: #adb8c0;
  box-shadow: 0px 1px 2px rgba(0,0,0,0.05), inset 0px -15px 10px -12px rgba(0,0,0,0.05), inset 15px 10px -12px rgba(255,255,255,0.1);
}
.checks.etrans input[type="checkbox"] + label {
  padding-left: 30px;
  margin-right: 30px;
}
.checks.etrans input[type="checkbox"] + label:before {
  position: absolute;
  left: 0;
  top: 0;
  margin-top: 0;
  opacity: .6;
  box-shadow: none;
  border-color: #6cc0e5;
  -webkit-transition: all .12s, border-color .08s;
  transition: all .12s, border-color .08s;
}

.checks.etrans input[type="checkbox"]:checked + label:before {
  position: absolute;
  content: "";
  width: 10px;
  top: -5px;
  left: 5px;
  border-radius: 0;
  opacity:1; 
  background: transparent;
  border-color:transparent #6cc0e5 #6cc0e5 transparent;
  border-top-color:transparent;
  border-left-color:transparent;
  -ms-transform:rotate(45deg);
  -webkit-transform:rotate(45deg);
  transform:rotate(45deg);
}

.no-csstransforms .checks.etrans input[type="checkbox"]:checked + label:before {
  /*content:"\2713";*/
  content: "\2714";
  top: 0;
  left: 0;
  width: 21px;
  line-height: 21px;
  color: #6cc0e5;
  text-align: center;
  border: 1px solid #6cc0e5;
}
</style>
<jsp:include page="../../../common/header.jsp" />
</head>

<body>

	<br>
	<br>
	<div class="boardbox">
		<div class="boxrow">
			<div class="boxrow-top">
				<pre class="subtext">베이비시터 지원</pre>
			</div>
			<!--  enctype은 전송되는 데이터 형식을 설정한다. -->
			<form action='insertSuppot.do' name='writeform' id='writeform'
				method='post' ENCTYPE='Multipart/form-data'>
				<table class="pnaw_box" summary="">
					<tbody>
						<tr>
							<th scope="row">제목</th>
							<td class="pnawtd"><input name="bTitle" value=""
								class="inputTypeText" style='width: 80%; height: 40px;'
								maxLength="125" type="text" required="required"></td>
						</tr>
						<tr>
							<th scope="row">희망 요일</th>
							<td class="pnawtd checks etrans">
								<input type = "checkbox" name = "checkDay" id = "daycheckmon" value = "월"><label for = "daycheckmon">월요일</label>
								<input type = "checkbox" name = "checkDay" id = "daychecktue" value = "화"><label for = "daychecktue">화요일</label>
								<input type = "checkbox" name = "checkDay" id = "daycheckwed" value = "수"><label for = "daycheckwed">수요일</label>
								<input type = "checkbox" name = "checkDay" id = "daycheckthu" value = "목"><label for = "daycheckthu">목요일</label>
								<input type = "checkbox" name = "checkDay" id = "daycheckfri" value = "금"><label for = "daycheckfri">금요일</label>
								<input type = "checkbox" name = "checkDay" id = "daychecksat" value = "토"><label for = "daychecksat">토요일</label>
								<input type = "checkbox" name = "checkDay" id = "daychecksun" value = "일"><label for = "daychecksun">일요일</label>
							</td>
						</tr>
						<tr>
							<th scope="row">희망 시간</th>
							<td class="pnawtd"><input type="time" name="time1"
								required="required" style="height: 30px; font-size: 13px;">
								~ <input type="time" name="time2"
								style="height: 30px; font-size: 13px;"></td>
						</tr>
						<tr>
							<th scope="row">희망 급여</th>
							<td class="pnawtd"><input type="text" name="salary"
								placeholder="ex) 시급10000원 " id="salary"
								style="height: 30px; font-size: 13px;"></td>
						</tr>
						<tr>
							<th>주소</th>
							<td><input type="text" id="sample6_postcode" class="addr1"
								placeholder="우편번호" name="postNum"> <input type="button"
								onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
								<input type="text" id="sample6_address" class="addr"
								placeholder="주소" style="width: 38em;" name="address"
								required="required"><br> <input type="text"
								id="sample6_detailAddress" class="addr" placeholder="상세주소"
								name="detailAddress"> <input type="text"
								id="sample6_extraAddress" class="addr" placeholder="참고항목"
								name="extraAddress"> <script
									src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
							</td>
						</tr>

						<tr>
							<th scope="row">상세내용</th>
							<td class="write pnawtd"><textarea name='bContent'
									required="required" style='width: 90%; height: 200px;'></textarea></td>
						</tr>
						<tr>
							<th>활동 유형</th>
							<td style="text-align: center;">
								<div>
									<div class="icon">
										<br> <input type="checkbox" id="cb4" value="실내놀이" class = "activity"
											name="active"> <label for="cb4"></label>
										<p class="menu">실내놀이</p>
									</div>
									<div class="icon">
										<br> <input type="checkbox" id="cb5" value="등하원돕기" class = "activity"
											name="active"> <label for="cb5"></label>
										<p class="menu">등하원돕기</p>
									</div>
									<div class="icon">
										<br> <input type="checkbox" id="cb6" value="책읽기" class = "activity"
											name="active"><label for="cb6"></label>
										<p class="menu">책읽기</p>
									</div>
									<br>
									<br>
									<div class="icon">
										<br> <input type="checkbox" id="cb7" value="야외활동" class = "activity"
											name="active"> <label for="cb7"></label>
										<p class="menu">야외활동</p>
									</div>
									<div class="icon">
										<br> <input type="checkbox" id="cb8" value="한글놀이" class = "activity"
											name="active"> <label for="cb8"></label>
										<p class="menu">한글놀이</p>
									</div>
									<div class="icon">
										<br> <input type="checkbox" id="cb9" value="영어놀이" class = "activity"
											name="active"> <label for="cb9"></label>
										<p class="menu">영어놀이</p>
									</div>
									<br>
									<br>
									<div class="icon">
										<br> <input type="checkbox" id="cb10" value="학습지도" class = "activity"
											name="active"> <label for="cb10"></label>
										<p class="menu">학습지도</p>
									</div>
									<div class="icon">
										<br> <input type="checkbox" id="cb11" value="체육놀이" class = "activity"
											name="active"> <label for="cb11"></label>
										<p class="menu">체육놀이</p>
									</div>
									<div class="icon">
										<br> <input type="checkbox" id="cb12" value="밥챙겨주기" class = "activity"
											name="active"> <label for="cb12"></label>
										<p class="menu">밥챙겨주기</p>
									</div>
								</div>
							</td>
						</tr>
						<tr>
							<th>경력</th>
							<td>
								<textarea name='bCcarrer' required="required" style='width: 90%; height: 200px;'></textarea>
							</td>
						</tr>
						<tr>
							<th>사진 첨부</th>
							<td>
								<div class="par">
									<div id="contentImgArea1" class="po">
										<img id="contentImg">
									</div>
									<input type="file" id="inputimg" name="inputimg"
										onchange="LoadImg(this,1);">
								</div>
							</td>

						</tr>
					</tbody>
				</table>
				<div class="joinbox" style="max-width: 90%;">
					<ul class="ul01">
						<li><input class="inputbtn" type="submit" value="등록"></li>
						<li><input class="inputbtn" type="button" value="취소"
							onclick="javascript:history.back()"></li>
					</ul>
				</div>
			</form>
		</div>
	</div>
	<script>
		function sample6_execDaumPostcode() {
			new daum.Postcode({
				oncomplete : function(data) {
					// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.	

					// 각 주소의 노출 규칙에 따라 주소를 조합한다.
					// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
					var addr = ''; // 주소 변수
					var extraAddr = ''; // 참고항목 변수
					//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
					if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
						addr = data.roadAddress;
					} else { // 사용자가 지번 주소를 선택했을 경우(J)
						addr = data.jibunAddress;
					}
					// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
					if (data.userSelectedType === 'R') {
						// 법정동명이 있을 경우 추가한다. (법정리는 제외)
						// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
						if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
							extraAddr += data.bname;
						}
						// 건물명이 있고, 공동주택일 경우 추가한다.
						if (data.buildingName !== '' && data.apartment === 'Y') {
							extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
						}
						// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
						if (extraAddr !== '') {
							extraAddr = ' (' + extraAddr + ')';
						}
							// 조합된 참고항목을 해당 필드에 넣는다.
						document.getElementById("sample6_extraAddress").value = extraAddr;
					} else {
						document.getElementById("sample6_extraAddress").value = '';
					}
					// 우편번호와 주소 정보를 해당 필드에 넣는다.
					document.getElementById('sample6_postcode').value = data.zonecode;
					document.getElementById("sample6_address").value = addr;
					// 커서를 상세주소 필드로 이동한다.
					document.getElementById("sample6_detailAddress").focus();
				}
			}).open();
		}

		$(document).ready(function() {
			$("input[class='activity']").on("click", function() {
				var count = $("input:checked[class='activity']").length;
				if (count > 3) {
					$(this).prop("checked", false);
					alert("3개까지만 선택할 수 있습니다.");
				}

			});
		});

		function LoadImg(value) {
			if (value.files && value.files[0]) {
				var reader = new FileReader();

				reader.onload = function(e) {
					$("#contentImg").attr("src", e.target.result);

				}
				reader.readAsDataURL(value.files[0]);
			}
		}
	</script>
</body>
<jsp:include page="../../../common/footer.jsp" />
</html>