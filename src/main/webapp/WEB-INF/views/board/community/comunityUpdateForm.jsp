<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#boardUpdateTable{margin: auto; border-collapse: collapse; border-left: hidden; border-right: hidden;}
	#boardUpdateTable tr td{padding: 5px;}
</style>
</head>
<body>
	
	
	<h1 align="center">게시글 수정</h1>
	
	<!-- 첨부파일도 수정 할 수도 있으니 Multipart/form-data encType 지정 -->
	<form action="bupdate.do" method="post" enctype="Multipart/form-data">
		<input type="hidden" name="page" value="${ page }">
		<input type="hidden" name="bId" value="${ board.bNo }">
		<input type="hidden" name="renameFileName" value="${ board.renameFile }">
	
		<table id="boardUpdateTable" border="1">
			<tr>
				<th>제목</th>
				<td>
					<input type="text" size="80" name="bTitle" value="${ board.bTitle }">
				</td>
			</tr>
			<tr>
				<th>작성자</th>
				<td>
					<input type="text" name="bWriter" readonly value="${ board.bWriter }" style="background: lightgrey;">
				</td>
			</tr>
			<tr>
				<th>내용</th>
				<td><textarea rows="10" cols="80" name="bContent">${ board.bContent }</textarea></td>
			</tr>
			
			 <tr>
				<th>첨부파일</th>
				<td>
					<input type="file" name="reloadFile">
					<img src="resources/images/board/${board.changeName }" width="200" height="200">
					<c:if test="${ !empty board.originName }">
						<br>현재 업로드한 파일 : 
						 <a href="${ contextPath }/resources/buploadFiles/${ board.renameFile }" download="${ board.originalFile }"> <!-- download는 지정해주지 않으면 바뀐 이름으로 받게되고 지정해주면 등록했던 파일 이름으로 다운 받아진다.  -->
							${ board.originalFile }
						</a> 
					</c:if>
					<br>
				</td>
			</tr> 
			
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="수정하기"> &nbsp;
					<c:url var="blist" value="blist.do">
						<c:param name="page" value="${ page }"/>
					</c:url>
					<button type="button" onclick="location.href='${ comListView }'">목록으로</button>
					<button type="button" onclick="location.href='javascript:history.go(-1);'">이전페이지로</button>
				</td>
			</tr>
		</table>
	</form>
</body>
</html> --%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>InsertTransaction</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
 <link rel="stylesheet" href="/resources/css/bootstrap.css"> 
<style>

@import url("resources/css/font.css");
@import url("resources/css/bootstrap.css");

label{
   margin: 0;
}
.ss{
   font-size: 18px;
    margin-left: 5px;
    vertical-align: bottom;
}

.boardbox {
   width: 80%;
   max-width: 1024px;
   margin: 0 auto;
   padding: 2%;
   text-align: center;
   position: relative;
   display: table;
   float: center;
   background: #fff;
}

.boxrow-top{
	border-bottom-style: solid;
    border-color: #BDBDBD;
    height: 55px;
    border-width: 3px;
}

.boxrow {
   position: relative;
   display: table;
   width: 100%;
   padding-bottom: 30px;
}

.subtext {
   font-size: 1.2em;
   text-transform: uppercase;
   text-align: left;
   width: 30%;
   font-size: 23px;
   font-weight: bold;
   line-height: 55px;
}

.pnaw_box {
   width: 100%;
   margin: 30px 0;
   border: 1px solid #eee;
}

.pnaw_box th {
   width: 25%;
   padding: 20px;
   border: 1px solid #eee;
   font-size: 17px;
   font-weight: normal;
   background: #fafafa;
}

.pnaw_box td {
   width: 75%;
   padding: 10px;
   border: 1px solid #eee;
   font-size: 13px;
   text-align: left;
}

.pnaw_box td input, select {
   height: 40px;
}

input, textarea, select {
   box-shadow: none;
   outline: none;
   box-shadow: none;
   border: 1px solid #eee;
   padding: 0 1em;
   appearance: none;
}

.joinbox {
   width: 100%;
   max-width: 1024px;
   margin: 0 auto;
   padding: 0 5px;
   text-align: center;
   position: relative;
   display: table;
}

.joinbox .ul01 li {
   padding: 1%;
   float: left;
   width: 50%;
}

.joinbox .ul01 li {
   padding: 1%;
   float: left;
   width: 50%;
   list-style: none;
}

.inputbox02 {
   width: 100%;
   height: 40px;
   font-size: 0.875em;
}

#titleImgArea {
   width: 350px;
   height: 200px;
   text-align: center;
   display: table-cell;
   
}

#titleImgArea:hover, #contentImgArea1:hover, #contentImgArea2:hover,
   #contentImgArea3:hover, #contentImgArea4:hover {
   cursor: pointer;
}

#contentImgArea1, #contentImgArea2, #contentImgArea3 {
   width: 120px;
   height: 100px;
   text-align: left;
   display: table-cell;
   vertical-align: middle;
}

.par {
   display: inline-block;
}

