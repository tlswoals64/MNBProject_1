<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>M & B nanumView</title>
<style>
@import url("resources/css/font.css");

#content {
	width: 100%;
	margin-bottom: 65px;
}

.content_wrap {
	width: 1200px;
	margin: 0 auto
}

.content_wrap_title h2 {
	font-family: 'NanumMyeongjo';
	font-size: 48px;
	text-align: center;
	color: #afbf00;
	padding-bottom: 25px;
}

.content_wrap_title p {
	font-size: 18px;
	text-align: center;
	margin-top: 25px;
}

#content2 {
	width: 100%;
}

.content2_right {
	width: 1200px;
	margin: 0 auto;
	margin-top: 130px;
}

.content2_right ul li {
	float: left;
}

.content2_right ul li img {
	width: 80%
}

.content2_right ul li h2 {
	color: #e2e1e1;
	font-size: 122px;
	font-family: 'NanumMyeongjo';
	margin-bottom: 35px;
	margin-top: 35px;
}

.content2_right ul li h3 {
	font-size: 36px;
}

.content2_right ul li p {
	width: 100%;
	font-size: 14px;
	padding-top: 30px;
}

.content2_right ul li h5 {
	padding: 10px 15px;
	border: 1px solid #000;
	font-size: 14px;
	width: 150px;
	text-align: center;
	margin-top: 35px;
}

.content2_right2 {
	width: 1200px;
	margin: 0 auto;
	margin-top: 130px;
}

.content2_right2 ul li {
	float: left;
}

.content2_right2 ul li img {
	width: 80%
}

.content2_right2 ul .li_right2 {
	padding-left: 79px;
}

.content2_right2 ul .li_right2 h2 {
	color: #e2e1e1;
	font-size: 122px;
	font-family: 'NanumMyeongjo';
	margin-bottom: 35px;
	margin-top: 35px;
}

.content2_right2 ul .li_right2 h3 {
	font-size: 36px;
}

.content2_right2 ul .li_right2 p {
	width: 100%;
	font-size: 14px;
	padding-top: 30px;
}

.content2_right2 ul .li_right2 h5 {
	padding: 10px 15px;
	border: 1px solid #000;
	font-size: 14px;
	width: 150px;
	text-align: center;
	margin-top: 35px;
}

.content2_left {
	width: 1200px;
	margin: 0 auto;
	margin-top: 130px;
}

.content2_left ul li {
	float: left;
}

.content2_left ul li img {
	width: 80%;
	text-align: right;
}

.content2_left ul .li_text {
	width: 50%;
	padding-left: 40px;
}

.content2_left ul .li_text h2 {
	color: #e2e1e1;
	font-size: 122px;
	font-family: 'NanumMyeongjo';
	margin-bottom: 35px;
	margin-top: 35px;
}

.content2_left ul .li_text h3 {
	font-size: 36px;
}

.content2_left ul .li_text p {
	width: 100%;
	font-size: 14px;
	padding-top: 30px;
}

.content2_left ul .li_text h5 {
	padding: 10px 15px;
	border: 1px solid #000;
	font-size: 14px;
	width: 150px;
	text-align: center;
	margin-top: 35px;
}

#contents {
	width: 1200px;
	margin: 0 auto;
	padding: 90px 0 0 0
}

.sidebar {
	width: 195px;
	float: left;
	border: 1px solid #ee9a99;
	margin: 0 20px 0 0
}

.sidebar h2 {
	background: #ee9a99;
	color: #fff;
	padding: 20px
}

.sidebar li {
	padding: 15px 20px;
	border-bottom: 1px solid #ddd;
	border-top: 1px solid #ddd
}

.sidebar li:hover {
	cursor: pointer;
	font-weight: bold;
	color: #ee9a99
}

.bbs {
	width: 950px;
	float: right;
	overflow: hidden
}

.btn {
	position: relative;
	width: 1200px;
	margin: 0 auto;
	bottom: 0;
	clear: both
}

.btn p {
	position: absolute;
	right: 0;
	top: 20px;
	text-align: right;
	text-align: center;
}

.btn input[type="button"] {
	width: 120px;
	height: 38px;
	vertical-align: middle;
	background: #fff;
	border-radius: 4px;
	border: 1px solid #ddd
}

.g_box {
	border: 1px solid #ddd;
	width: 278px;
	float: left;
	margin: 0 55px 30px 0
}

.g_box:last-child {
	margin-right: 0
}

.g_box p {
	height: 190px
}

.g_box p img {
	width: 100%;
	height: 190px
}

.g_box h2 {
	text-align: left;
	letter-spacing: 0;
	margin: 0 0 10px 0
}

.g_box h3 {
	font-weight: normal;
	color: #444;
	margin: 0 0 30px 0
}

.g_box ul {
	padding: 20px;
	position: relative
}

.g_box span {
	color: #b1a3ad;
	position: absolute;
	right: 20px;
	bottom: 20px
}

.paging {
	clear: both;
	margin: 30px 0 0 0
}

.paging ul {
	text-align: center;
}

.paging li {
	cursor: pointer;
	display: inline;
	border: 1px solid #d3d5dc;
	text-align: center;
	color: #525367;
	padding: 10px 12px;
	border-radius: 3px
}

.paging li.on {
	border: 1px solid #525367;
	background: #525367;
	text-align: center;
	color: #fff
}

.paging li:hover {
	border: 1px solid #525367;
	background: #525367;
	text-align: center;
	color: #fff
}

.search {
	text-align: center;
	margin: 40px 0 0 0
}

.search select {
	height: 38px;
	vertical-align: middle
}

.search input[type="text"] {
	height: 34px;
	vertical-align: middle;
	padding: 0 0 0 5px
}

