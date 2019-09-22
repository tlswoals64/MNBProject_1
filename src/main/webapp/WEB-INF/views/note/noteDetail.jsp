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
  width : 60%;
  margin: auto;
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
</style>
<body>
	<header style="margin-bottom: 5%;">
		<jsp:include page="../common/header.jsp" />
	</header>
	
		<form class="modal-content animate" action="noteList.do" method="post">
			<div style = "height : 45px; position: relative; background-color: lightpink; text-indent: 20px; padding: 5px 0px;">
				<h1>${ note.nTitle }</h1>
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
							<label>${ note.send }</label>
						</td>
					</tr>
					<tr>
						<th><label>수신인 </label></th>
						<td>
							<label>${ note.respon }</label>
						</td>
					</tr>
					<tr>
						<th><label>작성일 </label></th>
						<td>
							<label>${ note.enroll_Date }</label>
						</td>
					</tr>
					<tr>
						<th><label for = "nContent">내용</label></th>
						<td>
							<textarea rows="10" cols="60" style = "margin-right: 10px; resize: none;" id = "nContent" name="nContent" readonly>${ note.nContent }</textarea><strong style = "vertical-align: bottom;">0/200</strong>
						</td>
					</tr>
				</table>
			</div>
			<div>
				<button>목록</button>
			</div>
		</form>
</body>
<footer style="margin-top: 10%;">
	<jsp:include page="../common/footer.jsp" />
</footer>
</html>