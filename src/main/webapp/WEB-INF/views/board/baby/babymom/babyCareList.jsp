<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body {
	padding: 0 10%;
}

table {
	text-align: left;
	width: 100%;
}

th {
	text-align: center;
	margin: 10px;
}

td {
	text-indent: 20px;
}

.week {
	border: 1px solid black;
}

#headview {
	padding: 20px 0;
	height: 20%;
	margin: 0 40px;
	border-bottom: 1px solid #f0f0f0f0;
	position: relative;
	z-index: 1;
}

.headline {
	font-weight: 300;
	text-align: left;
}

.headh2 {
	font-size: 33px;
	line-height: 1.45;
}

.headp {
	font-size: 15px;
	line-height: 1.67;
}

.headimg {
	width: 625px;
	position: absolute;
	right: -40px;
	bottom: 0;
	z-index: -1;
}

#bigForm {
	margin: 0 auto;
	height: 100%;
	padding : 0 20%;
}

#listForm {
	width: 100%;
	height: 35%;
}

#searchForm {
	margin: 0 100px;
}

#searchImg {
	border-radius: 90px;
}

/* #search {
	width: 80%;
	box-sizing: border-box;
	border: 2px solid #ccc;
	border-radius: 4px;
	font-size: 16px;
	background-color: white;
	background-image: url('resources/images/babySitter/search.png');
	background-position: 10px 10px;
	background-size: 25px;
	background-repeat: no-repeat;
	padding: 12px 20px 12px 40px;
	-webkit-transition: width 0.4s ease-in-out;
	transition: width 0.4s ease-in-out;
}

#searchBtn {
	border: 2px solid black;
	background-color: white;
	color: black;
	padding: 10px 28px;
	font-size: 16px;
	cursor: pointer;
	border-radius: 4px;
	text-align: center;
} */

.timeBtn {
	marigin: 0;
}

#mojibList {
	width: 50%;
	margin-right: 5px;
	display: inline-block;
	height: 100%;
	float: left;
}

.searchOption {
	border-bottom: 1px solid #f0f0f0;
	display: flex;
	flex-wrap: nowrap;
	padding: 23px 0 15px;
	margin: 0 40px;
	-webkit-box-pack: justify;
	transition: all .45s cubic-bezier(.23, 1, .32, 1) 0ms;
}

.option1 {
	min-width: 300px;
	margin-right: 40px;
}

.sfont {
	font-size: 14px;
	margin: 0 0 7px;
	display: block;
}

._3x_br {
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-orient: horizontal;
	-webkit-box-direction: normal;
	-ms-flex-direction: row;
	flex-direction: row;
	-ms-flex-wrap: nowrap;
	flex-wrap: nowrap;
	-ms-flex-pack: distribute;
	justify-content: space-around;
}

.o9IuZ, .zIHPK {
	/* display: -webkit-box; */
	display: -ms-flexbox;
	display: flex;
	-webkit-box-orient: horizontal;
	-webkit-box-direction: normal;
	-ms-flex-direction: row;
	flex-direction: row;
}

.o9IuZ {
	-ms-flex-wrap: nowrap;
	flex-wrap: nowrap;
	margin: 0;
}

._2h7-S>* {
	width: 33%;
}

._1-3i7 {
	border-radius: 100px;
	padding: 10px 0;
	display: inline-block;
	font-size: 13px;
	font-weight: 500px;
	width: 80px;
	margin: 9px 5px;
	text-align: center;
	cursor: pointer;
}

._1-6Wz {
	color: #434343;
	background-color: #fff;
	border: 1px solid #c4c4c4;
}
/* ._3XBMg {
    color: #434343;
    background-color: #ff4500;
} */
.zIHPK {
	border: 1px solid #d3d3d3;
}

.list{
border: 1px solid black;
border-radius: 3px;
margin-bottom: 10px;
width : 700px;
height : 150px;
padding : 5px;
}

.list > hr{
    border-color: #e8e8e8;
    border-top: none;
    width : 90%;
}

