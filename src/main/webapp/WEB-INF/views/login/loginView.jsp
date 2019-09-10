<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/js/jquery-3.4.1.min.js"></script>
<style>


.loginmenu {
	display: flex;
	width: 1600px;
	height: auto;
	margin: auto;
}

.login {
	width: 600px;
	display: inline-block;
}

.logintext {
	width: 430px;
	height: 60px;
	margin: auto;
}

#userId {
	width: 420px;
	height: 50px;
	font-size: large;
	border-radius: 12px;
}

#userPwd {
	width: 420px;
	height: 50px;
	font-size: large;
	border-radius: 12px;
}

.ltable {
	margin: auto;
}

.btn2 {
	width: 420px;
	height: 50px;
	margin: auto;
	font-size: 24px;
	color: white;
	text-align: center;
	background: #9abf7f;
	border-radius: 12px;
}

#emailCheck {
	width: 130px;
	height: 50px;
	margin: auto;
	font-size: 16px;
	color: white;
	text-align: center;
	background: #9abf7f;
	border-radius: 12px;
}
</style>


</head>
<body>
<jsp:include page="../common/header.jsp"/>

<div style="height:150px">

</div>
<div class="loginmenu">

<div class="login">
<img src="resources/images/login/login.jpg" style="width:550px; height:350px; border-radius: 24px">
</div>
<div class="login">  
  <div class="logintext"><h1 style="text-align:center">Log in</h1></div>
  <br>
  <div>
  <form action="login.do" class="login-container" method="post"> 
     <table class="ltable">
    <tr>
    <td> <div class="logintext"><input type="text" placeholder="아이디"  id="userId" name="userId" required="required"></div>
    </td>
    <tr>
    <td><div class="logintext"><input type="password" placeholder="비밀번호" id="userPwd" name="userPwd" required="required"></div>
    </td>
    </tr>
    </table>
    <div class="logintext">
    <input type="submit" value="로그인" id="btn1" class="btn2">
    </div>    
    <div class="logintext">
    <input type="button" onclick="location.href='memberSingUp.do';" value="회원가입" id="btn2" class="btn2">
    </div>
    <div class="logintext" style="width:240px">
    <a href="idSearchView.do"><img src="resources/images/login/ID.png" style="width:30px; height:30px">아이디 찾기</a>&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="pwdIdCheck.do"><img src="resources/images/login/password.png" style="width:30px; height:30px">비밀번호 찾기</a>
    </div>
     </form>
    </div>
</div>

</div>


<jsp:include page="../common/footer.jsp"/>
</body>
</html>