.search input[type="button"] {
	width: 80px;
	height: 38px;
	vertical-align: middle;
}
</style>

</head>
<body>
	<jsp:include page="../../common/header.jsp"></jsp:include>

	<div class="both"></div>

	<!-- 게시판 -->
	<div id="contents">
		<c:if test="${ !empty loginUser && loginUser.dec != 5 }">
		<div class="sidebar">
			<h2>커뮤니티</h2>
			<ul>
				<li>커뮤니티</li>
				<li>나눔게시판</li>
			</ul>
		</div>
		<div class="bbs">
			<c:forEach items="${ list }" var="l" varStatus="s">
				<c:if test="${ s.count % 4 != 3 }">
					<div class="g_box">
						<p>
							<c:url var="bdetail" value="dBoard.do">
								<c:param name="bNo" value="${ l.bNo }" />
								<%--   <c:param name="page" value="${ pi.currentPage }"/> --%>
							</c:url>
							<a href="${ bdetail }">
								<img src="resources/images/board/${ l.changeName }">
							</a>
						</p>
						<ul>
							<h2>${ l.bTitle }</h2>
							<h3>${ l.bWriter }</h3>
							<span>${ l.b_CreateDate }</span>
						</ul>
					</div>
				</c:if>
				<c:if test="${ s.count % 4 == 3 }">
					<div class="g_box">
						<p>
							<c:url var="bdetail" value="dBoard.do">
								<c:param name="bNo" value="${ l.bNo }" />
								<%--   <c:param name="page" value="${ pi.currentPage }"/> --%>
							</c:url>
							<a href="${ bdetail }">
								<img src="resources/images/board/${ l.changeName }">
							</a>
						</p>
						<ul>
							<h2>${ l.bTitle }</h2>
							<h3>${ l.bWriter }</h3>
							<span>${ l.b_CreateDate }</span>
						</ul>
					</div>
		</div>
		<div class="bbs">
			</c:if>
			</c:forEach>
		</c:if>
		</div>
		
		<div id="contents">
		<c:if test="${ empty loginUser || loginUser.dec == 5}">
		<div class="sidebar">
			<h2>커뮤니티</h2>
			<ul>
				<li>커뮤니티</li>
				<li>나눔게시판</li>
			</ul>
		</div>
		<div class="bbs">
			<c:forEach items="${ list }" var="l" varStatus="s">
				<c:if test="${ s.count % 4 != 3 }">
					<div class="g_box">
						<p>
							<c:url var="bdetail" value="dBoard.do">
								<c:param name="bNo" value="${ l.bNo }" />
								<%--   <c:param name="page" value="${ pi.currentPage }"/> --%>
							</c:url>
							<a href="#">
								<img src="resources/images/board/${ l.changeName }">
							</a>
						</p>
						<ul>
							<h2>${ l.bTitle }</h2>
							<h3>${ l.bWriter }</h3>
							<span>${ l.b_CreateDate }</span>
						</ul>
					</div>
				</c:if>
				<c:if test="${ s.count % 4 == 3 }">
					<div class="g_box">
						<p>
							<c:url var="bdetail" value="dBoard.do">
								<c:param name="bNo" value="${ l.bNo }" />
								<%--   <c:param name="page" value="${ pi.currentPage }"/> --%>
							</c:url>
							<a href="#">
								<img src="resources/images/board/${ l.changeName }">
							</a>
						</p>
						<ul>
							<h2>${ l.bTitle }</h2>
							<h3>${ l.bWriter }</h3>
							<span>${ l.b_CreateDate }</span>
						</ul>
					</div>
		</div>
		<div class="bbs">
			</c:if>
			</c:forEach>
		</c:if>
		</div>

		<div class="btn">
			<p>
				  <c:if test="${ !empty loginUser  && loginUser.dec != 5 }">
				<a href="inBoard.do"><input type="button" value="글쓰기"></a>
				</c:if>
			</p>
		</div>

		<div class="paging">
			<ul>
				<li class="off">
					
					<c:if test="${ pi.currentPage <= 1 }">
               			&lt;&lt; &nbsp; 
            		</c:if> 
            		<c:if test="${ pi.currentPage > 1 }">
						<c:url var="before" value="nBoard.do">
							<c:param name="page" value="${ pi.currentPage - 1 }" />
						</c:url>
						<a href="${ before }">&lt;&lt; </a> 
						
						&nbsp;
            		</c:if>
            	</li>

				<li class="off">
					<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
						<c:if test="${ p eq currentPage }">
							<font color="pink"><b>[${ p }]</b></font>
						</c:if>

						<c:if test="${ p ne currentPage }">
							<c:url var="pagination" value="nBoard.do">
								<c:param name="page" value="${ p }" />
								<!-- blist.do?page=${p}값   -->
							</c:url>
							<a href="${ pagination }">${ p }</a>
						</c:if>
					</c:forEach>
				</li>

				<li class="off">
					<c:if test="${ pi.currentPage >= pi.maxPage }">
              			&gt;&gt; &nbsp;
            		</c:if> 
            		<c:if test="${ pi.currentPage < pi.maxPage }">
						<c:url var="after" value="nBoard.do">
							<c:param name="page" value="${ pi.currentPage + 1 }" />
						</c:url>
						<a href="${ after }">&gt;&gt; </a>&nbsp;
            		</c:if>
            	</li>
			</ul>

		</div>
		<!-- <div class="search">
			<select>
				<option>제목+내용</option>
				<option>제목</option>
				<option>내용</option>

			</select> <input type="text" placeholder="검색어를 입력하세요"> <input
				type="button" value="검색">
		</div>
 -->
	</div>

	<!-- // 게시판 -->

	<script>
		
	</script>


	<div class="both"></div>

	<jsp:include page="../../common/footer.jsp"></jsp:include>

</body>
</html>