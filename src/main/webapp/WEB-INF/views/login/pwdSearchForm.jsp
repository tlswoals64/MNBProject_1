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

	#id,#nametext,#emailtext,#birthday{
		width:310px;
		height:30px;
		font-size: large;
		border-radius: 12px;
	}
	.ltable{
		margin:auto;
	}

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
  <div class="logintext"><h1 style="text-align:center">비밀번호 찾기</h1></div>
  <br>
  <div>
  <form action="pwdSerach.do" class="login-container" method="post">
  	<div class="logintext"><input type="text" placeholder="아이디"  id="id" value="${param.userId}" name="userId" readonly></div><br>
	<div class="logintext"><input type="text" placeholder="이름"   id="nametext" value="" name="userPwd" required="required"></div><br>
	<div class="logintext"><input type="date" placeholder="생년월일"  id="birthday" name="birth" required="required"></div><br>
	<div class="logintext"><input type="email" placeholder="이메일주소" id="emailtext" value="" name="email" required="required">&nbsp;&nbsp;&nbsp;<input type="button" id="emailCheck" value="인증번호 발송"></div>
	<br>
	<div class="logintext"><input type="text" placeholder="인증번호" id="cNum" value="" required="required"><br></div>
	
    <div class="logintext">
    <br>
     <input type="submit" value="비밀번호 찾기" id="btn2">&nbsp;&nbsp;<input type="button" onclick="back();" value="취소" id="btn2">
    </div> 
   </form>
    </div>
</div>
</div>
</div>
<script>
function back(){
	location.href="javascript:history.go(-2);";	
}
</script>
<jsp:include page="../common/footer.jsp"/>
</body>

</html>