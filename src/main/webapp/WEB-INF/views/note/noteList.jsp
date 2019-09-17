<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style type="text/css">
	#tb{margin: auto; width: 700px; border-collapse: collapse;}
	#tb tr td{padding: 5px;}
	#buttonTab{border-left: hidden; border-right: hidden;}
</style>
<body>
	<header style="margin-bottom: 5%;">
		<jsp:include page="../common/header.jsp" />
	</header>
	
	<h1 align="center">게시글 목록</h1>
	
	<h3 align="center">총 게시글 갯수 : ${ pi.listCount }</h3>
	
	<table border="1" id="tb">
		<tr style="background: pink;">
			<th>번호</th>
			<th width="300">제목</th>
			<th>발신인</th>
			<th>수신인</th>
			<th>날짜</th>
			<th>읽음 여부</th>
		</tr>
		<c:forEach var="n" items="${ list }">
		<tr>
			<td align="center">${ n.nNo }</td>
			
			<td align="left">
				<c:if test="${ !empty loginUser }">
					<c:url var="ndetail" value="ndetail.do">
						<c:param name="nNo" value="${ n.nNo }"/>
						<c:param name="page" value="${ pi.currentPage }"/>
					</c:url>
					<a href="${ ndetail }">${ n.nTitle }</a>
				</c:if>
				<c:if test="${ empty loginUser }">
					${ n.nTitle }		
				</c:if>
			</td>
			
			<td align="center">${ n.send }</td>
			<td align="center">${ n.respon }</td>
			<td align="center">${ n.enroll_Date }</td>
			<td align="center">${ n.read }</td>
		</tr>
		</c:forEach>
		<tr>
			<td colspan="6" align="right" id="buttonTab">
				<c:if test="${ !empty loginUser }">
					&nbsp; &nbsp; &nbsp;
					<c:url var="noteInsertForm" value="noteInsertForm.do">
						<c:param name="bWriter" value="${ loginUser.nickName }"></c:param>
					</c:url>
					<button type = "button" onclick="location.href='${ noteInsertForm }'">글쓰기</button>
				</c:if>
			</td>
		</tr>
	</table>
	<footer style="margin-top: 10%;">
		<jsp:include page="../common/footer.jsp" />
	</footer>
</body>
</html>