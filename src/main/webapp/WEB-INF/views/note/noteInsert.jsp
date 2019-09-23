<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
.container{
	padding : 16px;
}

/* Modal Content/Box */
.modal-content {
  background-color: #fefefe;
  width: 100%;
  height: 100%;
}

.modal-content label{
	font-size : 16px;
	vertical-align: top;
}

.modal-content input[type=text]{
	width: 60%;
    height: 25px;
    font-size: 15px;
    text-indent: 10px;
}

/* Add Zoom Animation */
.animate {
  -webkit-animation: animatezoom 0.6s;
  animation: animatezoom 0.6s
}

@-webkit-keyframes animatezoom {
  from {-webkit-transform: scale(0)} 
  to {-webkit-transform: scale(1)}
}
  
@keyframes animatezoom {
  from {transform: scale(0)}
  to {transform: scale(1)}
}
</style>
<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
<body>
		<form id = "sendNote" class="modal-content animate" action="noteInsert.do" method="post">
			<div style = "height : 45px; position: relative; background-color: lightpink; text-indent: 20px;">
				<h1>쪽지 보내기</h1>
			</div>
			<div class = "container">
				<table>
					<colgroup>
						<col width="20%">
						<col width="50%">
					</colgroup>
					<tr>
						<th><label>발신인 </label></th>
						<td>
							<label>${ loginUser.nickName }</label>
							<input type="hidden" name="send" value="${ loginUser.userId }">
						</td>
					</tr>
					<tr>
						<th><label for = "respon">수신인 </label></th>
						<td>
							<input type="text" value=${ respon.nickName }>
							<input type="text" id = "respon" name="respon" value=${ respon.userId }>
						</td>
					</tr>
					<tr>
						<th><label for = "nTitle">제목 </label></th>
						<td>
							<input type="text" id = "nTitle" name="nTitle">
						</td>
					</tr>
					<tr>
						<th><label for = "nContent">내용</label></th>
						<td>
							<textarea rows="10" cols="60" style = "margin-right: 10px; resize: none;" id = "nContent" name="nContent"></textarea><strong style = "vertical-align: bottom;">0/200</strong>
						</td>
					</tr>
				</table>
			</div>
			<div>
				<button type = "button" onclick = "sendNote();">보내기</button>
			</div>
			<input type="hidden" name="bWriter" value="${ suppot.bWriter }">
		</form>
		<script>
			function sendNote(){
				$("#sendNote").submit();
				window.close();
			}
		</script>
</body>
</html>