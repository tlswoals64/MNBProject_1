<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		margin-left : 430px;
		height : 100vh;
		padding-top : 30px;
	}
	
	.qnaTable{
		border : 2px solid #01A9DB;
		border-collapse: separate;
		border-spacing: 0 10px;
		margin-bottom : 10px;
		padding-left : 10px;
		padding-right : 10px;
		
	}
	.qnaTh{
		text-align : center;
		font-size : 18px;
		height : 50px;
		margin-top : 20px;
	}
	
	.qnaTd{

		font-size : 15px;
		padding-left : 10px;
	}
	
	#firstArea{
		background : #CEE3F6;
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
		width : 70px;
		
	}
	
	#userIdArea, #writeDateArea{
		width : 80px;
	}
	
	.qnaRely{
		width : 1020px;
		margin-top : 10px;
		resize : none;
		border : 2px solid rgb(248,248,248);
	}
	
	#qnaContent{
		width : 1020px;
		height : 300px;
		margin-top : 30px;
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
		margin-left : 120px;
	}
	/************************************************/
	
	/********************** 버튼 *****************************/
	.btn{
		display : inline-block;
		height : 40px;
		width : 100px;
	}
	
	#applyBtn{
		border : 2px solid #CEE3F6;
	    background : #CEE3F6;
	    font-szie : 18px;
	    font-weight: bold;
	}
	
	#cancleBtn{
		border : 2px solid #CEE3F6;
		
	}
	
	.btnArea{
		width : 750px;
		margin-left : auto;
		margin-right : auto;
		margin-top : 15px;
		padding-bottom : 15px;
	}
	/*******************************************************/
	
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
			<button type="button" class="homBtn">home</button>
			<button type="button" class="logOutBtn">로그아웃</button>
		</div>
	</div>
	<div class="wrap">
		<nav class="navArea">
			<div>
				 <ul class="menuUl">
	        		<li class="menu">
	           		 	<div id="userM"><img class="memuImg" src="resources/images/manager/user.png"><div id="userMb">회원 관리</div></div>
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
	        			<div id="userMa">회원 관리</div>
	       			 </li>
			        <li class="nav2Menu">
			        	<div id="userLevel">회원 등급</div>
			        </li>
			    </ul>
			</div>
			
			<div id="boardMbar">
				 <ul class="nav2MenuUl">
	        		<li class="nav2Menu">
	        			<div id="boardMbb">신고게시판</div>
	       			 </li>
			        <li class="nav2Menu">
			        	<div id="boardQnA">QnA게시판</div>
			        </li>
			    </ul>
			</div>
		</nav>	
		
		<div class="content">
			<table class="qnaTable">
				<tr class="qnaTr" id="firstArea">
					<th class="qnaTh" id="typeArea">유형</th>
					<td class="qnaTd" id="type">
						베이비시터 등록
					</td>
					
					<th class="qnaTh" id="userIdArea">작성자</th>
					<td class="qnaTd" id="userId">0322sol</td>
					
					<th class="qnaTh" id="writeDateArea">작성일</th>
					<td class="qnaTd" id="writeDate">
						2019.08.27
					</td>
				</tr>
				
				<tr class="qnaTr" id="titleArea">
					<th class="qnaTh" colspan="1">제목</th>
					<td class="qnaTd" colspan="5">베이비시터가 되려면 어떻게 해야하나요?</td>
				</tr>
				
				<tr class="qnaTr" id="contentArea">
					<th class="qnaTh" colspan="1">
						내용
					</th>
					<td class="qnaTd" colspan="5">
						<div id="qnaContent">베이비시터가 되고싶습니다 어떻게해야할까요?
							 아무리 찾아도 베이비시터 신청버튼이 어딨는지 모르겠습니다.
							 도!대!체 버든티 어디있는건가요?!?!?!!?!?!??!?!!?!?
							 진짜 알려주세요 ㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠ
							 ㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠ</div>
					</td>
				</tr>
				<tr class="qnaTr" id="replyArea">
					<th class="qnaTh" colspan="1">답변</th>
					<td class="qnaTd" colspan="5">
						<textarea class="qnaRely" rows="17">
						</textarea>
					</td>
				</tr>
			</table>
			<div class="btnArea">
				<div class="btn" id="applyBtn">확인</div>
				<div class="btn" id="cancleBtn">취소</div>
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

</html>