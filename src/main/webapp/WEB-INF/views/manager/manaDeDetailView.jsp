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

#deListB {
	font-size: 27px;
	font-weight: 900;
	margin-left: 15px;
	width: 1400px;
	padding-top: 10px;
	padding-bottom: 10px;
	border-bottom: 3px solid black;
}

.deListTr:hover {
	background: rgb(248, 248, 248);
	cursor: pointer;
}

.deListArea {
	padding-left: 50px;
	padding-top: 10px;
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
	font-weight: 800;
	font-size: 20px;
	text-align: center;
}

.deListTd {
	padding: 10px;
	height: 75px;
	text-align: center;
	border-bottom: 1px solid gray;
}
/**********************************************************/
#levelTable {
	border-collapse: collapse;
	margin-left: auto;
	margin-right: auto;
}

.levelTh {
	text-align: center;
	font-size: 18px;
	border-bottom: 1px solid rgb(180, 180, 180);
	border-right: 1px solid rgb(180, 180, 180);
	border-top: 1px solid rgb(180, 180, 180);
	background: rgb(248, 248, 248);
	width: 200px;
}

.levelTd {
	width: 770px;
	font-size: 15px;
	border-bottom: 1px solid rgb(180, 180, 180);
	border-top: 1px solid rgb(180, 180, 180);
	padding-left: 10px;
}

.levelTr {
	height: 80px;
}

#levelTableArea {
	padding-left: 20px;
	width: 1300px;
}

#babyApply {
	padding-top: 20px;
	padding-bottom: 10px;
	font-size: 25px;
	font-weight: bold;
	text-align: center;
}

/**************** 육아돌봄 경험 테이블 ******************/
.exTable {
	border: 1px solid rgb(180, 180, 180);
	border-collapse: collapse;
	margin-top: 10px;
	margin-bottom: 10px;
}

.exTableTr>th {
	text-align: center;
	font-size: 18px;
	border-bottom: 1px solid rgb(180, 180, 180);
	border-right: 1px solid rgb(180, 180, 180);
	height: 50px;
}

.exTableTr>td {
	height: 70px;
	font-size: 15px;
	border-bottom: 1px solid rgb(180, 180, 180);
	border-right: 1px solid rgb(180, 180, 180);
	padding-left: 10px;
}

.exTitleTd {
	width: 100px;
}

.exPeTd {
	width: 200px;
}

.exConTd {
	width: 500px;
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
	width: 1000px;
	margin-left: auto;
	margin-right: auto;
	margin-top: 15px;
	padding-bottom: 15px;
}
/*******************************************************/

/*************content부분*************************?

 .outer{
      width: 600px; height: 500px; background-color: rgba(255, 255, 255, 0.4); border: 5px solid white;
      margin-left: auto; margin-right: auto; margin-top: 50px;
   }
   .tableArea {width:450px; height:350px; margin-left:auto; margin-right:auto;}
   #updateNoBtn, #cancelBtn, #deleteNoBtn{color: white;
    border-color: #747cfd;
    background-color: #747cfd;  border-radius: 15px; width: 50px; heigth: 100px; text-align: center; display: inline-block;}
   #updateNoBtn:hover, #cancelBtn:hover, #deleteNoBtn:hover{cursor: pointer;}

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
			<form action="mUserLevelUpdate.do" method="post">
				<div id="deListB">회원 등급 관리</div>
				<div class="boardbox">
      <div class="boxrow">
         <div class = "boxrow-top">
         </div>
        <form action="views/propose/proposeUpdateForm.jsp" id="detailForm" name="detailForm">
      
            <table class="pnaw_box" summary="">
               <tbody>
                <tr class="first">
                     <th>신고유형</th>
                     <td class="pnawtd" id="rType">
                     	<c:choose>
							<c:when test="${r.rType ==1}">
									부적절한 홍보
							</c:when>
							<c:when test="${r.rType ==2}">
									음란성 또는 청소년에게 부적합한 내용
							</c:when>
							<c:when test="${r.rType ==3}">
									명예훼손/사생활 침해 및 저작권침해 등
							</c:when>
							<c:otherwise>
									 기타
							</c:otherwise>
						</c:choose>
                     </td>
                  </tr>

                  <tr>
                     <th scope="row">제목</th>
                     <td class="pnawtd">
                    	${ r.bTitle }
                     
      				<input type="hidden" name="rNo" value="${ r.rNo }">
                     
                  </td>   
                  
                
                  </tr>
                 <tr>
                     <th scope="row">신고 아이디</th>
                     <td class="pnawtd">${ r.rMan }</td>
                  </tr>
                  <tr>
                <th scope="row">상세내용</th>
                     <td class="write pnawtd">
                     <textarea name="content"style='width: 100%; height: 200px;'readonly>${ r.bContent }</textarea>
                  </td>
                </tr>
                  <tr>
                     <th scope="row">신고내용</th>
                     <td class="write pnawtd">
                     <textarea name="content"style='width: 100%; height: 200px;'readonly>${ r.rContent }</textarea>
                  </td>
                   
                
                  </tr>
               
               </tbody>
            </table>
            
             <div class="joinbox" style="max-width: 100%;">
               <ul class="ul01">
                  <li><input class="inputbox02 btn btn-outline-dark" type="button" value="탈퇴시키기" onclick="register();"></li>
                  <li><input class="inputbox02 btn btn-outline-dark" type="button" value="확인여부" onclick="UpdateYN();"></li> 
       
          
             
                   <li><input class="inputbox02 btn btn-outline-dark" type="button" value="목록으로" onclick="menulo();"></li>
               
               </ul>
            </div>
        
         </form>
      </div>
   </div>
				
				<div class="btnArea">
					<button class="btn" id="applyBtn" type="submit">확인</button>
					<div class="btn" id="cancleBtn"onclick="location.href='mLevelList.do'">취소</div>
				</div>
				</form>
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

      $('#Smallclassification').change(function() {

         $("#Smallclassification option:selected").each(function() {
            console.log(this);
         });
      });

     
  
    

    // 등록 버튼이 눌렷을때
   function register(){
      var form = $('#writeform');
      var isall = true;
      console.log('실행');   
      console.log($('#cates').val());
      
      
      // 의류 값이 없을 경우 포커스
      if($('#cates').val() == ''){
          alert('의류를 선택해주세요.');
          var offset = $('#cates').offset();
          $("html").animate({scrollTop:offset.top},400);
          isall = false;
          return false;
       }
     /*  // 의류종류 선택 안햇을 경우 포커스
      if($('#Smallclassification').val() == ''){
          alert('의류종류를 선택해주세요.');
          var offset = $('#cates').offset();
          $("html").animate({scrollTop:offset.top},400);
          isall = false;
          return false;
       } */
      // text 박스 구분
       form.find('input[type=text]').each (function(){
         var obj = $(this);
         console.log(obj);
         
         if (obj.attr('valch') == 'yes') {

            if (obj.val() == '') {
               alert(obj.attr('msg'));
               obj.focus();
               isall = false;
               return false;
            }
         }
      });
       
      
   }



   </script> 

</html> 