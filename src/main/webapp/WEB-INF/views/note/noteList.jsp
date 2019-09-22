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
#tb {
	margin: auto;
	width: 100%;
	border-collapse: collapse;
}

#tb tr td {
	padding: 5px;
}

#buttonTab {
	border-left: hidden;
	border-right: hidden;
}

.noteBox{
	width : 50%;
	margin: auto;
}

.tab {
  height: 100%;
}

.tab.gide{
	border : 5px solid #ccc;
	text-align: center;
	padding : 10px;
	font-size : 16px;
	line-height: 160%;
	margin : 10px auto;
}

.tablinks {
  width: 20%;
  height: 100%;
  float: left;
  border: none;
  outline: none;
  cursor: pointer;
  padding: 14px 16px;
  transition: 0.3s;
  font-size: 17px;
  font-weight: bold;
}

.tablinks.active {
  background-color: #ccc;
}

.tabcontent {
  display: none;
}

.paging {
	text-align: center;
	margin-top: 30px;
}

.paging li {
	display: inline-block;
	vertical-align: middle;
	border: 1px solid #ebeae9;
}

.paging li a {
	display: block;
	width: 32px;
	height: 32px;
	line-height: 32px;
	color: #898786;
}

.paging li a:hover {
	color: #ff5a20;
	text-decoration: underline;
}

.paging li .prev a {
	margin-right: 23px;
}

.paging li .next a {
	margin-left: 23px;
}

.paging li .first a, .paging li .prev a, .paging li .next a, .paging li .last a
	{
	margin: 0.2px;
	width: 30px;
	height: 30px;
	color: transparent;
}

/* The Modal (background) */
.modal {
  display: none; 
  position: fixed; 
  z-index: 1; 
  left: 0;
  top: 0;
  width: 100%; 
  height: 100%; 
  overflow: auto; 
  background-color: rgb(0,0,0); 
  background-color: rgba(0,0,0,0.4); 
  padding-top: 60px;
}

/* Modal Content/Box */
.modal-content {
  background-color: #fefefe;
  margin: 5% auto 15% auto; 
  width: 40%;
}

.container{
	padding : 16px;
}

.modal-content label{
	font-size : 16px;
	vertical-align: top;
}

.modal-content input[type=text]{
	width: 80%;
    height: 25px;
    font-size: 15px;
    text-indent: 10px;
}

/* The Close Button (x) */
.close {
  position: absolute;
  right: 20px;
  top: 10px;
  color: #000;
  font-size: 35px;
  font-weight: bold;
  z-index: 5;
}

