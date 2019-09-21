<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!--PageInfo pi = "";
    	ArrayList<Board> list = (ArrayList<Board>)request.getAttribute("list");
     -->
<%
	int listCount = 10;
	int currentPage = 10;
	int maxPage = 10;
	int startPage = 1;
	int endPage = 10;
%>
<!DOCTYPE html>
<script type="text/javascript" src="resources/js/jquery-3.4.1.min.js"></script>
<html>
<style>
	*{
		margin : 0px;
	}
	nav{
		float: left;
		background-color: #01A9DB;
		width : 120px;
		height : 100vh;
	}
	
	/*********************header*********************/
	#header{
		height : 45px;
		background : #585858;
		color : white;
		padding-top : 7px;
		
	}
	b{
		font-size : 24px;
		font-weight : 800;
		margin-left : 15px;
	}
	
	.buttonArea{
		display : inline-block; 
		width : 1400px;
	}
	
	.homBtn{
		margin-left : 1100px;
		background : #01A9DB;
		font-weight : 700;
		border : 3px solid #01A9DB;
		width : 100px;
		height : 30px;
		font-size : 18px;
		
	}
	.logOutBtn{
		background : white;
		font-weight : 700;
		border : 3px solid white;
		width : 100px;
		height : 30px;
		color : #585858;
		font-size : 17px;
	}
	/***********************************************/
	
	/******************** nav **********************/
	.menu div{
		cursor:pointer;
		text-align : center;
	}
	
	#userM{
		display : inline-block;
		width : 100%;
		margin-left : auto;
		margin-right : auto;
	}
	#userMb{
		margin-left : 3%;
		font-weight : 800;
		color : white;
		font-size : 17px;
	}
	#boardM{
		display : inline-block;
		width : 100%;
		margin-left : auto;
		margin-right : auto;
		text-align: center;
	}
	#boardMb{
		margin-left : 1%;
		font-weight : 800;
		color : white;
		font-size : 17px;
	}
    .menu .hide{display:none;}
    .menu{
    	margin-left : 5px;
    	margin-right : 5px;
    	margin-top : 8px;
    	margin-bottom : 8px;
    	list-style:none;
    	border-bottom : 3px solid #0489B1;
    }
    
    .memuImg{
    	width : 70%;
    	height : 70%;
    	padding-top : 10px;
    	padding-bottom : 20px;
    	padding-right : 10px;
    	margin-left : 10px;
    }
    
    .memuImg>img{
    	width : 100%;
    	height : 100%;
    }
    
    li{
    	list-style:none;
    	padding-left:0px;
    }
    ul{
    	
    	padding-left:0px;
    }
    
    .menuUl{
    	width : 100%;
    }
	/***********************************************/
	
	/************************nav2****************************/
	.navArea2{
		width : 280px;
		background : #0B4C5F;
	}
	
	#boardMbar{
		display:none;
		cursor:pointer;
		text-align : center;
	}
	
	#userMbar{
		cursor:pointer;
		text-align : center;
	}
	
	.nav2Menu{
		height : 70px;
		font-size : 20px;
		font-weight : 900;
		color : white;
		padding-top : 20px;
		border-bottom : 3px solid #086A87;
		padding-bottom : 19px;
		margin-left : 20px;
		margin-right : 20px;
	}
	/********************************************************/
	
	/**************************content*************************/
	.content{
		margin-left : 400px;
		height : 100vh;
	}
	
	#deListB{
		font-size : 27px;
		font-weight : 900;
		margin-left : 15px;
		width : 1400px;
		padding-top : 10px;
		padding-bottom : 10px;
		border-bottom : 3px solid black;
	}
	
	.deListTr:hover{
		background: rgb(248,248,248);
		cursor : pointer;
	}
	.deListArea {
		padding-left : 50px;
		padding-top : 10px;
	}
	
	.deListList {
		border-top: 2px solid black;
		margin-bottom: 20px;
	}
	
	.deListTable {
		margin-left: 10px;
		border-bottom: 1px solid darkgray;
		border-collapse: collapse;
	}
	
	.deListTrTh>th {
		padding: 10px;
		height: 40px;
		border-bottom: 1px solid black;
		font-weight : 800;
		font-size : 20px;
		text-align: center;
	}
	
	.deListTd {
		padding: 10px;
		height: 75px;
		text-align: center;
		border-bottom: 1px solid gray;
	}
	/**********************************************************/
	
	/*********************페이징***********************/
	.pagingArea button{
		border-radius: 15px; 
		background: #0B4C5F;
		color : white;
		font-weight : 15px;
		
	}
	.pagingArea{
		padding-top : 20px;
		padding-bottom :20px;
		text-align : center;
		width : 700px;
		margin-left : 250px;
	}
	/************************************************/
	
	
	/***************************** table 영역 ******************************/
	.tableDiv{
		display : inline-block;
		width : 450px;
		/* border-top : 5px solid #CEE3F6;
		border-bottom : 5px solid #CEE3F6; */
		margin-left : 30px;
		margin-top : 50px;
		padding-left : 20px;
		padding-bottom : 20px;
	}
	.tableDTh{
		padding-left : 10px;
		height: 50px;
		background : rgb(240,240,240);
		text-align : center;
	}
	td{
		padding-left : 10px;
		height: 70px;
		width : 100px;
	}
	tr{
		border-top : 1px solid rgb(240,240,240);
		border-bottom : 1px solid rgb(240,240,240);
		background : white;
	}
	.tableB{
		margin-top : 10px;
		margin-bottom : 10px;
		font-weight : bold;
		font-size : 25px;
	}
	
	.todaImgArea{
		display : inline-block;
		margin-top : 30px;
		width : 120px;
		height : 100px;
	}
	
	.todayImg{
		width : 90%;
		height : 100%;
	}
	.todayDiv{
		display : inline-block;
		width : 320px;
		padding-left:120px;
		font-size : 18px;
		font-weight : bold;
	}
	
	.todayArea{
		margin-top : 20px;
		margin-left : 150px;
		width : 1000px;
		border : 5px solid #CEE3F6;
	}
	.todayB{
		margin-left : 50px;
		margin-right : 50px;
		margin-top : 10px;
		margin-bottom : 10px;
		font-weight : bold;
		font-size : 30px;
		text-align : center;
		background : rgb(240,240,240);
 	}
 	
 	.countArea{
 		padding-left : 10px;
 		font-size : 70px;
 	}
 	.tableDeTh{
 		width : 200px;
 		padding-left : 10px;
		height: 50px;
 		background : rgb(240,240,240);
 		text-align : center;
 	}
