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
	
	/*********** info 테이블 1**************/
	#userInfoArea1{
		margin-left : 20px;
		margin-top : 20px;
	}
	
	.userInfoTable {
		margin-left: 10px;
		border-bottom: 1px solid darkgray;
		border-collapse: collapse;
	}
	
	.userInfoTh {
		padding: 10px;
		height: 30px;
		width : 200px;
		border-bottom: 1px solid white;
		font-weight : 800;
		font-size : 18px;
		text-align: center;
		background : rgb(240,240,240);
	}
	
	.userInfoTd {
		padding: 10px;
		height: 30px;
		width : 400px;
		border-top: 1px solid rgb(240,240,240);
		border-bottom: 1px solid rgb(240,240,240);
	}
	
	#userLevel_selectOption{
		height : 30px;
		width : 300px;
	}
	
	/*************** info 테이블 2*****************/
	#userInfoArea2{
		margin-left : 20px;
		margin-top : 20px;
		padding-bottom : 20px;
		display : inline-block;
	}
	
	.userDetailTh {
		padding: 10px;
		height: 30px;
		width : 200px;
		border-bottom: 1px solid white;
		font-weight : 800;
		font-size : 18px;
		text-align : center;
		background : rgb(240,240,240);
	}
	
	.userDetailTd {
		padding: 10px;
		height: 30px;
		width : 400px;
		padding-left : 30px;
		border-top: 1px solid rgb(240,240,240);
		border-bottom: 1px solid rgb(240,240,240);
	}
	
	#address2{
		width : 300px;
		height : 40px;
		border : 1px solid white;
		margin-bottom: 10px;
		/* border-bottom : 1px solid black; */
	}
	#address3{
		width : 300px;
		height : 40px;
		border : 1px solid white;
		/* border-bottom : 1px solid black; */
	}
	#address4{
		width : 300px;
		border : 1px solid white;
		height : 40px;
	}
	.addrSearch{
		color : #01A9DB;
		font-weight : 900;
	}
	
	#saveBtnArea{
		margin-left : 20px;
		width: 1200px;
		padding-bottom : 20px;
		padding-left : 550px;
		border-bottom: 2px solid rgb(200,200,200);
	}
	
	#saveBtn{
		width : 100px;
		height : 40px;
		background : #01A9DB;
		border : 2px solid #01A9DB;
		color: white;
		font-weight : bold;
	}
	
	/***************** 메모 테이블 **********************/
	#userMemoArea{
		margin-left : 20px;
		margin-top : 20px;
		display : inline-block;
	}
	.userMemoTh {
		padding: 10px;
		height: 30px;
		width : 200px;
		border-bottom: 1px solid white;
		font-weight : 800;
		font-size : 18px;
		text-align: center;
		background : rgb(240,240,240);
	}
	
	.userMemoTextTd {
		padding: 10px;
		height: 30px;
		width : 700px;
		border-top: 1px solid rgb(240,240,240);
		border-bottom: 1px solid rgb(240,240,240);
	}
	.userMemoBtnTd {
		padding: 10px;
		height: 30px;
		width : 300px;
		text-align: center;
		border-top: 1px solid rgb(240,240,240);
		border-bottom: 1px solid rgb(240,240,240);
	}
	
	#memoArea{
		margin-left : 23px;
		margin-top : 10px;
	}
	
	#memoB{
		font-size : 20px;
		font-weight : bold;
	}
	
	.memoIdTd{
		width : 200px;
		padding: 10px;
		height: 70px;
		text-align: center;
		border-top: 1px solid rgb(240,240,240);
		border-bottom: 1px solid rgb(240,240,240);
	}
	
	.memoContentTd{
		width : 600px;
		padding: 10px;
		height: 70px;
		text-align: center;
		border-top: 1px solid rgb(240,240,240);
		border-bottom: 1px solid rgb(240,240,240);
	}
	
	.memoDateTd{
		width : 150px;
		padding: 10px;
		height: 70px;
		text-align: center;
		border-top: 1px solid rgb(240,240,240);
		border-bottom: 1px solid rgb(240,240,240);
	}
	
	.memoBtnTd{
		width : 250px;
		padding: 10px;
		height: 70px;
		text-align: center;
		border-top: 1px solid rgb(240,240,240);
		border-bottom: 1px solid rgb(240,240,240);
	}
	
	#delBtn, #rSubmit, #secBtn {
		height : 30px;
		background : rgb(220,220,220);
		border : 2px solid rgb(220,220,220);
		font-weight : bold;
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
			<div id="memberListB">회원정보보기</div>
			<div id="userInfoArea1">
				<table id="userInfoTable">
					<tr class="userInfoTr">
						<th class="userInfoTh">아이디</th>
						<td class="userInfoTd">0322sol</td>
						<th class="userInfoTh">이름</th>
						<td class="userInfoTd"><input type="text" value="이한솔" style="width:300px;height:30px;"></td>
					</tr>
					<tr class="userInfoTr"> 
						<th class="userInfoTh">생년월일</th>
						<td class="userInfoTd">1995.03.22</td>
						<th class="userInfoTh">가입일자</th>
						<td class="userInfoTd">2018.08.08</td>
					</tr>
					<tr class="userInfoTr"> 
						<th class="userInfoTh">회원등급</th>
						<td class="userInfoTd">
							<select id="userLevel_selectOption">
								<option value="1">일반회원</option>
								<option value="2">베이비시터 회원</option>	
							</select></td>
						<th class="userInfoTh">회원상태</th>
						<td class="userInfoTd">
							Y &nbsp;&nbsp;&nbsp;
							<button id="secBtn">탈퇴하기</button>
						</td>
					</tr>
					<tr>
						<td class="userInfoTd" colspan="4" style="font-size:12px; text-align:left">
							* 베이비시터로 등급 변경은 회원등급 페이지에서 가능합니다.(베이비시터 신청서를 작성한 회원에 대해서만)
						</td>
					</tr>
				</table>
			</div>
			
			<div id="userInfoArea2">
				<table id="userDetailTable">
					<tr class="userDetailTr">
						<th class="userDetailTh">주소</th>
						<td class="userDetailTd" colspan="3">
							주소 <a onclick="addressPopup();"><span class="addrSearch" style="font-size: 15px;">주소검색></span></a>
	               			<div><input type="text" name="address2" id="address2" class="form-control" value="인천 계양구 장제로743번길 14"></div>
	            		
	               			<div><input type="text" name="address3" id="address3" class="form-control" value="(작전동, 작전2차뉴서울아파트)"></div>
	            		
	               			<div><br>상세주소<input type="text" name="address4" id="address4" class="form-control" value="201동 606호"></div>
	               		</td>
					</tr>
					<tr class="userDetailTr">
						<th class="userDetailTh">핸드폰번호</th>
						<td class="userDetailTd"><input type="text" value="010-8488-6817" style="width:300px;height:30px;"></td>
						<th class="userDetailTh">이메일</th>
						<td class="userDetailTd"><input type="text" value="0322sol@naver.com" style="width:300px;height:30px;"></td>
					</tr>
				</table>
			</div>
			
			<div id="saveBtnArea">
				<button id="saveBtn">저장하기</button>
			</div>
			
			<div id="userMemoArea">
				<table id="userMemoTable">
					<tr class="userMemoTr">
						<th class="userMemoTh">회원메모</th>
						<td class="userMemoTextTd"><textarea cols=100 rows=3 id=rContent style="resize: none;"></textarea></td>
   						<td class="userMemoBtnTd"><button id="rSubmit">등록하기</button></td>
					</tr>
				</table>
			</div>
			
			<div id="memoArea">
				<div id="memoB">메모 내역</div>
				<table id="memoTable">
					<tr class="memoTr">
						<td class="memoIdTd">admin</td>
						<td class="memoContentTd">비밀번호 변경 요청함</td>
						<td class="memoDateTd">2018.03.22</td>
						<td class="memoBtnTd"><button id="delBtn">삭제</button></td>
					</tr>
					<tr class="memoTr">
						<td class="memoIdTd">admin2</td>
						<td class="memoContentTd">일반회원으로 변경을 요청함</td>
						<td class="memoDateTd">2018.09.24</td>
						<td class="memoBtnTd"><button id="delBtn">삭제</button></td>
					</tr>
				</table>
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
         function addressPopup() {
        	 daum.postcode.load(function(){
        	 new daum.Postcode({
                 oncomplete: function(data) {
                     // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
                     // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                     // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                     var addr = ''; // 주소 변수
                     var extraAddr = ''; // 참고항목 변수
     
                     //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                     if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                         addr = data.roadAddress;
                     } else { // 사용자가 지번 주소를 선택했을 경우(J)
                         addr = data.jibunAddress;
                     }
     
                     // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                     if(data.userSelectedType === 'R'){
                         // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                         // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                         if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                             extraAddr += data.bname;
                         }
                         // 건물명이 있고, 공동주택일 경우 추가한다.
                         if(data.buildingName !== '' && data.apartment === 'Y'){
                             extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                         }
                         // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                         if(extraAddr !== ''){
                             extraAddr = ' (' + extraAddr + ')';
                         }
                         // 조합된 참고항목을 해당 필드에 넣는다.
                         document.getElementById("address3").value = extraAddr;
                     
                     } else {
                         document.getElementById("address3").value = '';
                     }
                     // 우편번호와 주소 정보를 해당 필드에 넣는다.
                        //document.getElementById('address1').value = data.zonecode;
                     document.getElementById("address2").value = addr;
                     // 커서를 상세주소 필드로 이동한다.
                      document.getElementById("address4").focus();
                 }
             }).open();
        	 })
          }
</script>
<script
	src="http://dmaps.daum.net/map_js_init/postcode.v2.js?autoload=false">
</script>

</html>