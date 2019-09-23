<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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

.myPageDetail{
	padding : 50px 10%;
}

.joininput{
	height : 30px;
	width : 50%;
	font-size: 15px;
	text-indent : 10px;
	border : 1px solid #a9a9a9;
	border-radius: 2px;
}

table{
	width : 100%;
	height : 800px;
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

.updateButton{
	text-align: center;
	margin-top: 20px;
	padding-top : 20px;
}

.updateButton button{
	width : 20%;
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

.updateButton button:hover{
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



.name, .id, .pass, .passCheck, .phone, .nickName .gender {
	width : 50%;
}
.address{
	width : 70%;
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
	
		<div class = "myPageDetail">
			<table>
				<caption>내정보보기</caption>
				<colgroup>
					<col width = "30%">
					<col width = "70%">
				</colgroup>
				<tr>
					<th><label for = "id"><em>*</em> 아이디</label></th>
					<td>
						<input id = "id" class = "joininput id" name = "userId" type = "text"  value="${m.userId }"readonly>
					</td>
				</tr>
				<tr>
					<th><label for = "name"><em>*</em> 이름</label></th>
					<td>
						<input id = "name" name = "userName" class = "joininput name" type = "text" value="${m.userName }"readonly>
					</td>
				</tr>
				<tr>
					<th><label for = "nickName"><em>*</em> 닉네임</label></th>
					<td>
						<input id = "nickName" class = "joininput nickName" name = "nickName" type = "text"  value="${m.nickName }"readonly>
					</td>
				</tr>
				<tr>
					<th><label for = "birthday"><em>*</em> 생년월일</label></th>
					<td>
						<input class = "joininput birthday" name = "birth" type = "text"  value="${m.birth }"readonly>
					</td>
				</tr>
				<tr>
					<th><label for = "gender"><em>*</em> 성별</label></th>
					<td>
						<c:if test="${m.gender eq 'M' }">
						<input class="joininput" id = "man"  name = "gender" type = "text" value = "남자" readonly>
						</c:if>
						<c:if test="${m.gender eq 'F' }">
						<input class="joininput" id = "man"  name = "gender" type = "text" value = "여자" readonly>
						</c:if>
					</td>
				</tr>
				<tr>
					<th><label for = "email"><em>*</em> 이메일</label></th>
					<td>
						<input id = "email" class = "joininput email" name = "email" type = "text"  value="${m.email }"readonly>
						<br>
					</td>
				</tr>
				<tr>
					<th><em>*</em> 연락처</th>
					<td>
						<input id = "phone" type = "tel" class = "joininput phone" name = "phone"  value="${m.phone }"readonly>
						<input type = "hidden" name = "phoneCheck" id = "phoneCheck" value = "0">
					</td>
				</tr>
				<tr>
					<th><em>*</em> 주소</th>
					<td>
						<input type="text" id="address" name="address" class = "joininput"  value="${m.address }" readonly>
					</td>
				</tr>
			</table>
			<div class= "updateButton">
				<button type = "button" onclick ="location.href='updateMemberView.do'">회원정보수정</button>
				<c:url var="mdelete" value="mdelete.do">
						<c:param name="id" value="${ loginUser.userId }"/><!-- 넘어갈 값이 있으니 param을 넣게 c:url을 쓰자 -->
				</c:url>
				<button type ="button" onclick="location.href='pwdUpdateView.do'">비밀번호변경</button>
				<button onclick="deleteMember()">회원탈퇴</button>
				<button onclick = "history.back();">취소</button>
			</div>
		</div>
	<script>
	
	function deleteMember(){
		var bool = confirm("정말로 탈퇴하시겠습니까?");
		
		if(bool){
		location.href='${ mdelete }';
		}
	};
	</script>
</body>
</html>