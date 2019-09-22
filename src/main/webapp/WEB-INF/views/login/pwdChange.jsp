<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.loginmenu {
	display: flex;
	width: 1600px;
	height: auto;
	margin: auto;
}

.login {
	margin: auto;
	display: inline-block;
}

.ltable {
	margin: auto;
}

#btn2 {
	width: 150px;
	height: 35px;
	margin: auto;
	font-size: 20px;
	color: white;
	text-align: center;
	background: #9abf7f;
	border-radius: 12px;
}

#btn3 {
	width: 150px;
	height: 35px;
	margin: auto;
	font-size: 20px;
	color: white;
	text-align: center;
	background: #9abf7f;
	border-radius: 12px;
}

#emailCheck {
	width: 110px;
	height: 35px;
	margin: auto;
	font-size: 14px;
	color: white;
	text-align: center;
	background: #9abf7f;
	border-radius: 12px;
}

#id, #newPassword, #newPassword2, #cNum {
	width: 310px;
	height: 30px;
	font-size: large;
	border-radius: 12px;
}
.guide{display: none; font-size: 15px; top: 12px; right : 10px; margin-top : 10px;}
}
</style>

</head>

<body>
<jsp:include page="../common/header.jsp"/>
<div id="in">
<div style="height:150px"></div>
<div class="loginmenu">

<div class="login">  
  <div class="logintext"><h1 style="text-align:center">비밀번호 변경</h1></div>
  <br>
  <div>
  <form action="pwdcUpdate.do" class="login-container" method="post">
  	<input type="hidden" name="userId" id="userId" value="${pwdSearchId}">
	<div class="logintext"><input type="password" placeholder="새로운 비밀번호"  id="newPassword" name="newPassword" required="required"></div>
	<p style = "font-size : 12px; margin : 0px; margin-top : 5px;">숫자, 영문, 특수문자를 포함하여 8자리 이상 16자리 이하로 입력하시오.</p><br>
  	<input type = "hidden" name = "passCheck" id = "passCheck" value = "0">
	<div class="logintext"><input type="password" placeholder="비밀번호 확인"  id="newPassword2" name="newPassword2" required="required"></div>
	<div class = "guide passcheck ok" style="color:green">사용가능한 비밀번호입니다.</div>
	<div class = "guide passcheck error" style="color:red">비밀번호가 일치하지 않습니다.</div>
  	<input type = "hidden" name = "pwd2" id = "pwd2" value = "0">
	<br>
    <div class="logintext">
    <input type="submit" value="비밀번호 변경" id="btn2">&nbsp;&nbsp;<input type="button" onclick="location.href='loginView.do';" value="취소" id="btn2">
    </div> 
   </form>
    </div>
</div>
</div>
</div>
<script>
$("#newPassword").blur(function() { // 엘리멘트 포커스가 잃었을 때 반응한다.
	var pwd = $("#newPassword").val();
 	// 최소 8 자, 최소 하나의 문자, 하나의 숫자 및 하나의 특수 문자
 	var isPW = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,16}$/;
 	if(isPW.test(pwd) != true){
 		$("#newPassword").val("");
	    $("#passCheck").val(0);
 	}else{
 		$("#passCheck").val(1);
 	}
});
 
// 비밀번호 확인
$("#newPassword2").keyup(function(){
	var pw1 = $("#newPassword").val(); // 비밀번호 텍스트 값
	var pw2 = $("#newPassword2").val(); // 비밀번호 확인 값
	
	if(pw1 != pw2 || pw1 == "" || pw2 == ""){
		$(".guide.passcheck.ok").hide();
		$(".guide.passcheck.error").show();
		$("#pwd2").val(0);
	} else{
		$(".guide.passcheck.error").hide();
		$(".guide.passcheck.ok").show();
		$("#pwd2").val(1);
	}
});
</script>

<jsp:include page="../common/footer.jsp"/>
</body>

</html>