</style>

<head>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="header">
		<b>MnB(Mom And Bebe) 관리자 홈페이지</b>
		<div class="buttonArea">
			<button type="button" class="homBtn" onclick="location.href='managerMainHome.do'">home</button>
			<button type="button" class="logOutBtn" onclick="location.href='logout.do'">로그아웃</button>
		</div>
	</div>
	<div class="wrap">
		<nav class="navArea">
			<div>
				 <ul class="menuUl">
	        		<li class="menu">
	           		 	<div id="userM"><img class="memuImg" src="resources/images/manager/user.png" ><div id="userMb">회원 관리</div></div>
	       			 </li>
	 
			        <li class="menu">
			            <div id="boardM"><img class="memuImg" src="resources/images/manager/statement.png"><div id="boardMb">게시판 관리</div></div>
			        </li>
			    </ul>
			</div>
		</nav>
		<nav class="navArea2">
			<div id="userMbar">
				 <ul class="nav2MenuUl">
	        		<li class="nav2Menu">
	        			<div id="userMa" onclick="location.href='mManaList.do'">회원 관리</div>
	       			 </li>
			        <li class="nav2Menu">
			        	<div id="userLevel" onclick="location.href='mLevelList.do'">회원 등급</div>
			        </li>
			    </ul>
			</div>
			
			<div id="boardMbar">
				 <ul class="nav2MenuUl">
	        		<li class="nav2Menu" >
	        			<div id="boardMbb" onclick="location.href='mDeList.do'">신고게시판</div>
	       			 </li>
			        <li class="nav2Menu">
			        	<div id="boardQnA" onclick="location.href='mQnaList.do'">QnA게시판</div>
			        </li>
			         <li class="nav2Menu">
			        	<div id="boardFaQ" onclick="location.href='mFaqList.do'">FAQ게시판</div>
			        </li>
			        <li class="nav2Menu">
			        	<div id="boardPro" onclick="location.href='mNoticeList.do'">공지사항</div>
			        </li>
			    </ul>
			</div>
		</nav>	
		
		<div class="content">
			<div id="deListB">${ loginUser.userName } 관리자님이 접속했습니다.</div>
			<div class="todayArea">
				<div class="todayB">TODAY</div>
				<div class="todayDiv" id="newM">
					<div class="todaImgArea">
						<img class="todayImg" src="resources/images/main/user.png">
						신규 가입자
					</div>
					<div class="countArea">
					${ userCount }
					</div>
				</div>
				<div class="todayDiv" id="newD">
					<div class="todaImgArea">
						<img class="todayImg" src="resources/images/board/warning.png">
						신고 게시글 수
					</div>
					<div class="countArea">
					${ decCount }
					</div>
				</div> 
				<div class="todayDiv" id="newQ">
					<div class="todaImgArea">
						<img class="todayImg" src="resources/images/manager/question.png">
						문의사항 수
					</div>
					<div class="countArea">
					${ qnaCount }
					</div>
				</div>
			</div>
			<div id="tableArea">
				<div class="tableDiv" id="memberJoinArea">
					<div class="tableB">신규 가입자</div>
					<table class="tableD" id="memberJoinTable">
						<thead>
							<tr class="tableDTr">
								<th class="tableDTh">아이디</th>
								<th class="tableDTh">이름</th>
								<th class="tableDTh">닉네임</th>
								<th class="tableDTh">가입날짜</th>
								
							</tr>
						</thead>
						<tbody>
						</tbody>
					</table>
				</div>
				<div class="tableDiv" id="decArea">
					<div class="tableB">신고 글</div>
					<table class="tableD" id="decTable">
						<thead>
							<tr class="tableDTr">
								<th class="tableDeTh">제목</th>
								<th class="tableDTh" >작성자</th>
								<th class="tableDTh">신고날짜</th>
							</tr>
						</thead>
						<tbody>
						</tbody>
					</table>
				</div>
				<div class="tableDiv" id="qnaArea">
					<div class="tableB">문의사항 글</div>
					<table class="tableD" id="qnaTable">
						<thead>
							<tr class="tableDTr">
								<th class="tableDeTh">제목</th>
								<th class="tableDTh" >작성자</th>
								<th class="tableDTh">문의날짜</th>
							</tr>
						</thead>
						<tbody>
						</tbody>
					</table>
				</div>
				
			</div>
			
		</div>
	</div>
