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
	
	#memberListB{
		font-size : 27px;
		font-weight : 900;
		margin-left : 15px;
		width : 1400px;
		padding-top : 10px;
		padding-bottom : 10px;
		border-bottom : 3px solid black;
	}
	
	.memberListTr:hover{
		background: rgb(248,248,248);
		cursor : pointer;
	}
	.memberListArea {
		padding-left : 50px;
		padding-top : 10px;
	}
	
	.memberListList {
		border-top: 2px solid black;
		margin-bottom: 20px;
	}
	
	.memberListTable {
		margin-left: 10px;
		border-bottom: 1px solid darkgray;
		border-collapse: collapse;
	}
	
	.memberListTrTh>th {
		padding: 10px;
		height: 40px;
		border-bottom: 1px solid black;
		font-weight : 800;
		font-size : 20px;
		text-align: center;
	}
	
	.memberListTd {
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
		margin-left : 80px;
	}
	/************************************************/
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
			        	<div id="userLevel" onclick="">회원 등급</div>
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
			<div id="memberListB">회원 등급 관리</div>
			<div class="memberListArea">
				<div class="memberList">
				<h3>총 신청 회원 수 : ${ pi.listCount }</h3>
					<table class="memberListTabe">
						<tr class="memberListTrTh">
							<th>신청번호</th>
							<th>회원번호</th>
							<th>아이디</th>
							<th>이름</th>
							<th>생년월일</th>
							<th>주소</th>
							<th>신청일자</th>
						</tr>
						<% for(int i= 0; i < 10; i++){ %>
						<tr class="memberListTr">
							<td class="memberListTd" id="rNum">167328</td>
							<td class="memberListTd" id="userNum">1546752763498</td>
							<td class="memberListTd" id="userId">user01</td>
							<td class="memberListTd" id="userName">이한솔</td>
							<td class="memberListTd" id="userAge">1995.01.01</td>
							<td class="memberListTd" id="userAddr">인천계양구 작전동 26-1</td>
							<td class="memberListTd" id="createDate">2019.08.18</td>
						</tr>
						<%} %>
								
					</table>
				</div>
			</div>
			<!-- paging 부분 -->
			<div class="pagingArea">
				<% if(true) {%>
					<button onclick="location.href='<%= request.getContextPath() %>/list.bo?currentPage=1'">&lt;&lt;</button>
																										  <!-- << -->
					<!-- 이전 페이지로 가는 버튼 -->
					<button id="beforeBtn" onclick="location.href='<%= request.getContextPath() %>/list.bo?currentPage=<%= currentPage - 1 %>'">&lt;</button>
										<!-- < -->
					<script>
						// 1페이지 이하면 활성화 안되게
						if(<%= currentPage %> <= 1){
							$('#beforeBtn').attr("disabled", "true");
						}
					</script>
					<!-- 10개의 페이지 목록 -->
					<% for(int p = startPage; p <= endPage; p++){ %>
						<% if(p == currentPage){ %>
							<button id="choosen" disabled><%= p %></button>
							<% } else {%>
								<button id="numBtn" onclick="location.href='<%= request.getContextPath() %>/list.bo?currentPage=<%= p %>'"><%= p %></button>
							<% } %>
						<% } %>
					<% } %>
					<!-- 다음 페이지로 -->
					<button id="afterBtn" onclick="location.href='<%= request.getContextPath() %>/list.bo?currentPage=<%= currentPage + 1 %>'">&gt;</button>
					<script>
						if(<%= currentPage %> >= <%= maxPage %>){
							$('#afterBtn').attr('disabled', 'true');
						}
					</script>
					<!-- 맨 끝으로 -->
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