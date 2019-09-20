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
	#id, #nametext, #emailtext, #birthday, #cNum {
	width: 310px;
	height: 30px;
	font-size: large;
	border-radius: 12px;
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
  <div class="logintext"><h3>비밀번호 찾기를 위한 아이디를 입력해주세요.</h3></div>
  <br>
  <div>
  <form action="pwdIdSearch.do" class="login-container" method="post">
  	<div class="logintext"><input type="text" placeholder="아이디"  id="id" name="userId" required="required"></div><br>
    <div class="logintext">
    <input type="submit" value="다음" id="btn3">&nbsp;&nbsp;<input type="button" onclick="back();" value="취소" id="btn3">
    </div> 
   </form>
    </div>
</div>
</div>
</div>
<script>
function back(){
	location.href="loginView.do";	
}
</script>
<jsp:include page="../common/footer.jsp"/>
</body>

</html>