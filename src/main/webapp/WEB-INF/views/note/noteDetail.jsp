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
	<div>
		수신인 : <input type="text" name="respon" value=${ note.respon }>
	</div>
	<div>
		발신인 : <input type="text" name="send" value=${ note.send }>
	</div>
	<div>
		제목 : <input type="text" name="nTitle" value=${ note.nTitle }>
		<br> 내용 :
		<textarea rows="10" cols="30" name="nContent">${ note.nContent }</textarea>
	</div>
	<script>
		
	</script>
</body>
</html>