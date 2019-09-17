<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
#send li{
display: inline-block;
}
</style>
<body>
	<h2>쪽지</h2>
	<form action = "noteInsert.do" method = "post">
		<div>
			수신인 : <input type="text" name = "respon" value=${ writer }>
		</div>
		<div>
			발신인 : <input type="text" name = "send" value=${ loginUser.nickName }>
		</div>
		<div>
			제목 : <input type = "text" name = "nTitle">
			<br>
			내용 :<textarea rows="10" cols="30" name = "nContent"></textarea>
		</div>
		<div>
			<ul id = "send">
				<li>
					<button>전송</button>
				</li>
				<li>
					<button type = "button" onclick = "window.close();">취소</button>
				</li>
			</ul>
		</div>
	</form>
	<script>
		
	</script>
</body>
</html>