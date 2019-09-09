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

#id, #nametext, #emailtext, #birthday, #cNum {
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
  <div class="logintext"><h1 style="text-align:center">아이디 찾기</h1></div>
  <br>
  <div>
  <form action="idSearch.do" class="login-container" method="post">
	<div class="logintext"><input type="text" placeholder="이름"  id="nametext" name="userName"></div><br>
	<div class="logintext"><input type="date" placeholder="생년월일"  id="birthday" name="birth"></div><br>
	<div class="logintext"><input type="email" placeholder="이메일주소" id="emailtext" name="email"></div>
	<br>
    <div class="logintext">
    <input type="submit" value="아이디 찾기" id="btn2">&nbsp;&nbsp;<input type="button" onclick="back();" value="취소" id="btn2">
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