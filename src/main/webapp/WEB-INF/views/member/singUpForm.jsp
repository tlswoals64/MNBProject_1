<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<title>회원가입</title>
</head>
<style>
body{
	margin:0px;
	padding: 0px;
}

nav{
	text-align: center;
}

.singUpForm{
	padding : 50px 10%;
}

.joininput{
	height : 30px;
	width : 30%;
	font-size: 15px;
	text-indent : 10px;
	border : 1px solid #a9a9a9;
	border-radius: 2px;
}

table{
	width : 100%;
	height : 1000px;
	margin : auto;
	border-collapse: separate;
  	border-spacing: 0px;
}

caption{
	width: 80%;
	padding: 20px;
	font-size: 2em;
	font-weight: bolder;
	margin: auto;
	margin-bottom : 30px;
	border-bottom: 3px solid black;
}

em{
	color: red;
}

th{
	text-align: left;
	padding-left : 210px;
	padding-top : 35px;
	vertical-align : top;
	font-size: initial;
}

.gender{
font-size: initial;
}

.joinButton{
	text-align: center;
	margin-top: 20px;
	padding-top : 20px;
}

.joinButton button{
	width : 30%;
	margin: 10px;
	padding: 10px 32px;
	font-size: 16px;
	cursor: pointer;
	background-color: white;
 	color: black;
  	border: 1px solid black;
  	transition-duration: 0.4s;
  	border-radius: 4px;
}

.joinButton button:hover{
	background-color: black;
  	color: white;
}

.checkBtn{
	height : 35px;
	margin: 10px;
	font-size: 16px;
	cursor: pointer;
	background-color: white;
 	color: black;
  	border: 1px solid black;
  	border-radius: 4px;
  	transition-duration: 0.4s;
}

.checkBtn:hover{
	background-color: black;
  	color: white;
}

input:focus{
	box-shadow: 20px black;
}

.gender{
	font-size:20px;
	width:15px;
	height:15px;
	text-align : center;
}

.name, .id, .pass, .passCheck, .phone, .nickName{
	width : 50%;
}

.emailCheck{
	width : 47%;
}

label{
vertical-align: top;
}

.guide{display: none; font-size: 15px; top: 12px; right : 10px; margin-top : 10px;}

.ok{color: green;}

.error{color: red;}