</style>
</head>
<body>
	<nav>
		<jsp:include page="../../../common/header.jsp"></jsp:include>
	</nav>

	<div id="bigForm">
		<div id="headview">
			<h2 class="headline headh2">
				<strong style="font-weight: 600;"><span class="_21P78">M&B</span>
					<!-- react-text: 1881 -->를 찾고 싶은 지역, <!-- /react-text --> <br></strong>
				<!-- react-text: 1883 -->
				원하는 시간을 넣어 검색해보세요.
				<!-- /react-text -->
			</h2>
			<p class="headline headp">
				<!-- react-text: 1885 -->				
				<!-- /react-text -->
				<br>
				<!-- react-text: 1887 -->				
				<!-- /react-text -->
			</p>
			<img class="headimg" src="resources/images/babySitter/baby.png"
				alt="베이비시터 찾기 이미지">
		</div>


		<div id="listForm">
			<!-- <form id="searchForm" action="">
				<input type="text" id="search" name="search" placeholder="검색..">
				<button id="searchBtn">검색</button>
			</form> -->
			<form>
				<div class="searchOption"
					style="display: line-block; justify-content: flex-start;">
					<div class="option1">
						<div class="sfont">
							<strong>돌봄 지역</strong>
						</div>
						<div class="searchAddress" style="position: relative;">
							<svg viewBox="0 0 24 24"
								style="display: inline-block; color: rgba(0, 0, 0, 0.87); fill: rgb(255, 83, 0); height: 20px; width: 20px; user-select: none; transition: all 450ms cubic-bezier(0.23, 1, 0.32, 1) 0ms; position: absolute; left: 10px; top: 10px;">
							<path
									d="M12 2C8.13 2 5 5.13 5 9c0 5.25 7 13 7 13s7-7.75 7-13c0-3.87-3.13-7-7-7zm0 9.5c-1.38 0-2.5-1.12-2.5-2.5s1.12-2.5 2.5-2.5 2.5 1.12 2.5 2.5-1.12 2.5-2.5 2.5z"></path>
						</svg>
							<input type="text" readonly=""
								style="text-indent: 25px; width: 312px; box-sizing: border-box; height: 40px; border: 1px solid rgb(211, 211, 211); padding-left: 10px; font-size: 1rem;">
						</div>
					</div>
				</div>

				<div class="searchOption">
					<div class="_2zsvj">
						<div class="sfont">
							<strong>돌봄 내용</strong>
						</div>
						<div class="_2s30R">
							<div class="_1sN0b">
								<div class="_3GVQt">
									<div class="u23yZ" style="text-align: left; overflow: visible; width: 100%; height: auto; display: inline-block; vertical-align: top;">
										<div class="_1-6Wz _1-3i7" role="button">실내놀이</div>
										<div class="_1-6Wz _1-3i7" role="button">등하원</div>
										<div class="_1-6Wz _1-3i7" role="button">책읽기</div>
										<div class="_1-6Wz _1-3i7" role="button">야외활동</div>
										<div class="_1-6Wz _1-3i7" role="button">한글놀이</div>
										<div class="_1-6Wz _1-3i7" role="button">영어놀이</div>
										<div class="_1-6Wz _1-3i7" role="button">학습지도</div>
										<div class="_1-6Wz _1-3i7" role="button">체육놀이</div>
										<div class="_1-6Wz _1-3i7" role="button">밥 챙겨주기</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="zIHPK">
					<button class = "search searchBtn" tabindex="0" type="button"
						style="border: 10px; box-sizing: border-box; display: inline-block; font-family: &amp; quot; Noto Sans KR&amp;quot; , sans-serif; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); cursor: pointer; text-decoration: none; margin: 0px; padding: 0px; outline: none; font-size: inherit; font-weight: inherit; position: relative; vertical-align: middle; z-index: 1; height: 40px; line-height: 36px; min-width: 88px; color: rgba(0, 0, 0, 0.87); transition: all 450ms cubic-bezier(0.23, 1, 0.32, 1) 0ms; border-radius: 2px; user-select: none; overflow: hidden; background-color: rgba(0, 0, 0, 0); text-align: center; flex-basis: 85%;">
						<div>
							<span style="position: relative; padding-left: 16px; padding-right: 16px; vertical-align: middle; letter-spacing: 0px; text-transform: uppercase; font-weight: 600; font-size: 15px; text-align: center;"><span>검색</span></span>
						</div>
					</button>
					<button class = "search searchReset" tabindex="0" type="button"
						style="border-width: 10px 10px 10px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: initial; border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(224, 224, 224); border-image: initial; box-sizing: border-box; display: inline-block; font-family: &amp; quot; Noto Sans KR&amp;quot; , sans-serif; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); cursor: pointer; text-decoration: none; margin: 0px; padding: 0px; outline: none; font-size: inherit; font-weight: inherit; position: relative; vertical-align: middle; z-index: 1; height: 40px; line-height: 36px; min-width: 88px; color: rgba(0, 0, 0, 0.87); transition: all 450ms cubic-bezier(0.23, 1, 0.32, 1) 0ms; border-radius: 2px; user-select: none; overflow: hidden; background-color: rgba(0, 0, 0, 0); text-align: center; flex-basis: 15%;">
						<div>
							<svg viewBox="0 0 24 24"
								style="display: inline-block; color: rgba(0, 0, 0, 0.87); fill: rgb(106, 106, 106); height: 15px; width: 15px; user-select: none; transition: all 450ms cubic-bezier(0.23, 1, 0.32, 1) 0ms; vertical-align: middle; margin-left: 12px; margin-right: 0px;">
								<path
									d="M17.65 6.35C16.2 4.9 14.21 4 12 4c-4.42 0-7.99 3.58-7.99 8s3.57 8 7.99 8c3.73 0 6.84-2.55 7.73-6h-2.08c-.82 2.33-3.04 4-5.65 4-3.31 0-6-2.69-6-6s2.69-6 6-6c1.66 0 3.14.69 4.22 1.78L13 11h7V4l-2.35 2.35z"></path></svg>
							<span
								style="position: relative; padding-left: 8px; padding-right: 16px; vertical-align: middle; letter-spacing: 0px; text-transform: uppercase; font-weight: 500; font-size: 13px; text-align: center; color: rgb(106, 106, 106);"><span>검색
									초기화</span></span>
						</div>
					</button>
				</div>
			</form>
		</div>

		<div style="width: 100%; height: 800px; display: inline-block; margin: 3% 15% 0 15%;">
			<div id="mojibList">
			
			<form id="mdetail" action="momDetail.do" method="post">						
			<c:forEach var="bc" items="${bclist}">
				<div class = "list" id="detail" style="cursor:pointer;">							
					<table>
						<colgroup>
							<col width="30%">
							<col width="70%">
						</colgroup>
						<tr>
							<th rowspan="3"><img id="searchImg" width="70px"
								height="70px" src="resources/images/board/babymom/${bc.changeName }"></th>
							<td><span>${bc.bCount}</span>&nbsp;&nbsp;|&nbsp;&nbsp;<span>등록 시간</span>
							<input type="hidden" id="bNo" name="bNo" value="${bc.bNo}">
							<input type="hidden" id="bWriter" name="bWriter" value="${bc.bWriter}">
							</td>
						</tr>
						<tr>
							<td>${bc.bTitle }</td>
						</tr>
						<tr>
							<td><span>${bc.address }</span>&nbsp;|&nbsp;<span>${bc.bWriter}</span>&nbsp;|&nbsp;</td>
						</tr>
						<tr>
							<th>0명 지원</th>
							<td><span>시급10000원</span>&nbsp;/&nbsp;</td>
						</tr>
					</table>
					<hr>
					<table>
						<colgroup>
							<col width="30%">
							<col width="70%">
						</colgroup>
						<tr>
							<th>시간</th>
							<td><span>${bc.time}</span></td>
						</tr>
					</table>
					
				</div>	
				</c:forEach>
				</form>	
				<script>
				$('#detail').on("click",function(){
					$('#mdetail').submit();
				});
				</script>			
				
				
				<table>
				<tr>
			<td colspan="6" align="right" id="buttonTab">
				<c:if test="${ !empty loginUser }">
					&nbsp; &nbsp; &nbsp;
					<button onclick="location.href='babymomIn.do'">글쓰기</button>
					<button onclick="location.href='detailMemberView.do'">내정보보기</button>
					<button onclick="location.href='pwdUpdateView.do'">비밀번호변경</button>
					<button onclick="location.href='myboardList.do'">내가 쓴 글목록</button>
				</c:if>
			</td>
		</tr>
		
		<!-- 페이징 처리 -->
		<tr align="center" height="20" id="buttonTab">
			<td colspan="6">
			
				<!-- [이전] -->
				<c:if test="${ pi.currentPage <= 1 }">
					[이전] &nbsp;
				</c:if>
				<c:if test="${ pi.currentPage > 1 }">
					<c:url var="before" value="blist.do">
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
						<c:url var="pagination" value="blist.do">
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
					<c:url var="after" value="blist.do">
						<c:param name="page" value="${ pi.currentPage + 1 }"/>
					</c:url> 
					<a href="${ after }">[다음]</a>
				</c:if>
			</td>
		</tr>
			</table>	
	</div>
	</div>
</div>
</body>
	<jsp:include page="../../../common/footer.jsp"></jsp:include>
</html>