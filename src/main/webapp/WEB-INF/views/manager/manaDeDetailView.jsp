<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<script type="text/javascript" src="resources/js/jquery-3.4.1.min.js"></script>
<html>
<style>
* {
	margin: 0px;
}

nav {
	float: left;
	background-color: #01A9DB;
	width: 120px;
	height: 100vh;
}

.imgdiv {
	margin-left: auto;
	margin-right: auto;
	margin-top: 10px;
	height: 70px;
	width: 70px;
}

.imgdiv>img {
	height: 100%;
	width: 100%;
}
/*********************header*********************/
#header {
	height: 45px;
	background: #585858;
	color: white;
	padding-top: 7px;
}

b {
	font-size: 24px;
	font-weight: 800;
	margin-left: 15px;
}

.buttonArea {
	display: inline-block;
	width: 1400px;
}

.homBtn {
	margin-left: 1100px;
	background: #01A9DB;
	font-weight: 700;
	border: 3px solid #01A9DB;
	width: 100px;
	height: 30px;
	font-size: 18px;
}

.logOutBtn {
	background: white;
	font-weight: 700;
	border: 3px solid white;
	width: 100px;
	height: 30px;
	color: #585858;
	font-size: 17px;
}
/***********************************************/

/******************** nav **********************/
.menu div {
	cursor: pointer;
	text-align: center;
}

#userM {
	display: inline-block;
	width: 100%;
	margin-left: auto;
	margin-right: auto;
}

#userMb {
	margin-left: 3%;
	font-weight: 800;
	color: white;
	font-size: 17px;
}

#boardM {
	display: inline-block;
	width: 100%;
	margin-left: auto;
	margin-right: auto;
	text-align: center;
}

#boardMb {
	margin-left: 1%;
	font-weight: 800;
	color: white;
	font-size: 17px;
}

.menu .hide {
	display: none;
}

.menu {
	margin-left: 5px;
	margin-right: 5px;
	margin-top: 8px;
	margin-bottom: 8px;
	list-style: none;
	border-bottom: 3px solid #0489B1;
}

.memuImg {
	width: 70%;
	height: 70%;
	padding-top: 10px;
	padding-bottom: 20px;
	padding-right: 10px;
	margin-left: 10px;
}

.memuImg>img {
	width: 100%;
	height: 100%;
}

li {
	list-style: none;
	padding-left: 0px;
}

ul {
	padding-left: 0px;
}

.menuUl {
	width: 100%;
}
/***********************************************/

/************************nav2****************************/
.navArea2 {
	width: 280px;
	background: #0B4C5F;
}

#boardMbar {
	display: none;
	cursor: pointer;
	text-align: center;
}

#userMbar {
	cursor: pointer;
	text-align: center;
}

.nav2Menu {
	height: 70px;
	font-size: 20px;
	font-weight: 900;
	color: white;
	padding-top: 20px;
	border-bottom: 3px solid #086A87;
	padding-bottom: 19px;
	margin-left: 20px;
	margin-right: 20px;
}
/********************************************************/

/**************************content*************************/
.content {
	margin-left: 400px;
	height: 100vh;
}

#memberListB {
	font-size: 27px;
	font-weight: 900;
	margin-left: 15px;
	width: 1600px;
	padding-top: 10px;
	padding-bottom: 10px;
	border-bottom: 3px solid black;
}

#amountUser {
	font-size: 18px;
	color: #01A9DB;
}

