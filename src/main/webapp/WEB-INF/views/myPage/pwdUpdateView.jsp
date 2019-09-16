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
  	<div class="logintext"><input type="password" placeholder="새로운 비밀번호"  class="id" name="newPassword" required="required"></div><br>
  	<div class="logintext"><input type="password" placeholder="비밀번호 확인"  class="id" name="newPassword2" required="required"></div><br>
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
</script>
<jsp:include page="../common/footer.jsp"/>
</body>

</html>