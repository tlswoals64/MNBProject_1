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

.DayBox {
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

.checkDay{
	display: none;
}

.weekday {
	border: 1px solid rgb(211, 211, 211);
	box-sizing: border-box;
	display: inline-block;
	font-family: & amp; quot; Noto Sans KR&amp; quot; , sans-serif;
	-webkit-tap-highlight-color: rgba(0, 0, 0, 0);
	cursor: pointer;
	text-decoration: none;
	margin: 0px;
	padding: 0px;
	outline: none;
	font-size: inherit;
	font-weight: inherit;
	position: relative;
	z-index: 1;
	height: 30px;
	line-height: 30px;
	min-width: 30px;
	color: rgba(0, 0, 0, 0.87);
	transition: all 450ms cubic-bezier(0.23, 1, 0.32, 1) 0ms;
	border-radius: 30px;
	user-select: none;
	overflow: hidden;
	background-color: white;
	text-align: center;
	width: 30px;
	min-height: 30px;
}

.weekdayCheck {
	position: relative;
	padding: 0px;
	vertical-align: top;
	letter-spacing: 0px;
	text-transform: uppercase;
	font-weight: 400;
	font-size: 12px;
	color: rgb(63, 52, 52);
	line-height: 30px;
}

.dayBtnCheck{
	background-color: pink;
}

.timeBox, .searchBox {
	/* display: -webkit-box; */
	display: -ms-flexbox;
	display: flex;
	-webkit-box-orient: horizontal;
	-webkit-box-direction: normal;
	-ms-flex-direction: row;
	flex-direction: row;
}

.timeBox {
	-ms-flex-wrap: nowrap;
	flex-wrap: nowrap;
	margin: 0;
}

.time{
	display : none;
}

.timeSearch>* {
	width: 33%;
}

.timeBtn {
	border: 1px solid rgb(222, 222, 222);
	box-sizing: border-box;
	display: inline-block;
	font-family: & amp; amp; quot; Noto Sans KR&amp; amp; quot; ,
	sans-serif;
	-webkit-tap-highlight-color: rgba(0, 0, 0, 0);
	cursor: pointer;
	text-decoration: none;
	margin: 0px;
	padding: 0px;
	outline: none;
	font-size: inherit;
	font-weight: inherit;
	position: relative;
	z-index: 1;
	height: 31px;
	line-height: 36px;
	min-width: 0px;
	color: rgba(0, 0, 0, 0.87);
	transition: all 450ms cubic-bezier(0.23, 1, 0.32, 1) 0ms;
	border-radius: 0px;
	user-select: none;
	overflow: hidden;
	background-color: white;
	text-align: center;
	width: 100%;
}

.timeBtnCheck{
	background-color: pink;
}

.active{
	display: none;
}

.Activity {
	border-radius: 100px;
	padding: 10px 0;
	display: inline-block;
	font-size: 13px;
	font-weight: 500px;
	width: 80px;
	margin: 9px 5px;
	text-align: center;
	border: 1px solid #c4c4c4;
	cursor: pointer;
	
}

.noAcCheck {
	color: #434343;
	background-color: #fff;
}

.AcCheck {
    color: #434343;
    background-color: pink;
}

.searchBox {
	border: 1px solid #d3d3d3;
}

.searchBtn {
	border: 10px;
	box-sizing: border-box;
	display: inline-block;
	font-family: & amp; quot; Noto Sans KR&amp; quot; , sans-serif;
	-webkit-tap-highlight-color: rgba(0, 0, 0, 0);
	cursor: pointer;
	text-decoration: none;
	margin: 0px;
	padding: 0px;
	outline: none;
	font-size: inherit;
	font-weight: inherit;
	position: relative;
	vertical-align: middle;
	z-index: 1;
	height: 40px;
	line-height: 36px;
	min-width: 88px;
	color: rgba(0, 0, 0, 0.87);
	transition: all 450ms cubic-bezier(0.23, 1, 0.32, 1) 0ms;
	border-radius: 2px;
	user-select: none;
	overflow: hidden;
	background-color: rgba(0, 0, 0, 0);
	text-align: center;
	flex-basis: 85%;
}

.searchBtn:hover {
	background-color: pink;
}

.searchReset {
	border-width: 10px 10px 10px 1px;
	border-top-style: initial;
	border-right-style: initial;
	border-bottom-style: initial;
	border-left-style: solid;
	border-top-color: initial;
	border-right-color: initial;
	border-bottom-color: initial;
	border-left-color: rgb(224, 224, 224);
	border-image: initial;
	box-sizing: border-box;
	display: inline-block;
	font-family: & amp; quot; Noto Sans KR&amp; quot; , sans-serif;
	-webkit-tap-highlight-color: rgba(0, 0, 0, 0);
	cursor: pointer;
	text-decoration: none;
	margin: 0px;
	padding: 0px;
	outline: none;
	font-size: inherit;
	font-weight: inherit;
	position: relative;
	vertical-align: middle;
	z-index: 1;
	height: 40px;
	line-height: 36px;
	min-width: 88px;
	color: rgba(0, 0, 0, 0.87);
	transition: all 450ms cubic-bezier(0.23, 1, 0.32, 1) 0ms;
	border-radius: 2px;
	user-select: none;
	overflow: hidden;
	background-color: rgba(0, 0, 0, 0);
	text-align: center;
	flex-basis: 15%;
}

.searchReset:hover {
	background-color: pink;
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
}.paging {
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


</style>
</head>
<jsp:include page="../../../common/header.jsp"></jsp:include>
<body>
		

<div style="height:50px;"></div>

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
			<form action = "suppotSearch.do" method = "post">
				<div class="searchOption"
					style="display: line-block; justify-content: flex-start;">
					<div class="option1">
						<div class="sfont">
							<strong>돌봄 지역</strong>
						</div>
						<div class="searchAddress" style="position: relative;">
							<svg viewBox="0 0 24 24" style="display: inline-block; color: rgba(0, 0, 0, 0.87); fill: rgb(255, 83, 0); height: 20px; width: 20px; user-select: none; transition: all 450ms cubic-bezier(0.23, 1, 0.32, 1) 0ms; position: absolute; left: 10px; top: 10px;">
								<path d="M12 2C8.13 2 5 5.13 5 9c0 5.25 7 13 7 13s7-7.75 7-13c0-3.87-3.13-7-7-7zm0 9.5c-1.38 0-2.5-1.12-2.5-2.5s1.12-2.5 2.5-2.5 2.5 1.12 2.5 2.5-1.12 2.5-2.5 2.5z"></path>
							</svg>
							<input type="text" id = "area" name = "area" style="text-indent: 25px; width: 312px; box-sizing: border-box; height: 40px; border: 1px solid rgb(211, 211, 211); padding-left: 10px; font-size: 1rem;">
						</div>
					</div>
					<div class="option1">
						<div class="sfont">
							<strong>돌봄 요일</strong>
						</div>
						<div class="DayBox">
							<div class = "weekday" onclick = "dayCheck(this)">
								<input type = "checkbox" class = "checkDay" name = "checkDay" value = "월">
								<span class = "weekdayCheck">월</span>
							</div>
							<div class = "weekday" onclick = "dayCheck(this)">
								<input type = "checkbox" class = "checkDay" name = "checkDay" value = "화">
								<span class = "weekdayCheck">화</span>
							</div>
							<div class = "weekday" onclick = "dayCheck(this)">
								<input type = "checkbox" class = "checkDay" name = "checkDay" value = "수">
								<span class = "weekdayCheck">수</span>
							</div>
							<div class = "weekday" onclick = "dayCheck(this)">
								<input type = "checkbox" class = "checkDay" name = "checkDay" value = "목">
								<span class = "weekdayCheck">목</span>
							</div>
							<div class = "weekday" onclick = "dayCheck(this)">
								<input type = "checkbox" class = "checkDay" name = "checkDay" value = "금">
								<span class = "weekdayCheck">금</span>
							</div>
							<div class = "weekday" onclick = "dayCheck(this)">
								<input type = "checkbox" class = "checkDay" name = "checkDay" value = "토">
								<span class = "weekdayCheck">토</span>
							</div>
							<div class = "weekday" onclick = "dayCheck(this)">
								<input type = "checkbox" class = "checkDay" name = "checkDay" value = "일">
								<span class = "weekdayCheck">일</span>
							</div>
							
						</div>
					</div>
					<div style="min-width: 270px;">
						<div class="sfont">
							<strong>시간대</strong>
						</div>
						<div class="timeBox timeSearch">
							<div tabindex="0" id = "timeBtn1" class = "timeBtn" onclick = "timeCheck(this)">
								<input type = "radio" id = "time1" class = "time" name = "time" value = "7/8/9/10/11/12">
								<span style="position: relative; padding: 0px; vertical-align: top; letter-spacing: 0px; text-transform: uppercase; font-weight: 400; font-size: 12px; color: rgb(154, 154, 154); line-height: 31px;">07 - 12시</span>
							</div>
							<div tabindex="0" id = "timeBtn2" class="timeBtn" onclick = "timeCheck(this)">
								<input type = "radio" id = "time2" class = "time" name = "time" value = "12/13/14/15/16/17/18">
								<span style="position: relative; padding: 0px; vertical-align: top; letter-spacing: 0px; text-transform: uppercase; font-weight: 400; font-size: 12px; color: rgb(154, 154, 154); line-height: 31px;">12 - 18시</span>
							</div>
							<div tabindex="0" id = "timeBtn3" class = "timeBtn" onclick = "timeCheck(this)">
								<input type = "radio" id = "time3" class = "time" name = "time" value = "18/19/20/21/22">
								<span style="position: relative; padding: 0px; vertical-align: top; letter-spacing: 0px; text-transform: uppercase; font-weight: 400; font-size: 12px; color: rgb(154, 154, 154); line-height: 31px;">18 - 22시</span>
							</div>
						</div>
					</div>
				</div>

				<div class="searchOption">
					<div>
						<div class="sfont">
							<strong>돌봄 내용</strong>
						</div>
						<div>
							<div class="Activity noAcCheck" onclick = "acCheck(this)">
								<input type = "checkbox" class = "active" name = "active" value = "실내놀이">
								<span>실내놀이</span>
							</div>
							<div class="Activity noAcCheck" onclick = "acCheck(this)">
								<input type = "checkbox" class = "active" name = "active" value = "등하원">
								<span>등하원</span>
							</div>
							<div class="Activity noAcCheck" onclick = "acCheck(this)">
								<input type = "checkbox" class = "active" name = "active" value = "책읽기">
								<span>책읽기</span>
							</div>
							<div class="Activity noAcCheck" onclick = "acCheck(this)">
								<input type = "checkbox" class = "active" name = "active" value = "야외활동">
								<span>야외활동</span>
							</div>
							<div class="Activity noAcCheck" onclick = "acCheck(this)">
								<input type = "checkbox" class = "active" name = "active" value = "한글놀이">
								<span>한글놀이</span>
							</div>
							<div class="Activity noAcCheck" onclick = "acCheck(this)">
								<input type = "checkbox" class = "active" name = "active" value = "영어놀이">
								<span>영어놀이</span>
							</div>
							<div class="Activity noAcCheck" onclick = "acCheck(this)">
								<input type = "checkbox" class = "active" name = "active" value = "학습지도">
								<span>학습지도</span>
							</div>
							<div class="Activity noAcCheck" onclick = "acCheck(this)">
								<input type = "checkbox" class = "active" name = "active" value = "체육놀이">
								<span>체육놀이</span>
							</div>
							<div class="Activity noAcCheck" onclick = "acCheck(this)">
								<input type = "checkbox" class = "active" name = "active" value = "밥 챙겨주기">
								<span>밥 챙겨주기</span>
							</div>
						</div>
					</div>
				</div>

				<div class="searchBox">
					<button class = "search searchBtn" tabindex="0">
						<span style="position: relative; padding-left: 16px; padding-right: 16px; vertical-align: middle; letter-spacing: 0px; text-transform: uppercase; font-weight: 600; font-size: 15px; text-align: center;">검색</span>
					</button>
					<button class = "search searchReset" tabindex="0" type="button">
						<div onclick = "reset();">
							<svg viewBox="0 0 24 24" style="display: inline-block; color: rgba(0, 0, 0, 0.87); fill: rgb(106, 106, 106); height: 15px; width: 15px; user-select: none; transition: all 450ms cubic-bezier(0.23, 1, 0.32, 1) 0ms; vertical-align: middle; margin-left: 12px; margin-right: 0px;">
								<path d="M17.65 6.35C16.2 4.9 14.21 4 12 4c-4.42 0-7.99 3.58-7.99 8s3.57 8 7.99 8c3.73 0 6.84-2.55 7.73-6h-2.08c-.82 2.33-3.04 4-5.65 4-3.31 0-6-2.69-6-6s2.69-6 6-6c1.66 0 3.14.69 4.22 1.78L13 11h7V4l-2.35 2.35z"></path>
							</svg>
							<span style="position: relative; padding-left: 8px; padding-right: 16px; vertical-align: middle; letter-spacing: 0px; text-transform: uppercase; font-weight: 500; font-size: 13px; text-align: center; color: rgb(106, 106, 106);">검색 초기화</span>
						</div>
					</button>
				</div>
			</form>
		</div>
		<div style="width: 100%; height: 80%; display: inline-block; margin: 3% 15% 0 15%;">
			<div id="mojibList">		
			<c:forEach var="bc" items="${ bclist }">
					<c:if test="${ !empty loginUser  && loginUser.dec != 5 }">
						<c:url var="momDetail" value="momDetail.do">
							<c:param name="bNo" value="${ bc.bNo }" />
							<c:param name="page" value="${ pi.currentPage }" />
						</c:url>
						<a href=${ momDetail }>
				<div class = "list" id="detail" style="cursor:pointer; font-size:14px;">											
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
							<th>희망시급</th>
							<td><span>${bc.bcSalary }</span>원&nbsp;&nbsp;</td>
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
							<td><span>${bc.bcTime}</span></td>
						</tr>
					</table>					
				</div>
				</a>
				</c:if>
				<c:if test="${ empty loginUser || loginUser.dec == 5 }">
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
							<th>희망시급</th>
							<td><span>${bc.bcSalary }</span>원&nbsp;&nbsp;</td>
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
							<td><span>${bc.bcTime}</span></td>
						</tr>
					</table>					
				</div>
				</c:if>
				</c:forEach>
	
		<table style="width:700px">
				<tr>
			<td colspan="6" align="right" id="buttonTab">
				<c:if test="${ !empty loginUser }">
					&nbsp; &nbsp; &nbsp;
					<button onclick="location.href='babymomIn.do'">글쓰기</button>					
				</c:if>
			</td>
		</tr>
		</table>		
		<div class="paging">
			<ul style="width:700px">
				<li class="off">
					
					<c:if test="${ pi.currentPage <= 1 }">
               			&lt;&lt; &nbsp; 
            		</c:if> 
            		<c:if test="${ pi.currentPage > 1 }">
						<c:url var="before" value="babymom.do">
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
							<c:url var="pagination" value="babymom.do">
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
						<c:url var="after" value="babymom.do">
							<c:param name="page" value="${ pi.currentPage + 1 }" />
						</c:url>
						<a href="${ after }">&gt;&gt; </a>&nbsp;
            		</c:if>
            	</li>
			</ul>

		</div>
		
				
	</div>
	</div>
</div>

</body>
	<jsp:include page="../../../common/footer.jsp"></jsp:include>
</html>