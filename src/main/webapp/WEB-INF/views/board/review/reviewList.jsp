<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
html, body, div, span, applet, object, iframe,h1, h2, h3, h4, h5, h6, p, blockquote, pre,a, abbr, acronym, address, big, cite, code,del, dfn, em, img, ins, kbd, q, s, samp,small, strike, strong, sub, sup, tt, var,b, u, i, center,dl, dt, dd, ol, ul, li,fieldset, form, label, legend,table, caption, tbody, tfoot, thead, tr, th, td,article, aside, canvas, details, embed, figure, figcaption, footer, header, hgroup, menu, nav, output, ruby, section, summary,time, mark, audio, video{margin:0;padding:0;border:0;font-size:100%;font:inherit;vertical-align:baseline}
ol, ul{list-style: none}
table{border-collapse:collapse;border-spacing:0}
hr,legend,caption{font-size:0;height:0px}
a{text-decoration:none;color:inherit}
a:hover{text-decoration:none}
img{vertical-align:middle;font-size:11px}
select{vertical-align:middle}
textarea{line-height:18px;font-size:12px;color:inherit}

.board_search{margin:0 0 15px 0;text-align:right;}
.board_search > li{display:inline-block;margin:0 0 0 12px;font-size:11px}
*:first-child+html .board_search > li{display:inline}
.board_search > li > *{vertical-align:middle}
.board_search > li input[type="text"]{width:120px;padding:0 4px;height:20px;color:#808080;line-height:20px;border:solid 1px #e0e0e0;border-right:none}
.board_search > li input[type="radio"]{margin:2px 2px 0 0}
.board_search > li input[type="submit"]{margin:0;padding:0;width:40px;height:22px;font-size:12px;color:#fff;line-height:20px;border:none;background:#333;cursor:pointer}
.board_search > li label{margin:0 0 0 3px}

/** orderTable **/
.board_list{font-size:15px;color:#777}
.board_list thead tr th{height:30px;color:#fff;font-weight:bold;background:#333;vertical-align:middle}
.board_list tbody tr td{padding:10px;text-align:center;line-height:18px;border-bottom:solid 1px #eee;vertical-align:middle}
.board_list tbody tr .tLeft{text-align:left}
.board_list tbody tr td a{color:#777}
.board_list tbody .notice td{background:#f6f6f6}
.board_list tbody tr:hover td{background:#fafafa}
table{
	width:100%;
	border:0;
	border-spacing:0;
	padding:0px;
	
	
}
.wrap{
	width:80%;
	min-height:60vh;
	display:inline-block;
	float:rigth;
}

</style>
<jsp:include page="../../common/header.jsp"/>
</head>

<body>
<div style="height:50px;"></div>
<div style="width:100%; text-align:center;">
<div class="wrap">

	

	<table summary="공지사항을 나타낸 표" class="board_list">
		<caption>공지사항</caption>
		<colgroup>
			<col style="width:8%" />
			<col style="width:68" />
			<col style="width:12%" />
			<col style="width:12%" />
		</colgroup>
		<thead>
			<tr>
				<th scope="col">번호</th>
				<th scope="col">제목</th>
				<th scope="col">작성자</th>
				<th scope="col">작성일</th>
			</tr>
		</thead>
		<tbody>
		<c:if test="${!empty rvlist }">	
		<c:forEach var="b" items="${ rvlist }">
		<tr class="notice">
			<td align="center">${ b.bNo }</td>
			
			<td align="left" onclick =>
				<c:if test="${ !empty loginUser && loginUser.dec != 5 }">
					<c:url var="detailReview" value="detailReview.do">
						<c:param name="bNo" value="${ b.bNo }"/>
						<c:param name="page" value="${ pi.currentPage }"/>
					</c:url>
					<a href="${ detailReview }">${ b.bTitle }</a>
				</c:if>
				<c:if test="${ empty loginUser || loginUser.dec == 5 }">
					${ b.bTitle }		
				</c:if>
			</td>			
			<td align="center">${ b.bWriter }</td>
			<td align="center">${ b.b_CreateDate }</td>		
		</tr>
		</c:forEach>
		</c:if>
	
		</tbody>
		<!-- 페이징 처리 -->
		<tr align="center" height="20" id="buttonTab">
			<td colspan="6">
			
				<!-- [이전] -->
				<c:if test="${ pi.currentPage <= 1 }">
					[이전] &nbsp;
				</c:if>
				<c:if test="${ pi.currentPage > 1 }">
					<c:url var="before" value="reViewList.do">
						<c:param name="page" value="${ pi.currentPage - 1 }"/>
					</c:url>
					<a href="${ before }">[이전]</a> &nbsp;
				</c:if>
				
				<!-- 페이지 -->
				<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
					<c:if test="${ p eq currentPage }">
						<font color="red" size="4"><b>[${ p }]</b></font>
					</c:if>
					
					<c:if test="${ p ne currentPage }">
						<c:url var="pagination" value="reViewList.do">
							<c:param name="page" value="${ p }"/>
						</c:url>
						<a href="${ pagination }">${ p }</a> &nbsp;
					</c:if>
				</c:forEach>
				
				<!-- [다음] -->
				<c:if test="${ pi.currentPage >= pi.maxPage }">
					[다음]
				</c:if>
				<c:if test="${ pi.currentPage < pi.maxPage }">
					<c:url var="after" value="reViewList.do">
						<c:param name="page" value="${ pi.currentPage + 1 }"/>
					</c:url> 
					<a href="${ after }">[다음]</a>
				</c:if>
			</td>
		</tr>
	</table>
	<ul class="board_search">
		<li><input type="radio" name="searchtype" id="search01" checked="checked" /><label for="search01">이름</label></li>
		<li><input type="radio" name="searchtype" id="search02" /><label for="search02">제목</label></li>
		<li><input type="radio" name="searchtype" id="search03" /><label for="search03">내용</label></li>
		<li><input type="text" title="검색어를 입력하세요" /><input type="submit" value="검색" /></li>
	</ul>
	<button onclick="location.href='reViewInView.do';">글쓰기</button>
</div>
</div>

</body>
<jsp:include page="../../common/footer.jsp"/>
</html>