</body>
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
<script>
			function topList(){
				$.ajax({
					url: "mUsertopList.do",
					dataType: "json",
					success: function(data){
						$tableBody = $("#memberJoinTable tbody");
						$tableBody.html("");
						
						for(var i in data){
							var $tr = $("<tr>");
							var $userId = $("<td>").text(data[i].userId);
							var $userName = $("<td>").text(decodeURIComponent(data[i].userName));
							var $nickName = $("<td>").text(decodeURIComponent(data[i].nickName));
							var $enroll_date = $("<td>").text(data[i].enroll_Date);
			
							
							$tr.append($userId);
							$tr.append($userName);
							$tr.append($nickName);
							$tr.append($enroll_date);
							
							$tableBody.append($tr);
						}
					}
				});
				$.ajax({
					url: "mDectopList.do",
					dataType: "json",
					success: function(data){
						$tableBody = $("#decTable tbody");
						$tableBody.html("");
						
						for(var i in data){
							var $tr = $("<tr>");
							var $bTitle = $("<td>").text(decodeURIComponent(data[i].bTitle.replace(/\+/g, " ")));
							var $bWriter = $("<td>").text(decodeURIComponent(data[i].bWriter));
							var $b_CreateDate = $("<td>").text(data[i].b_CreateDate);
			
							
							$tr.append($bTitle);
							$tr.append($bWriter);
							$tr.append($b_CreateDate);
							
							$tableBody.append($tr);
						}
					}
				});
				$.ajax({
					url: "mQnatopList.do",
					dataType: "json",
					success: function(data){
						$tableBody = $("#qnaTable tbody");
						$tableBody.html("");
						
						for(var i in data){
							var $tr = $("<tr>");
							var $bTitle = $("<td>").text(decodeURIComponent(data[i].bTitle.replace(/\+/g, " ")));
							var $bWriter = $("<td>").text(decodeURIComponent(data[i].bWriter));
							var $b_CreateDate = $("<td>").text(data[i].b_CreateDate);
			
							
							$tr.append($bTitle);
							$tr.append($bWriter);
							$tr.append($b_CreateDate);
							
							$tableBody.append($tr);
						}
					}
				});
			}
			
			$(function(){
				topList();
				
				setInterval(function(){
					topList();
					
				}, 10000);
			});
</script>


</html>