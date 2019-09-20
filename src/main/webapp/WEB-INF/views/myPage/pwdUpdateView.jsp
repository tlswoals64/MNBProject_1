<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#in{
		min-height:50vh;
	}
   	.loginmenu{
   		display:flex;
		width:1600px;
		height:auto;
		margin:auto;
	}
	.login{
	margin:auto;
	display:inline-block;
	}
	.ltable{
		margin:auto;
	}
.guide{display: none; font-size: 15px; top: 12px; right : 10px; margin-top : 10px;}
}
</style>
<link rel="stylesheet" href="resources/css/login/idSearchForm.css">
</head>

<body>
<jsp:include page="../common/header.jsp"/>
<div id="in">
<div style="height:150px"></div>
<div class="loginmenu">

<div class="login">  
  <div class="logintext"><h3>비밀번호를 입력해주세요</h3></div>
  <br>
  <div>
  <form action="pwdUpdate.do" class="login-container" method="post">
  	<div class="logintext"><input type="password" placeholder="현재 비밀번호"  class="id" name="userPwd1" required="required"></div><br>
  	<div class="logintext"><input type="password" placeholder="새로운 비밀번호"  class="id" id="newPassword" name="newPassword" required="required"></div>
  	<p style = "font-size : 12px; margin : 0px; margin-top : 5px;">숫자, 영문, 특수문자를 포함하여 8자리 이상 16자리 이하로 입력하시오.</p><br>
  	<input type = "hidden" name = "passCheck" id = "passCheck" value = "0">
  	<div class="logintext"><input type="password" placeholder="비밀번호 확인"  class="id" id="newPassword2" name="newPassword2" required="required"></div><br>
  		<div class = "guide passcheck ok" style="color:green">사용가능한 비밀번호입니다.</div>
		<div class = "guide passcheck error" style="color:red">비밀번호가 일치하지 않습니다.</div>
  	<input type = "hidden" name = "pwd2" id = "pwd2" value = "0"><br>
    <div class="logintext">
    <input type="submit" value="변경" id="btn3">&nbsp;&nbsp;<input type="button" onclick="back();" value="취소" id="btn3">
    </div> 
   </form>
    </div>
</div>
</div>
</div>
<script>
function back(){
	location.href="javascript:history.go(-1);";	
}

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