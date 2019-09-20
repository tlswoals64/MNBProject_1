<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	.pr{
	font-size: 16px;
	width: 80px;
	hieght:30px;

}
.guide{display: none; font-size: 15px; top: 12px; right : 10px; margin-top : 10px;}

.ok{color: green;}

.error{color: red;}


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
  	<c:if test="${!empty pwdSearch }">
  	<div class="logintext"><div class="pr">아이디</div><input type="text" placeholder="아이디"  id="id" value="${param.userId}" name="userId" readonly></div><br>
  	</c:if>
  	<c:if test="${empty pwdSearch }">
  	<div class="logintext"><div class="pr">아이디</div><input type="text" placeholder="아이디"  id="id" value="" name="userId"></div><br>
  	</c:if>
	<div class="logintext"><div class="pr">이름</div><input type="text" placeholder="이름"   id="nametext" value="" name="userName" required="required"></div><br>
	<div class="logintext"><div class="pr">생년월일</div><input type="date" placeholder="생년월일"  id="birthday" name="birth" required="required"></div><br>
	<div class="logintext"><div class="pr">이메일주소</div><input type="email" placeholder="이메일주소" id="emailtext" name="email" required="required">&nbsp;&nbsp;&nbsp;<input type="button" id="emailcheck" value="인증번호 발송" onclick="sendMail();"></div><br>
	<div class="logintext"><input type="text" placeholder="인증번호" id="cNum" required="required"><br></div>
	<input type = "hidden" name = "emailCheck" id = "emailCheck" value = "0">
	<p class="guide email ok">일치하는 인증번호</p>
	<p class="guide email error">인증번호가 일치하지 않습니다.</p>
	<br>

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
	location.href="loginView.do";
}

var checkCode = "";
function sendMail(){
	var email = $("#emailtext").val();
	var re = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
	
	if(re.test(email)){
		$.ajax({
			url: "pwdSendMail.do",
			data: {email : email},
			type: "POST",
			success: function(data){
				if(data === 'fail'){
					alert("실패!");
				} else{
					checkCode= data;
					console.log(checkCode);
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
	// 인증번호 확인
	$("#cNum").blur(function(){
		var cNum = $("#cNum").val();
		console.log(checkCode);
		if(cNum == checkCode){
			$(".guide.email.error").hide();
			$(".guide.email.ok").show();
			$("#emailCheck").val(1);
		} else{
			$(".guide.email.ok").hide();
			$(".guide.email.error").show();
			$("#emailCheck").val(0);
		}
	});	
}

</script>
<jsp:include page="../common/footer.jsp"/>
</body>

</html>