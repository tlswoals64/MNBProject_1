<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
		width : 1600px;
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
		height: 50px;
		border-bottom: 1px solid black;
		font-weight : 800;
		font-size : 20px;
		text-align: center;
	}
	
	.memberListTd {
		padding: 10px;
		height: 90px;
		text-align: center;
		border-bottom: 1px solid gray;
		font-size : 18px;
	}
	
	#userId{
		width : 120px;
	}
	#userLevelName{
		width : 200px;
	}
	#userName{
		width : 100px;
	}
	#birth{
		width : 200px;
	}
	#userAddr{
		width : 550px;
	}
	#createDate{
		width : 200px;
	}
	#status{
		width : 100px;
	}
	/**********************************************************/
	
	#amountUser{
		font-size : 18px;
		color : #01A9DB;
		
	}
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
		margin-left : 350px;
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
	        			<div id="userMa" onclick="location.href='mManaList.do'">회원 관리</div>
	       			 </li>
			        <li class="nav2Menu">
			        	<div id="userLevel" onclick="location.href='mLevelList.do'">회원 등급</div>
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
			<div id="memberListB">회원관리<b id="amountUser">총 회원 수 : ${ pi.listCount }</b></div>
			<div class="memberListArea">
				<div class="memberList">
					
					<table class="memberListTabe">
						<tr class="memberListTrTh">
							<th>아이디</th>
							<th>회원등급</th>
							<th>이름</th>
							<th>생년월일</th>
							<th>주소</th>
							<th>가입날짜</th>
							<th>회원유무</th>
						</tr>
						<c:forEach var="m" items="${ list }">
						
							<tr class="memberListTr" onclick="goUserDetail(this);">
								<td class="memberListTd" id="userId">${ m.userId }</td>
								<%-- <c:param name="userId" value="${ m.userId }"/> --%>
								<td class="memberListTd" id="userLevelName">
									<c:if test="${ m.memberType == 1}">일반 회원</c:if>
		          					<c:if test="${ m.memberType == 2}">베이비시터 회원</c:if>
		          					<c:if test="${ m.memberType == 3}">블랙리스트 회원</c:if>
		          				</td>
								<td class="memberListTd" id="userName">${ m.userName }</td>
								<td class="memberListTd" id="birth">${ m.birth }</td>
								<td class="memberListTd" id="userAddr">${ m.address.replaceAll("/", " ") }</td>
								<td class="memberListTd" id="createDate">${ m.modify_Date }</td>
								<td class="memberListTd" id="status">${ m.status }</td>
							</tr>
							
							<script>
								function goUserDetail(t){
									var userId = $(t).children("#userId").text();
									location.href = 'mUserDetail.do?userId=' + userId;
								}
							</script>
							
						</c:forEach>
								
					</table>
					
				</div>
			</div>
			<!-- paging 부분 -->
			<div class="pagingArea">
         
	            <!-- [이전] -->
	            <c:if test="${ pi.currentPage <= 1 }">
	               [이전] &nbsp;
	            </c:if>
	            <c:if test="${ pi.currentPage > 1 }">
	               <c:url var="before" value="mManaList.do">
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
	                  <c:url var="pagination" value="mManaList.do">
	                     <c:param name="page" value="${ p }"/>
	                     <!-- blist.do?page=${p}값   -->
	                  </c:url>
	                  <a href="${ pagination }">${ p }</a> &nbsp;
	               </c:if>
	            </c:forEach>
	            
	            <!-- [다음] -->
	            <c:if test="${ pi.currentPage >= pi.maxPage }">
	               [다음]
	            </c:if>
	            <c:if test="${ pi.currentPage < pi.maxPage }">
	               <c:url var="after" value="mManaList.do">
	                  <c:param name="page" value="${ pi.currentPage + 1 }"/>
	               </c:url> 
	               <a href="${ after }">[다음]</a>
            	</c:if>
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