<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	border: 1px solid rgb(211, 211, 211);
	padding: 5px 8px;
	margin-right: 5px;
	border-radius: 30px;
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
	padding: 0 20%;
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

.list {
	border: 1px solid rgb(211, 211, 211);
	border-radius: 3px;
	margin-bottom: 10px;
	height: 150px;
	padding: 5px;
}

.list:hover {
	border: 3px solid pink;
}

.list>hr {
	border-color: #e8e8e8;
	border-top: none;
	width: 90%;
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
</style>
</head>
<body>
	<header>
		<jsp:include page="../../../common/header.jsp"></jsp:include>
	</header>

	<div id="bigForm">
		<div id="headview">
			<h2 class="headline headh2">
				<strong style="font-weight: 600;"><span class="_21P78">MnB</span>
					<!-- react-text: 1881 -->를 찾고 싶은 지역, <!-- /react-text --> <br></strong>
				<!-- react-text: 1883 -->
				원하는 요일, 시간을 넣어 검색해주세요.
				<!-- /react-text -->
			</h2>
			<p class="headline headp">
				<!-- react-text: 1885 -->
				MnB는 0 ~ 6세 아이를 집에서 안전하고 즐겁게
				<!-- /react-text -->
				<br>
				<!-- react-text: 1887 -->
				돌봐주는 베이비시터 역할을 합니다.
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

		<div style="width: 100%; height: 1710px; display: inline-block; margin-top: 3%;">
			<div id="mojibList">
				<c:forEach var="s" items="${ list }">
					<c:if test="${ !empty loginUser }">
						<c:url var="suppotDetail" value="suppotDetail.do">
							<c:param name="bNo" value="${ s.bNo }" />
							<c:param name="page" value="${ pi.currentPage }" />
						</c:url>
						<a href=${ suppotDetail }>
							<div class="list">
								<table summary="베이비시터 중 구직글을 작성한 리스트">
									<colgroup>
										<col width="30%">
										<col width="70%">
									</colgroup>
									<tr>
										<th rowspan="4"><img id="searchImg" width="70px"
											height="70px" src="resources/images/babySitter/suppot/${ s.changeName }"></th>
										<td><span>${ s.bWriter }</span>&nbsp;| &nbsp;<span>${ s.b_CreateDate }</span></td>
									</tr>
									<tr>
										<td>${ s.bTitle }</td>
									</tr>
									<tr>
										<td>
											<span>
												<c:forTokens var = "address" items="${ s.address }" delims="/">
													${ address }&nbsp;
												</c:forTokens>
											</span>
										</td>
									</tr>
									<tr>
										<td>
											<span>
												<c:forTokens var = "time" items="${ s.time }" delims="/" varStatus="timeset">
													<c:if test="${ timeset.first }">
														<c:out value="${ time }:00 ~ " />
													</c:if>
													<c:if test="${ timeset.last }">
														<c:out value="${ time }:00" />
													</c:if>
												</c:forTokens>
											</span>&nbsp;/&nbsp;${ s.salary }
										</td>
									</tr>
								</table>
								<hr>
								<table>
									<colgroup>
										<col width="30%">
										<col width="70%">
									</colgroup>
									<tr>
										<th>돌봄 요일</th>
										<td>
											<c:forTokens var = "day" items="${ s.day }" delims="/">
												<span class = "week">${ day }</span>
											</c:forTokens>
										</td>
									</tr>
								</table>
							</div>
						</a>
					</c:if>
					<c:if test="${ empty loginUser }">
						<div class="list">
								<table summary="베이비시터 중 구직글을 작성한 리스트">
									<colgroup>
										<col width="30%">
										<col width="70%">
									</colgroup>
									<tr>
										<th rowspan="4"><img id="searchImg" width="70px"
											height="70px" src="resources/images/babySitter/suppot/${ s.changeName }"></th>
										<td><span>${ s.bWriter }</span>&nbsp;| &nbsp;<span>${ s.b_CreateDate }</span></td>
									</tr>
									<tr>
										<td>${ s.bTitle }</td>
									</tr>
									<tr>
										<td>
											<span>
												<c:forTokens var = "address" items="${ s.address }" delims="/">
													${ address }&nbsp;
												</c:forTokens>
											</span>
										</td>
									</tr>
									<tr>
										<td>
											<span>
												<c:forTokens var = "time" items="${ s.time }" delims="/" varStatus="timeset">
													<c:if test="${ timeset.first }">
														<c:out value="${ time }:00 ~ " />
													</c:if>
													<c:if test="${ timeset.last }">
														<c:out value="${ time }:00" />
													</c:if>
												</c:forTokens>
											</span>&nbsp;/&nbsp;${ s.salary }
										</td>
									</tr>
								</table>
								<hr>
								<table>
									<colgroup>
										<col width="30%">
										<col width="70%">
									</colgroup>
									<tr>
										<th>돌봄 요일</th>
										<td>
											<c:forTokens var = "day" items="${ s.day }" delims="/">
												<span class = "week">${ day }</span>
											</c:forTokens>
										</td>
									</tr>
								</table>
							</div>
					</c:if>
				</c:forEach>
			</div>
			<div id="map" style="height: 100%;"></div>
		</div>
		<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=95916381578ec4a670a4e011225284ac"></script>
		<script>
			var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
			mapOption = {
				center : new kakao.maps.LatLng(37.54644, 126.99719), // 지도의 중심좌표
				level : 7, // 지도의 확대 레벨
				mapTypeId : kakao.maps.MapTypeId.ROADMAP
			// 지도종류
			};

			// 지도를 생성한다 
			var map = new kakao.maps.Map(mapContainer, mapOption);

			// 지도에 확대 축소 컨트롤을 생성한다
			var zoomControl = new kakao.maps.ZoomControl();

			// 지도의 우측에 확대 축소 컨트롤을 추가한다
			map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);

			// 지도에 마커를 생성하고 표시한다
			var marker = new kakao.maps.Marker({
				position : new kakao.maps.LatLng(37.56615, 126.98244), // 마커의 좌표
				draggable : true, // 마커를 드래그 가능하도록 설정한다
				map : map // 마커를 표시할 지도 객체
			});
		</script>
	</div>
	<div>
		<c:if test="${ !empty loginUser || loginUser.memberType != 3 }">
			<p style = "text-align: right; margin-right: 20%;">
				<button style = "width: 120px; height: 38px; background: #fff; border-radius: 4px; border: 1px solid #ddd; cursor: pointer;" onclick="location.href='suppotInsert.do'">글쓰기</button>
			</p>
		</c:if>
		<ol class = "paging">
			<li class = "first">
				<c:if test="${ pi.currentPage <= 1 }">
					<a>&lt;&lt;</a>
				</c:if>
				<c:if test="${ pi.currentPage > 1 }">
					<c:url var="first" value="suppotList.do">
						<c:param name="page" value="${ pi.startPage }"/>
					</c:url>
					<a href = "${ first }">&lt;&lt;</a>
				</c:if>
			</li>
			<li class = "prev">
				<c:if test="${ pi.currentPage <= 1 }">
					<a>&lt;</a>
				</c:if>
				<c:if test="${ pi.currentPage > 1 }">
					<c:url var="prev" value="suppotList.do">
						<c:param name="page" value="${ pi.currentPage - 1 }"/>
					</c:url>
					<a href = "${ prev }">&lt;</a>
				</c:if>
			</li>
			<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
				<c:if test="${ p eq pi.currentPage }">
					<li><font size="4"><a style="color: red;">${ p }</a></font></li>
				</c:if>

				<c:if test="${ p ne pi.currentPage }">
					<c:url var="pagination" value="suppotList.do">
						<c:param name="page" value="${ p }" />
					</c:url>
					<li><a href="${ pagination }">${ p }</a></li>
				</c:if>
			</c:forEach>
			<li class = "next">
				<c:if test="${ pi.currentPage >= pi.maxPage }">
					<a>&gt;</a>
				</c:if>
				<c:if test="${ pi.currentPage < pi.maxPage }">
					<c:url var="next" value="suppotList.do">
						<c:param name="page" value="${ pi.currentPage + 1 }"/>
					</c:url> 
					<a href = "${ next }">&gt;</a>
				</c:if>
			</li>
			<li class = "last">
				<c:if test="${ pi.currentPage >= pi.maxPage }">
					<a>&gt;&gt;</a>
				</c:if>
				<c:if test="${ pi.currentPage < pi.maxPage }">
					<c:url var="last" value="suppotList.do">
						<c:param name="page" value="${ pi.maxPage }"/>
					</c:url> 
					<a href = "${ last }">&gt;&gt;</a>
				</c:if>
			</li>
		</ol>
	</div>
	<footer style="margin-top: 10%;">
		<jsp:include page="../../../common/footer.jsp"></jsp:include>
	</footer>
	
	<script>
		function timeCheck(value){
			$('.timeBtn').css('background-color', 'white');
			var Check = $(value).children('.time').is(':checked'); // radio 버튼 체크 유무 확인
			
 			if(Check){
				$(value).children('.time').prop('checked', false); // 체크 되있을 시 해제
			} else{
				$(value).children('.time').prop('checked', true); // 체크 안 되있을 시 체크
				$(value).css('background-color', 'pink');
			}
		}
		
		function dayCheck(value){
			var Check = $(value).children('.checkDay').is(':checked');
			if(Check){
				$(value).children('.checkDay').prop('checked', false);
				$(value).toggleClass("dayBtnCheck");
			} else{
				$(value).children('.checkDay').prop('checked', true);
				$(value).toggleClass("dayBtnCheck");
			}
		}
		
		function acCheck(value){
			var Check = $(value).children('.active').is(':checked');
			
			if(Check){
				$(value).children('.active').prop('checked', false);
				$(value).toggleClass("AcCheck");
				$(value).toggleClass("noAcCheck");
			} else {
				$(value).children('.active').prop('checked', true);
				$(value).toggleClass("noAcCheck");
				$(value).toggleClass("AcCheck");
			}
		}
		
		function reset(){
			$('#area').val("");
			$('.timeBtn').css('background-color', 'white');
			$('.time').prop('checked', false);
			$('.weekday').removeClass("dayBtnCheck");
			$('.checkDay').prop('checked', false);
			$('.Activity').removeClass("AcCheck");
			$('.Activity').addClass("noAcCheck");
			$('.active').prop('checked', false);
		}
	</script>
</body>
</html>  