.close:hover,
.close:focus {
  color: red;
  cursor: pointer;
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
<header style="margin-bottom: 5%;">
	<jsp:include page="../common/header.jsp" />
</header>
<body>
	
	<div class = "noteBox">
		<div style = "height : 50px;">
			<h1>쪽지</h1>
			<button class="tablinks active" onclick="openTab(event, 'tab1')">받은 쪽지</button>
			<button class="tablinks" onclick="openTab(event, 'tab2')">보낸 쪽지</button>
		</div>

		<br> <br>

		<div class="tab gide">
			발송된 쪽지는 취소가 불가능합니다.
		</div>

		<div class="tab">
			<div id="tab1" class="tabcontent">
				<table border="1" id="tb">
					<tr style="background: pink;">
						<th>번호</th>
						<th width="300">제목</th>
						<th>발신인</th>
						<th>수신인</th>
						<th>날짜</th>
						<th>읽음 여부</th>
					</tr>
					<c:forEach var="n" items="${ responList }">
						<tr>
							<td align="center">${ n.nNo }</td>
							<td align="left">
								<c:if test="${ !empty loginUser }">
									<c:url var="ndetail" value="ndetail.do">
										<c:param name="nNo" value="${ n.nNo }" />
										<c:param name="page" value="${ responPi.currentPage }" />
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
							<td align="center"><c:if test = "${ n.read eq 'Y' }" >읽음</c:if><c:if test = "${ n.read ne 'Y' }" >읽지 않음</c:if></td>
						</tr>
					</c:forEach>
					<tr>
						<td colspan="6" align="right" id="buttonTab">
							<c:if test="${ !empty loginUser }">
								<button type="button" onclick="document.getElementById('popup').style.display='block'">쪽지 보내기</button>
							</c:if>
						</td>
					</tr>
				</table>
					<ol class="paging">
					<li class="first"><c:if test="${ responPi.currentPage <= 1 }">
							<a>&lt;&lt;</a>
						</c:if> <c:if test="${ responPi.currentPage > 1 }">
							<c:url var="first" value="noteList.do">
								<c:param name="page" value="${ responPi.startPage }" />
							</c:url>
							<a href="${ first }">&lt;&lt;</a>
						</c:if></li>

					<li class="prev"><c:if test="${ responPi.currentPage <= 1 }">
							<a>&lt;</a>
						</c:if> <c:if test="${ responPi.currentPage > 1 }">
							<c:url var="prev" value="noteList.do">
								<c:param name="page" value="${ responPi.currentPage - 1 }" />
							</c:url>
							<a href="${ prev }">&lt;</a>
						</c:if>
					</li>
					
					<c:forEach var="respon" begin="${ responPi.startPage }" end="${ responPi.endPage }">
						<c:if test="${ respon eq responPi.currentPage }">
							<li><font size="4"><a style="color: red;">${ respon }</a></font></li>
						</c:if>
						
						<c:if test="${ respon ne responPi.currentPage }">
							<c:url var="pagination" value="noteList.do">
								<c:param name="page" value="${ respon }" />
							</c:url>
							<li><a href="${ pagination }">${ respon }</a></li>
						</c:if>
					</c:forEach>

					<li class="next"><c:if
							test="${ responPi.currentPage >= responPi.maxPage }">
							<a>&gt;</a>
						</c:if> <c:if test="${ responPi.currentPage < responPi.maxPage }">
							<c:url var="next" value="noteList.do">
								<c:param name="page" value="${ responPi.currentPage + 1 }" />
							</c:url>
							<a href="${ next }">&gt;</a>
						</c:if></li>

					<li class="last"><c:if test="${ responPi.currentPage >= responPi.maxPage }">
							<a>&gt;&gt;</a>
						</c:if> <c:if test="${ responPi.currentPage < responPi.maxPage }">
							<c:url var="last" value="noteList.do">
								<c:param name="page" value="${ responPi.maxPage }" />
							</c:url>
							<a href="${ last }">&gt;&gt;</a>
						</c:if>
					</li>
				</ol>
			</div>
			
			<div id="tab2" class="tabcontent">
					<table border="1" id="tb">
					<tr style="background: pink;">
						<th>번호</th>
						<th width="300">제목</th>
						<th>발신인</th>
						<th>수신인</th>
						<th>날짜</th>
						<th>읽음 여부</th>
					</tr>
					<c:forEach var="n" items="${ sendList }">
						<tr>
							<td align="center">${ n.nNo }</td>
							<td align="left">
								<c:if test="${ !empty loginUser }">
									<c:url var="ndetail" value="ndetail.do">
										<c:param name="nNo" value="${ n.nNo }" />
										<c:param name="page" value="${ sendPi.currentPage }" />
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
							<td align="center">
								<c:if test = "${ n.read eq 'Y' }" >읽음</c:if><c:if test = "${ n.read ne 'Y' }" >읽지 않음</c:if>
							</td>
						</tr>
					</c:forEach>
					<tr>
						<td colspan="6" align="right" id="buttonTab">
							<c:if test="${ !empty loginUser }">
								<button type="button" onclick="document.getElementById('popup').style.display='block'">쪽지 보내기</button>
							</c:if>
						</td>
					</tr>
				</table>
				<ol class="paging">
					<li class="first"><c:if test="${ sendPi.currentPage <= 1 }">
							<a>&lt;&lt;</a>
						</c:if> <c:if test="${ sendPi.currentPage > 1 }">
							<c:url var="first" value="noteList.do">
								<c:param name="page" value="${ sendPi.startPage }" />
							</c:url>
							<a href="${ first }">&lt;&lt;</a>
						</c:if></li>

					<li class="prev"><c:if test="${ sendPi.currentPage <= 1 }">
							<a>&lt;</a>
						</c:if> <c:if test="${ sendPi.currentPage > 1 }">
							<c:url var="prev" value="noteList.do">
								<c:param name="page" value="${ sendPi.currentPage - 1 }" />
							</c:url>
							<a href="${ prev }">&lt;</a>
						</c:if></li>

					<c:forEach var="send" begin="${ sendPi.startPage }" end="${ sendPi.endPage }">
						<c:if test="${ send eq sendPi.currentPage }">
							<li><font size="4"><a style="color: red;">${ send }</a></font></li>
						</c:if>

						<c:if test="${ send ne sendPi.currentPage }">
							<c:url var="pagination" value="noteList.do">
								<c:param name="page" value="${ send }" />
							</c:url>
							<li><a href="${ pagination }">${ send }</a></li>
						</c:if>
					</c:forEach>

					<li class="next"><c:if
							test="${ sendPi.currentPage >= sendPi.maxPage }">
							<a>&gt;</a>
						</c:if> <c:if test="${ sendPi.currentPage < sendPi.maxPage }">
							<c:url var="next" value="noteList.do">
								<c:param name="page" value="${ sendPi.currentPage + 1 }" />
							</c:url>
							<a href="${ next }">&gt;</a>
						</c:if></li>

					<li class="last"><c:if test="${ sendPi.currentPage >= sendPi.maxPage }">
							<a>&gt;&gt;</a>
						</c:if> <c:if test="${ sendPi.currentPage < sendPi.maxPage }">
							<c:url var="last" value="noteList.do">
								<c:param name="page" value="${ sendPi.maxPage }" />
							</c:url>
							<a href="${ last }">&gt;&gt;</a>
						</c:if>
					</li>
				</ol>
			</div>
		</div>
	</div>
	
	<div id="popup" class="modal">
		<form class="modal-content animate" action="noteInsert.do" method="post">
			<div style = "height : 45px; position: relative; padding: 1px 0px; background-color: lightpink; text-indent: 20px;">
				<h1>쪽지 보내기</h1>
				<span onclick="document.getElementById('popup').style.display='none'" class="close" title="Close Modal">&times;</span>
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
							<input type="text" id = respon name="respon">
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
			<div style = "text-align: right; margin: 0px 120px 20px 0px;">
				<button>보내기</button>
			</div>
			<input type="hidden" name="bWriter" value="${ suppot.bWriter }">
		</form>
	</div>

</body>
<script>
function openTab(evt, tabName) {
    var i, tabcontent, tablinks;
    tabcontent = $(".tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
      tabcontent[i].style.display = "none";
    }
    tablinks = $(".tablinks");
    console.log(tablinks);
    for (i = 0; i < tablinks.length; i++) {
      tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    document.getElementById(tabName).style.display = "block";
    evt.currentTarget.className += " active";
}

window.onload = function(){
	$(".tabcontent")[0].style.display = "block";
}

// Get the modal
var modal = document.getElementById('popup');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>
<footer style="margin-top: 10%;">
	<jsp:include page="../common/footer.jsp" />
</footer>
</html>