.po {
   text-algin: center;
   float: left;
   margin-right: 50px; 
   <%-- border: 1px solid red;--%>
}
.comm{
   vertical-align: middle;
}
</style>
</head>
<body>

		<jsp:include page="../../common/header.jsp"></jsp:include>

		<div class="both"></div>
	
	<br><br>
   <div class="boardbox">
      <div class="boxrow">
      	<div class = "boxrow-top">
      		<h2 class="subtext">정보공유게시판 수정하기</h2>
      	</div>
         <!--  enctype은 전송되는 데이터 형식을 설정한다. -->
         <form name='writeform' id='writeform' action='insertCom.do' method='post' ENCTYPE='multipart/form-data'>
            <table class="pnaw_box" summary="">
               <tbody>
                  <tr>
                     <th scope="row">제목</th>
                     <td class="pnawtd"><input name="bTitle" value="${board.bTitle }" class="inputTypeText" style='width: 80%;' maxLength="125" type="text" msg="제목을 입력해주세요." valch="yes"/></td>
                  </tr>
                  <tr>
                     <th scope="row">작성자</th>
                     <td class="pnawtd"><input name="bWriter" value="${board.bWriter }" class="inputTypeText" maxLength="125" type="text" readonly></td>
                  </tr>
                 
                   
                    
                      
                   
               			
                  <tr>
                  
                     <th scope="row">상세내용</th>
                     
                     <td class="write pnawtd"><textarea name='bContent' style='width: 100%; height: 200px;'>${board.bContent } </textarea>
                     <img src="resources/images/board/${board.changeName }" width="200" height="200">
                     </td>
                  </tr>
                  
                  <tr>
                     <th>사진 첨부</th>
                     <td>
                        <div class="par">
                          <div id="titleImgArea">
                           <img id="titleImg" name="titleImg" width="100" height="100" tabindex="0">
                        	</div>
                        	
                           <div id="contentImgArea1" class="po">
                              <img id="contentImg1" name="contentImg1" width="120" height="100">
                           </div>

                           <div id="contentImgArea2" class="po">
                              <img id="contentImg2" name="contentImg2" width="120" height="100">
                           </div>

                           <div id="contentImgArea3" class="po">
                              <img id="contentImg3" name="contentImg3" width="120" height="100">
                           </div>
                        </div>
                     </td>
                  </tr>
               </tbody>
            </table>
            <div class="joinbox" style="max-width: 100%;">
               <ul class="ul01">
                  <li><input class="inputbox02 btn btn-outline-dark" type="button" value="등록" onclick="register();"></li>
                  <li><input class="inputbox02 btn btn-outline-dark" type="button" value="취소" onclick="javascript:history.back()"></li>
               </ul>
            </div>
         <div id="fileArea">
            <input type="file" id="thumbnailImg1" multiple="multiple" name="thumbnailImg1" onchange="LoadImg(this,1)"> 
            <input type="file" id="thumbnailImg2" multiple="multiple" name="thumbnailImg2" onchange="LoadImg(this,2)">
            <input type="file" id="thumbnailImg3" multiple="multiple" name="thumbnailImg3" onchange="LoadImg(this,3)">
            <input type="file" id="thumbnailImg4" multiple="multiple" name="thumbnailImg4" onchange="LoadImg(this,4)">
         </div>
         </form>
      </div>
   </div>
   
   		<div class="both"></div>
   		
   		
   <footer>
     	  <jsp:include page="../../common/footer.jsp"></jsp:include>

   </footer>
   <script>
      $(function() {
         $("#fileArea").hide();

         $("#titleImgArea").click(function() {
            $("#thumbnailImg1").click();
         });
         $("#contentImgArea1").click(function() {
            $("#thumbnailImg2").click();
         });
         $("#contentImgArea2").click(function() {
            $("#thumbnailImg3").click();
         });
         $("#contentImgArea3").click(function() {
            $("#thumbnailImg4").click();
         });
         
      });
      // 각각의 영역에 파일을 첨부 했을 경우 미리 보기가 가능하도록 하는 함수
      function LoadImg(value, num) {
         if (value.files && value.files[0]) {
            var reader = new FileReader();

            reader.onload = function(e) {
               switch (num) {
               case 1:
                  $("#titleImg").attr("src", e.target.result);
                  break;
               case 2:
                  $("#contentImg1").attr("src", e.target.result);
                  break;
               case 3:
                  $("#contentImg2").attr("src", e.target.result);
                  break;
               case 4:
                  $("#contentImg3").attr("src", e.target.result);
                  break;
               }
            }

            reader.readAsDataURL(value.files[0]);
         }
      }
      
   // 등록 버튼이 눌렷을때
   function register(){
      var form = $('#writeform');
      var isall = true;
      console.log('실행');   
      console.log($('#cates').val());
      var img = $('#titleImg')[0];
      
      // 의류 값이 없을 경우 포커스
      if($('#cates').val() == ''){
          alert('종류를 선택해주세요.');
          var offset = $('#cates').offset();
          $("html").animate({scrollTop:offset.top},400);
          isall = false;
          return false;
       }
      
  /*     // 의류종류 선택 안햇을 경우 포커스
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
      
  /*     // 메인 이미지가 없을 경우 포커스
       if(img.src == ''){
			alert('메인 이미지를 넣어주세요.');
			$('#titleImg').focus();
			return false;
		} */
    // 작성 최종 확인
       if (isall) {
         answer = confirm("작성한 글을 등록 하시겠습니까?");
         if (answer == true) {
            form.submit();
         }
      }
   }
   
   </script>
</body>
</html>