</style>
<body>
	<nav>
		<%@ include file = "../common/header.jsp" %>
	</nav>
	<form action="minsert.do" method = "post" id = "joinForm">
		<div class = "singUpForm">
			<table>
				<caption>회원가입</caption>
				<colgroup>
					<col width = "30%">
					<col width = "70%">
				</colgroup>
				<tr>
					<th><label for = "name"><em>*</em> 이름</label></th>
					<td>
						<input id = "name" name = "userName" class = "joininput name" type = "text" placeholder="이름">
						<input type = "hidden" name = "nameCheck" id = "nameCheck" value = "0">
					</td>
				</tr>
				<tr>
					<th><label for = "id"><em>*</em> 아이디</label></th>
					<td>
						<input id = "id" class = "joininput id" name = "userId" type = "text" placeholder="아이디" oninvalid="아이디를 입력해주세요.">
						<div class = "guide id ok">이 아이디는 사용가능합니다.</div>
						<div class = "guide id error">이 아이디는 사용 불가능합니다.</div>
						<input type = "hidden" name = "idDuplicateCheck" id = "idDuplicateCheck" value = "0">
					</td>
				</tr>
				<tr>
					<th><label for = "pass"><em>*</em> 비밀번호</label></th>
					<td>
						<input id = "pass" class = "joininput pass" name = "userPwd" type = "password" placeholder="비밀번호">
						<p style = "font-size : 15px; margin : 0px; margin-top : 5px;">숫자, 영문, 특수문자를 포함하여 8자리 이상 16자리 이하로 입력하시오.</p>
						<input type = "hidden" name = "passCheck" id = "passCheck" value = "0">
					</td>
				</tr>
				<tr>
					<th><label for = "repassCheck"><em>*</em> 비밀번호 확인</label></th>
					<td>
						<input id = "repassCheck" class = "joininput passCheck" name = "repassCheck" type = "password" placeholder="비밀번호 확인">
						<div class = "guide passcheck ok">사용가능한 비밀번호입니다.</div>
						<div class = "guide passcheck error">비밀번호가 일치하지 않습니다.</div>
						<input type = "hidden" name = "pwd2" id = "pwd2" value = "0">
					</td>
				</tr>
				<tr>
					<th><label for = "nickName"><em>*</em> 닉네임</label></th>
					<td>
						<input id = "nickName" class = "joininput nickName" name = "nickName" type = "text" placeholder="닉네임">
						<span class="guide nick ok">사용가능한 닉네임입니다.</span>
						<span class = "guide nick error">사용 불가능한 닉네임입니다.</span>
						<input type = "hidden" name = "nickNameCheck" id = "nickNameCheck" value = "0">
					</td>
				</tr>
				<tr>
					<th><label for = "birthday"><em>*</em> 생년월일</label></th>
					<td>
						<input class = "joininput birthday" name = "birth" type = "date" style = "text-indent : 0px;" required>
						<input type = "hidden" name = "birthCheck" id = "birthCheck" value = "0">
					</td>
				</tr>
				<tr>
					<th><label for = "gender"><em>*</em> 성별</label></th>
					<td>
						<input class = "gender" id = "man" name = "gender" type = "radio" value = "M" checked><label for = "man">남자</label>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<input class = "gender" id = "woman" name = "gender" type = "radio" value = "F"><label for = "woman">여자</label>
					</td>
				</tr>
				<tr>
					<th><label for = "email"><em>*</em> 이메일</label></th>
					<td>
						<input id = "email" class = "joininput email" name = "email" type = "text" placeholder="이메일" oninvalid="이메일을 입력하시오." required>
						@ <input id = "addEmail" class = "joininput addEmail" name = "addEmail" type = "text" required>
						<select id = "emailOption" class = "joininput emailOption" style = "width : 160px; height : 35px; font-size : 14px; margin-left : 10px;">
							<option value = "" selected>이메일 선택</option>
							<option value = "naver.com">naver.com</option>
							<option value = "daum.net">daum.net</option>
							<option value = "self">직접 입력</option>
						</select>
						<br>
						<input id = "emailCheckNumber" class = "joininput emailCheck" type = "text" placeholder="인증번호 입력..">
						<input type="button" id="emailcheck" value="이메일 인증" class="joininput checkBtn" onclick="sendMail();">
						<input type = "hidden" name = "emailCheck" id = "emailCheck" value = "0">
						<p class="guide email ok">일치하는 인증번호</p>
						<p class="guide email error">인증번호가 일치하지 않습니다.</p>
					</td>
				</tr>
				<tr>
					<th><em>*</em> 연락처</th>
					<td>
						<input type = "tel" class = "joininput phone" name = "phone" placeholder="-를 포함하여 입력해주세요." title = "ex) 010-1234-5678" required>
						<input type = "hidden" name = "phoneCheck" id = "phoneCheck" value = "0">
					</td>
				</tr>
				<tr>
					<th><em>*</em> 주소</th>
					<td>
						<input type="text" id="postcode" class = "joininput" placeholder="우편번호" readonly required>&nbsp;
						<input type="button" class = "joininput checkBtn" onclick="execDaumPostcode();" value="우편번호 찾기"><br>
						<input type="text" id="address" class = "joininput" name = "address" placeholder="주소" style = "width : 81.2%" readonly><br><p/>
						<input type="text" id="detailAddress" class = "joininput" name = "detailAddress" placeholder="상세주소" style = "width : 40%">&nbsp;&nbsp;
						<input type="text" id="extraAddress" class = "joininput" name = "extraAddress" placeholder="참고항목" style = "width : 40%">
						<input type = "hidden" name = "addressCheck" id = "addressCheck" value = "0">
					</td>
				</tr>
			</table>
			<div class= "joinButton">
				<button type = "button" onclick = "validate();">가입 신청</button><button onclick = "history.back();">취소</button>
			</div>
		</div>
	</form>

	<script>
		function execDaumPostcode() {
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
						if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {extraAddr += data.bname;}
						// 건물명이 있고, 공동주택일 경우 추가한다.
						if (data.buildingName !== '' && data.apartment === 'Y') {
							extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
						}
						// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
						if (extraAddr !== '') {
							extraAddr = ' (' + extraAddr + ')';
						}
						// 조합된 참고항목을 해당 필드에 넣는다.
						document.getElementById("extraAddress").value = extraAddr;
					} else {
						document.getElementById("extraAddress").value = '';
					}

					// 우편번호와 주소 정보를 해당 필드에 넣는다.
					document.getElementById('postcode').value = data.zonecode;
					document.getElementById("address").value = addr;
					// 커서를 상세주소 필드로 이동한다.
					document.getElementById("detailAddress").focus();
					$("#addressCheck").val(1);
				}
			}).open();
		}
		
		/***************************************************** 이메일 인증 *******************************************************/
		var joinCode = "";
 		function sendMail(){
			var email = $("#email").val() + '@' + $("#addEmail").val();
			var re = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
			
			if(re.test(email)){
				$.ajax({
					url: "sendMail.do",
					data: {email : email},
					type: "POST",
					success: function(data){
						if(data === true){
							joinCode = <%= session.getAttribute("joinCode") %>;
							
							alert(joinCode);
						} else{
							alert("실패!");
						}
					}, error : function(jqxhr, textStatus, errorThrown){
						console.log("메일 전송 실패");
						console.log(jqxhr);
						console.log(textStatus);
						console.log(errorThrown);
					}
				});
				
				alert("메일을 정상적으로 보냈습니다.");
			} else{
				alert("올바른 메일 형식이 아닙니다.");
			}
		}
		
		 /***************************************************** 체크 확인 *******************************************************/
		$(function(){
			// id 중복 여부 확이
			$("#id").on("keyup", function(){
				var userId = $(this).val().trim();
				
				if(userId.length < 4){
					$(".guide").hide();
                    $("#idDuplicateCheck").val(0);
                     
                    return;
				}
				
				$.ajax({
					url: "dupid.do",
					data: {id : userId},
					success: function(data){
						if(data.isUsable == true){
							$(".guide.id.error").hide();
							$(".guide.id.ok").show();
							$("#idDuplicateCheck").val(1);
						} else{
							$(".guide.id.error").show();
							$(".guide.id.ok").hide();
							$("#idDuplicateCheck").val(0);
						}
					}, error : function(jqxhr, textStatus, errorThrown){
						console.log("ajax 처리 실패");
						console.log(jqxhr);
						console.log(textStatus);
						console.log(errorThrown);
					}
				});
			});
			
			// 닉네임 확인
			$("#nickName").on("keyup", function(){
				var nickName = $(this).val().trim();
				var isnickName = /^[\w가-힣]{2,20}$/;
				
				if(nickName.length < 2 && isnickName.test(nickName) != true){
					$(".guide").hide();
                    $("#nickNameCheck").val(0);7
                     
                    return;
				}
				
				$.ajax({
					url: "isNick.do",
					data: {nickname : nickName},
					success: function(data){
						if(data == "true"){
							$(".guide.nick.error").hide();
							$(".guide.nick.ok").show();
							$("#nickNameCheck").val(1);
						} else{
							$(".guide.nick.error").show();
							$(".guide.nick.ok").hide();
							$("#nickNameCheck").val(0);
						}
					}, error : function(jqxhr, textStatus, errorThrown){
						console.log("ajax 처리 실패");
						console.log(jqxhr);
						console.log(textStatus);
						console.log(errorThrown);
					}
				});
			});
		});
		 
		// 인증번호 확인
		$("#emailCheckNumber").blur(function(){
			var emailCheckNumber = $("#emailCheckNumber").val();
			
			if(emailCheckNumber == joinCode){
				$(".guide.email.error").hide();
				$(".guide.eamil.ok").show();
				$("#eamilCheck").val(1);
			} else{
				$(".guide.email.ok").hide();
				$(".guide.eamil.error").show();
				$("#eamilCheck").val(1);
			}
		});
		 
		// 이름 정규식 확인
		$("#name").blur(function(){
			var name = $("#name").val();
			var isName = /^[가-힣]{2,4}$/;
			if(isName.test(name) != true){
				$("#name").val("");
			    $("#name").focus();
			    $("#nameCheck").val(0);
			} else{
				$("#nameCheck").val(1);
			}
		});
		
		// 비밀번호 정규식 확인
		$("#pass").blur(function() { // 엘리멘트 포커스가 잃었을 때 반응한다.
			var pwd = $("#pass").val();
         	// 최소 8 자, 최소 하나의 문자, 하나의 숫자 및 하나의 특수 문자
         	var isPW = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,16}$/;
         	if(isPW.test(pwd) != true){
         		$("#pass").val("");
			    $("#pass").focus();
			    $("#passCheck").val(0);
         	}else{
         		$("#passCheck").val(1);
         	}
		});
         
		// 비밀번호 확인
		$("#repassCheck").blur(function(){
			var pw1 = $("#pass").val(); // 비밀번호 텍스트 값
			var pw2 = $("#repassCheck").val(); // 비밀번호 확인 값
			
			if(pw1 != pw2){
				$(".guide.passcheck.ok").hide();
				$(".guide.passcheck.error").show();
				$("#pwd2").val(0);
			} else{
				$(".guide.passcheck.error").hide();
				$(".guide.passcheck.ok").show();
				$("#pwd2").val(1);
			}
		});
		
		// 폰번호 정규식 확인
		$("#phone").blur(function(){
			var phone = $("#phone").val();
			var phoneCheck = /^010-\d{3,4}-\d{4}$/;
			
			if(phoneCheck.test(phone) != true){
         		$("#phone").val("");
			    $("#phone").focus();
			    $("#phoneCheck").val(0);
         	} else{
         		$("#phoneCheck").val(1);
         	}
		});

		function validate() {
			var submit = true;

			if ($("#nameCheck").val() == 0) {
				alert("이름을 입력해주세요.");
				$("#name").focus();
				return false;
			}

			if ($("#idDuplicateCheck").val() == 0) {
				alert("사용가능한 아이디를 입력해주세요.");
				$("#id").focus();
				return false;
			}
			
			if ($("#passCheck").val() == 0) {
				alert("사용가능한 비밀번호를 입력해주세요.");
				$("#pass").focus();
				return false;
			}

			if ($("#pwd2").val() == 0) {
				alert("비밀번호를 다시 입력해주세요.");
				$("#repassCheck").focus();
				return false;
			}
			
			if ($("#nickNameCheck").val() == 0) {
				alert("사용가능한 닉네임를 입력해주세요.");
				$("#nickName").focus();
				return false;
			}
			
			/* if ($("#emailCheck").val() == 0) {
				alert("이메일 인증을 해주세요");
				$("#email").focus();
				return false;
			} */
			
			if ($("#addressCheck").val() == 0) {
				alert("주소를 입력해주세요.");
				$("#address").focus();
				return false;
			}

			if (submit) {
				$("#joinForm").submit();
			}
		}
	</script>
</body>
</html>