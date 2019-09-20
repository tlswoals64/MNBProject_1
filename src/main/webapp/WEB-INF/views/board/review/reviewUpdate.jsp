<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰글 수정</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<link rel="stylesheet" href="resources/css/baby/inserticon.css">
<style>
label {
	margin: 0;
}

.ss {
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

.boxrow-top {
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
	font-size: 35px;
	font-weight: 700;
	line-height: 55px;
	margin: auto;
	text-align: center;
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

input, textarea, select {
	box-shadow: none;
	outline: none;
	box-shadow: none;
	border: 1px solid #eee;
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

.ul01 li {
	display: inline-block;
}

.inputbtn {
	width: 200px;
	height: 40px;
	border-radius: 15px;
	cursor:pointer;
}

#titleImgArea {
	width: 350px;
	height: 200px;
	text-align: center;
	display: table-cell;
}

#contentImgArea1, #contentImgArea2, #contentImgArea3 {
	width: 120px;
	height: 100px;
	text-align: left;
	display: table-cell;
	vertical-align: middle;
}
#con

.par {
	display: inline-block;
}

.po {
	text-algin: center;
	float: left;
	margin-right: 50px; <%--
	border: 1px solid red;
	--%>
}

.comm {
	vertical-align: middle;
}

.icon {
	width: 150px;
	height: 160px;
	curson: pointer;
	border: 1px solid pink;
	display: inline-block;
	margin: 10px;
}
.la{
	width: 200px;
	color:gray;
}
.req{
	width: 200px;
	height: 30px;
}
.gender{
	font-size:13px;
	width:70px;
	
}
.gicon {
	width: 50px;
	height: 50px;
	curson: pointer;
	display: inline-block;
	margin-left: 30px;
	
}
#gen1, #gen2, #gen3{
	width:180px;
	height: 60px;	
	margin-left:10px;
	
}
#gen2, #gen3{
	display:none;
	border-left:1px solid gray;
}
#age2, #age3{
	display:none;
	}
.addr1{
	   margin: .2em 0;
    font-size: 1em;
    padding: .5em;
    border: 1px solid #ccc;
    border-color: #dbdbdb #d2d2d2 #d0d0d0 #d2d2d3;
    box-shadow: inset 0.1em 0.1em 0.15em rgba(0,0,0,.1);
    vertical-align: middle;
    line-height: 1.25em;
    outline: 0;
    width: 7em;
}
.addr{
	margin: .2em 0;
    font-size: 1em;
    padding: .5em;
    border: 1px solid #ccc;
    border-color: #dbdbdb #d2d2d2 #d0d0d0 #d2d2d3;
    al-align: middle;
    line-height: 1.25em;
    outline: 0;
    width: 20em;
}
#contentImg{
	width:120px;
	height:100px;
	
}
#contentImg img{
	max-width:100%;
}

</style>
<%-- <jsp:include page=""/> --%>
</head>

<body>

	<br><br>
   <div class="boardbox">
      <div class="boxrow">
         <div class = "boxrow-top">
            <pre class="subtext">수정</pre>
         </div>
         <!--  enctype은 전송되는 데이터 형식을 설정한다. -->
         <form action='reviewUpdate.do' name='writeform' id='writeform' method='post' ENCTYPE='multipart/form-data'>
            <table class="pnaw_box" summary="">
               <tbody>
                   <tr>
                     <th scope="row">제목</th>
                     <td class="pnawtd"><input name="bTitle" value=${revi.bTitle } class="inputTypeText" style='width: 80%; height:40px;' maxLength="125" type="text" required="required"></td>
                  </tr>                               
                  <tr>
                     <th scope="row">상세내용</th>
                     <td class="write pnawtd"><textarea name='bContent' required="required" style='width: 90%; height: 200px; resize:none;'>${revi.bContent }</textarea></td>
                  </tr>                  
                  <tr>
                     <th>사진 첨부</th>
                        <td>
                        <div class="par">
                           <div id="contentImgArea1" class="po" style = "cursor: pointer;">
                              <img id="contentImg" src = "resources/images/reView/${ revi.changeName }">
                           </div>
                           <input type="file" id="inputimg" name="inputimg" onchange="LoadImg(this,1);">
                           <input type="hidden" id="originName" name="originName" value="${ revi.originName }">
                           <input type="hidden" id="changeName" name="changeName" value="${ revi.changeName }">
                        </div>
                        <input type = "hidden" name = "bNo" value = "${ revi.bNo }">
                        <input type="hidden" name="page" value="${ page }">
                     </td>
                  </tr>
                  <tr>
                     <th scope="row">별점</th>
                     <td class="pnawtd">
                   <select class="form-control" name="bEva">
                   			<c:if test="${revi.bEva eq 1 }">
	  						<option value="1" selected>★☆☆☆☆</option>
	  						<option value="2">★★☆☆☆</option>
	  						<option value="3">★★★☆☆</option>
	  						<option value="4">★★★★☆</option>
	  						<option value="5">★★★★★</option>
	  						</c:if>
	  						<c:if test="${revi.bEva eq 2 }">
	  						<option value="1">★☆☆☆☆</option>
	  						<option value="2" selected>★★☆☆☆</option>
	  						<option value="3">★★★☆☆</option>
	  						<option value="4">★★★★☆</option>
	  						<option value="5">★★★★★</option>
	  						</c:if>
	  						<c:if test="${revi.bEva eq 3 }">
	  						<option value="1">★☆☆☆☆</option>
	  						<option value="2">★★☆☆☆</option>
	  						<option value="3" selected>★★★☆☆</option>
	  						<option value="4">★★★★☆</option>
	  						<option value="5">★★★★★</option>
	  						</c:if>
	  						<c:if test="${revi.bEva eq 4 }">
	  						<option value="1">★☆☆☆☆</option>
	  						<option value="2">★★☆☆☆</option>
	  						<option value="3">★★★☆☆</option>
	  						<option value="4" selected>★★★★☆</option>
	  						<option value="5">★★★★★</option>
	  						</c:if>
	  						<c:if test="${revi.bEva eq 5 }">
	  						<option value="1">★☆☆☆☆</option>
	  						<option value="2">★★☆☆☆</option>
	  						<option value="3">★★★☆☆</option>
	  						<option value="4">★★★★☆</option>
	  						<option value="5" selected>★★★★★</option>
	  						</c:if>
	  						
	  					
	  					</select>
					</td>
                  </tr>
               </tbody>
            </table>
            <div class="joinbox" style="max-width: 90%;">
               <ul class="ul01">
                  <li><input class="inputbtn" type="submit" value="수정"></li>
                  <li><input class="inputbtn" type="button" value="취소" onclick="back();"></li>
               </ul>
            </div>
         </form>
      </div>
   </div>
   
   
   <script> 
   $("#inputimg").hide();
   $("#reinputimg").hide();
  
   function back(){	  
	   
   location.href="reViewList.do"

   }
   $("#contentImgArea1").click(function() {
       $("#inputimg").click();
    });

    function LoadImg(value) {
       if (value.files && value.files[0]) {
          var reader = new FileReader();

          reader.onload = function(e) {
             $("#contentImg").attr("src", e.target.result);
             $("#originName").attr("disabled", true);
             $("#changeName").attr("disabled", true);
          }
          reader.readAsDataURL(value.files[0]);
       }
    }

      
   </script>
</body>
</html>