#deListB {
	font-size: 27px;
	font-weight: 900;
	margin-left: 15px;
	width: 1400px;
	padding-top: 10px;
	padding-bottom: 10px;
	border-bottom: 3px solid black;
}
.reportTable{
		border : 2px solid #01A9DB;
		border-collapse: separate;
		border-spacing: 0 10px;
		padding-left : 10px;
		padding-right : 10px;
		
	}
	.rpTh{
		text-align : center;
		font-size : 18px;
		height : 50px;
		margin-top : 20px;
	}
	
	.rpTd{

		font-size : 17px;
		padding-left : 10px;
	}
	
	#firstArea{
		background : #CEE3F6;
	}
	#secondtArea>th{
		border-bottom : 2px solid rgb(220,220,220);
	}
	
	#deContentArea{
		background : #CEE3F6;
	}
	#secondtArea>td{
		border-bottom : 2px solid rgb(220,220,220);
	}
	
	#contentArea > td{
		border-top : 2px solid rgb(220,220,220);
	}
	#contentArea > th{
		border-top : 2px solid rgb(220,220,220);
		
	}
	#replyArea{
		background : rgb(248,248,248);
		
	}
	
	#writeDate, #userId, #type{
		width : 300px;
	}
	
	#typeArea{
		width : 120px;
		
	}
	
	#userIdArea, #writeDateArea{
		width : 130px;
	}
	
	.qnaRely{
		width : 1077px;
		margin-top : 10px;
		resize : none;
		border : 2px solid rgb(248,248,248);
		font-size : 17px;
		text-aling : left;
	}
	#replyTd{
		border-top : 2px solid white;
	}
	
	#qnaContent{
		width : 1150px;
		height : 300px;
		margin-top : 30px;
		margin-bottom : 20px;
		padding : 10px;
		border : 2px solid #CEE3F6;;
	}
	#deContent{
		width : 1140px;
		height : 300px;
		margin-top : 30px;
		margin-bottom : 20px;
		padding : 10px;
		background : white;
	}
	
	.repTable{
		border : 3px solid #01A9DB;
		border-top : 3px solid white;
		
	}
	.repTh{
		text-align : center;
		font-size : 18px;
		height : 50px;
		width : 150px;
		margin-top : 20px;
	}

/************************************************/

/************************* 회원등급 *****************************/
#userLevel_selectOption {
	height: 30px;
	width: 200px;
}

/*************************************************************/

/********************** 버튼 *****************************/
.btn {
	display: inline-block;
	height: 40px;
	width: 100px;
}

#applyBtn {
	border: 2px solid rgb(240, 240, 240);
	background: rgb(240, 240, 240);
	font-szie: 18px;
	font-weight: bold;
}

#cancleBtn {
	border: 2px solid rgb(240, 240, 240);
}

.btnArea {
	width: 1200px;
	margin-left: auto;
	margin-right: auto;
	margin-top: 15px;
	padding-bottom: 15px;
}
/*******************************************************/

/*************content부분*************************/
/***********테이블 부분**************/
.rtTd {
	border: 1px solid rgb(220, 220, 220);
	width: 1000px;
	height: 90px;
}

.rtTh {
	border: 1px solid white;
	width: 300px;
	height: 90px;
	font-size: 18px;
	font-weight: bold;
	text-align: center;
	background: rgb(240, 240, 240);
}

#tableArea {
	margin-left: 30px;
	margin-top: 30px;
}

