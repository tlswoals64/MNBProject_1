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
  <form action="idSearch.do" class="login-container" method="post">
	<div class="logintext"><input type="password" placeholder="새로운 비밀번호"  id="newPassword" name="newPassword" required="required"></div><br>
	<div class="logintext"><input type="password" placeholder="비밀번호 확인"  id="newPassword2" name="newPassword2" required="required"></div><br>
	<br>
    <div class="logintext">
    <input type="submit" value="비밀번호 변경" id="btn2">&nbsp;&nbsp;<input type="button" onclick="location.href='loginView.do';" value="취소" id="btn2">
    </div> 
   </form>
    </div>
</div>
</div>
</div>

<jsp:include page="../common/footer.jsp"/>
</body>

</html>