/*************************************/
</style>
<head>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="header">
		<b>MnB(Mom And Bebe) 관리자 홈페이지</b>
		<div class="buttonArea">
			<button type="button" class="homBtn">home</button>
			<button type="button" class="logOutBtn">로그아웃</button>
		</div>
	</div>
	<div class="wrap">
		<nav class="navArea">
			<div>
				<ul class="menuUl">
					<li class="menu">
						<div id="userM">
							<img class="memuImg" src="resources/images/manager/user.png">
							<div id="userMb">회원 관리</div>
						</div>
					</li>

					<li class="menu">
						<div id="boardM">
							<img class="memuImg" src="resources/images/manager/statement.png">
							<div id="boardMb">게시판 관리</div>
						</div>
					</li>
				</ul>
			</div>
		</nav>
		<nav class="navArea2">
			<div id="userMbar">
				<ul class="nav2MenuUl">
					<li class="nav2Menu">
						<div id="userMa" onclick="location.href='mManaList.do'">회원
							관리</div>
					</li>
					<li class="nav2Menu">
						<div id="userLevel" onclick="location.href='mLevelList.do'">회원
							등급</div>
					</li>
				</ul>
			</div>

			<div id="boardMbar">
				<ul class="nav2MenuUl">
					<li class="nav2Menu">
						<div id="boardMbb" onclick="location.href='mDeList.do'">신고게시판</div>
					</li>
					<li class="nav2Menu">
						<div id="boardQnA" onclick="location.href='mQnaList.do'">QnA게시판</div>
					</li>
				</ul>
			</div>
		</nav>

		<div class="content">
			<div id="memberListB">신고 게시판</div>
				<div id="tableArea">
					<table class="reportTable">
						<tr class="rpTr" id="firstArea">
							<th class="rpTh" id="typeArea">유형</th>
							<td class="rpTd" id="type"><c:choose>
									<c:when test="${r.rType ==1}">
								          사이트 이용관련
								    </c:when>
									<c:when test="${r.rType ==2}">
								        회원정보
								    </c:when>
									<c:when test="${r.rType ==3}">
								        불건전 행위
								    </c:when>
									<c:when test="${r.rType ==4}">
								        베이비시터 관련
								    </c:when>
									<c:otherwise>
								        부모님 관련
								    </c:otherwise>
								</c:choose></td>

							<th class="rpTh" id="userIdArea">신고신청자</th>
							<td class="rpTd" id="userId">${ r.rMan }</td>

							<th class="rpTh" id="writeDateArea">신고일</th>
							<td class="rpTd" id="writeDate">${ r.rDate }</td>
						</tr>
						<tr class="rpTr" id="secondtArea">
							<th class="rpTh" id="typeArea">게시판 번호</th>
							<td class="rpTd" id="bNo">${ r.bNo }</td>

							<th class="rpTh" id="userIdArea">게시글 작성자</th>
							<td class="rpTd" id="bWriter">${ r.bWriter }</td>

							<th class="rpTh" id="writeDateArea">게시글 작성일</th>
							<td class="rpTd" id="b_CrateDate">${ r.b_CreateDate }</td>
						</tr>

						<tr class="rpTr" id="titleArea">
							<th class="rpTh" colspan="1">게시글 제목</th>
							<td class="rpTd" colspan="5">${ r.bTitle }</td>
						</tr>

						<tr class="rpTr" id="contentArea">
							<th class="rpTh" colspan="1">게시글 내용</th>
							<td class="rpTd" colspan="5">
								<div id="qnaContent">${ r.bContent }</div>
							</td>
						</tr>
						<tr class="rpTr" id="deContentArea">
							<th class="rpTh" colspan="1">신고 내용</th>
							<td class="rpTd" colspan="5">
								<div id="deContent">${ r.rContent }</div>
							</td>
						</tr>

					</table>
				</div>
				<div class="btnArea">
					<button class="btn" id="applyBtn" onclick="apply(this);" value="1">승인</button>
					<button class="btn" id="refuseBtn" onclick="apply(this);" value="2">반려</button>
					<div class="btn" id="cancleBtn"
						onclick="location.href='mDeList.do'">취소</div>
				</div>

		</div>
	</div>
</body>
<script>
	function apply(v){
		var type = $(v).val();
		var rNo = '${ r.rNo }';
		var bNo = $('#bNo').text();
		var userId = $('#bWriter').text();
		console.log(type);
		
		location.href = 'mDeDeApply.do?rNo=' + rNo + '&bNo=' + bNo + '&userId='+userId + '&type=' + type;
			
		
	}
</script>
<script>
    $(document).ready(function(){
        $(".menu>div").click(function(){
        	var id_check = $(this).attr("id");
        	if(id_check == "userM"){
        		$("#userMbar").show();
        		$("#boardMbar").hide();	
        	}
        	if(id_check == "boardM"){
        		$("#boardMbar").show();	
        		$("#userMbar").hide();
        	}
            
        });
    });
</script>

</html>
