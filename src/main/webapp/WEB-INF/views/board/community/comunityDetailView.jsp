<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"  %>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TranDetail</title>
<script type="text/javascript" src="resource/js/jquery-3.4.1.min.js"></script>
<link rel="stylesheet" href="resources/css/comunity/bootstrap.css">
<link rel="stylesheet" href="resources/css/comunity/_base.css">
<link rel="stylesheet" href="resources/css/comunity/_grid.css">
<link rel="stylesheet" href="resources/css/comunity/member.css">
<link rel="stylesheet" href="resources/css/comunity/xe.min.css">
<link rel="stylesheet" href="resources/css/comunity/font.css">

<style>
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
   font-size: 0.825em;
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
   border: 1px solid red;
}
.comm{
   vertical-align: middle;
}
/* 여기 까지  댓글 다는 창*/
/* 댓글 목록 */

ul.messages li {
      width: 100%;
    background: white;
    border-radius: 25px;
    padding: 10px 25px;
    list-style-type: none;
    border: solid 1px rgba(255,255,255,0.8);
    box-shadow: 4px 10px 1px rgba(0,0,0,0.2);
    margin: 15px 0;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
}
ul.messages li h4 {
   margin: 2% 0%;
    text-align: left;
    color: black;
    font-size: 12px;
}
}
ul.messages li p {
    font-size: 10pt;
    margin-bottom: 0;
}
.nav{
	float:left;
}
.nav-item {
  margin: 4px 0;
}
.nav-link {
  display: block;
  text-decoration: none;
  padding: 4px 10px;
  color: #fff;
}
.nav-list {
  list-style: none;
  margin: 0;
  padding: 10px 0;
}
.nav-link:hover {
  background: pink;
}
.gd_brd{
	font-size:17px;
}



/*새로운 디자인*/
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
   max-width: 1400px;
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
   width: 15%;
   padding: 20px;
   border: 1px solid #eee;
   font-size: 1.2em;
   font-weight: normal;
   /* background: #fafafa; */
   background: pink;
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
   border: 1px solid red;
}
.comm{
   vertical-align: middle;
}

/*사이드바*/
.sidebar{width:195px;float:left;border:1px solid #ee9a99;margin:0 20px 0 0; margin-top:110px; margin-left:30px; }
.sidebar h2{background:#ee9a99;color:#fff;padding:20px; font-size:17px;}
.sidebar li{padding:15px 20px ;border-bottom:1px solid #ddd}
.sidebar li:hover{cursor:pointer;font-weight:bold;color:#ee9a99}

.board{
	width:100%;
	height:100%;
}
</style>
</head>
<body>
   <!-- header부분 입니다. -->
   <nav>
      <%@ include file="../../common/header.jsp"%>
   </nav> 
	
   <div class="board">
    <div class="sidebar">
      <h2>커뮤니티</h2>
      <ul>
         <li>커뮤니티</li>
         <li>나눔게시판</li>
      </ul>
   	</div>
  <div class="boardbox">
  
      <div class="boxrow">
     
 
         <div class = "boxrow-top">
            <h2 class="subtext">커뮤니티 게시판</h2>
         </div>
         <!--  enctype은 전송되는 데이터 형식을 설정한다. -->
	
            <table class="pnaw_box" summary="">
               <tbody>

                <tr class="first">
                     <th>분류</th>
                     <td class="pnawtd">
                     <input type="text" style="width:300px;" name='menuid' id='cates' onchange="categoryChange(this);"
                     value= ${board.bType } readonly>
                     </td>
                  </tr>
                 
                  <tr>
                     <th scope="row">제목</th>
                     <td class="pnawtd">
                    <input name="title" value="${board.bTitle }" class="inputTypeText" 
                     style='width: 80%;' maxLength="125" type="text" msg="제목을 입력해주세요." valch="yes" readonly/>
							
						
						</td>	
						
                
                  </tr>
                 <tr>
                     <th scope="row">작성자</th>
                 
                     <td class="pnawtd"><input name="mem_name" value="김민상" class="inputTypeText" maxLength="125" type="text" readonly></td>
                  </tr>
               
                  <tr>
                     <th scope="row">상세내용</th>
                     <td class="write pnawtd">
							<!-- textarea 읽기만 가능하게 하기!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
							<textarea name="content"style='width: 100%; height: 200px;'readonly>${board.bContent }</textarea>
						</td>
						
                
                  </tr>
                
               </tbody>
            </table>

             <div class="joinbox" style="max-width: 100%;">
               <ul class="ul01">
                 
                  <li><input class="inputbox02 btn btn-outline-dark" type="button" value="답변완료" onclick="register();"></li>
               
       
             
                
               <li><input class="inputbox02 btn btn-outline-dark" type="submit" value="수정하기"></li>
                <li><input class="inputbox02 btn btn-outline-dark" type="button" value="삭제하기" onclick="deleteBoard();"></li>
           
                
					  <li><input class="inputbox02 btn btn-outline-dark" type="submit" value="답변하기"></li>
					  
				
                 
                
                	<li><input class="inputbox02 btn btn-outline-dark" type="button" value="목록으로" onclick="menulo()"></li>
					
               </ul>
            </div>
        

      </div>
   </div>
   <!-- 댓글 창 -->
   <div class="comment"> <!-- 댓글 전체 div -->
      <section class="box">
            <!-- 댓글 작성창 -->
            <div class="commend">
               <button class="btn btn-outline-dark"  id="posting" >댓글</button>
               <input type = "text" id = "userNick"  value = "안녕하세요" readonly>
                <textarea class="reple" id="status" name = "commend" ></textarea>
                 <span id="text_counter">Characters left : 140</span>
           </div>
           
           <!-- 댓글 출력창 -->

         <div class="replySelectArea">

        
            <ul id="replySelectTable" class="messages">
              

               <li>
                  <h4>김민상</h4>
                  <p>안녕하세요</p> <span>2019-08-30</span>
               </li>
            


            </ul>
         </div>
         <div id="more_btn_div" align="center">
            <hr>
            <a id="more_btn_a" href="javascript:moreContent('more_list', 10);">
               더보기(More) </a>
            <hr>
         </div>


      </section>
      
   </div>
   </div>
   
   <!-- 댓글 전체 div -->
   <!-- footer부분입니다. -->
   <footer>
      <%@ include file="../../common/footer.jsp"%>
   </footer> 
   <script>
/*    $(document).ready(function(){
       var left = 140
       
     
           $('#status').keyup(function () {
     
           left = 140 - $(this).val().length;
     
           if(left < 0){
               $('#text_counter').addClass("overlimit");
                $('#posting').attr("disabled", true);
           }else{
               $('#text_counter').removeClass("overlimit");
               $('#posting').attr("disabled", false);
           }
     
           $('#text_counter').text('Characters left: ' + left);
       });
   }); */

 <%--   /* 댓글 등록하기 */
   $('#posting').click(function(){
      var writer = '<%= loginUser.getNickName()%>';
      var rNo = '<%= review.getrNo() %>';
      var content = $('#status').val();   // 댓글 내용
      
      /* 작성자 / 게시판 번호 / 내용을 담은것 */
      $.ajax({
         url : "insertReply.pt",
         type : "post",
         data: {writer:writer, content:content, rNo:rNo},
         success : function(data){
            $replyTable = $('#replySelectTable');
            $replyTable.html("");
            console.log(data);
            for(var key in data){
               var str = "<li><h4>" + data[key].nickName + "</h4><p>" + data[key].rcContent + "</p><span>" + data[key].createDate + "</span></li>";
               /* var $ts = $("<tr>");
               var $writerTd = $("<td>").text(data[key].UserName);
               var $contentTd = $("<td>").text(data[key].ComContent);
               var $dataTd = $("<td>").text(data[key].CreateDate);
               
               $tr.append($writerTd);
               $tr.append($contentTd);
               $tr.append($dataTd);
               $replyTable.append($tr);*/
               
               $('#replySelectTable').append(str);
               $('#text_counter').text('Characters left: 140');
            }
            $("#status").val("");// 댓글 창을 비워 두게 한다.
         }
      });
   }); --%>

      $(function() {
         $('textarea.textbox').focus(function() {
            $(this).addClass('focustextbox');
         }).blur(function() {
            $(this).removeClass('focustextbox');
         });
      });
      //slide-wrap
      var slideWrapper = document.getElementById('slider-wrap');
      //current slideIndexition
      var slideIndex = 0;
      //items
      var slides = document.querySelectorAll('#slider-wrap ul li');
      //number of slides
      var totalSlides = slides.length;
      //get the slide width
      var sliderWidth = slideWrapper.clientWidth;
      //set width of items
      slides.forEach(function(element) {
         element.style.width = sliderWidth + 'px';
      })
      //set width to be 'x' times the number of slides
      var slider = document.querySelector('#slider-wrap ul#slider');
      slider.style.width = sliderWidth * totalSlides + 'px';

      // next, prev
      var nextBtn = document.getElementById('next');
      var prevBtn = document.getElementById('previous');
      nextBtn.addEventListener('click', function() {
         plusSlides(1);
      });
      prevBtn.addEventListener('click', function() {
         plusSlides(-1);
      });

      // hover
      slideWrapper.addEventListener('mouseover', function() {
         this.classList.add('active');
         clearInterval(autoSlider);
      });
      slideWrapper.addEventListener('mouseleave', function() {
         this.classList.remove('active');
         autoSlider = setInterval(function() {
            plusSlides(1);
         }, 3000);
      });

      function plusSlides(n) {
         showSlides(slideIndex += n);
      }

      function currentSlides(n) {
         showSlides(slideIndex = n);
      }

      function showSlides(n) {
         slideIndex = n;
         if (slideIndex == -1) {
            slideIndex = totalSlides - 1;
         } else if (slideIndex === totalSlides) {
            slideIndex = 0;
         }

         slider.style.left = -(sliderWidth * slideIndex) + 'px';
         pagination();
      }

      //pagination
      slides.forEach(function() {
         var li = document.createElement('li');
         document.querySelector('#slider-pagination-wrap ul')
               .appendChild(li);
      })

      function pagination() {
         var dots = document
               .querySelectorAll('#slider-pagination-wrap ul li');
         dots.forEach(function(element) {
            element.classList.remove('active');
         });
         dots[slideIndex].classList.add('active');
      }

      pagination();
      var autoSlider = setInterval(function() {
         plusSlides(1);
      }, 3000);
      
     <%--  function deleteReview(){
         if(confirm('정말로 삭제하시겠습니까?')){
            location.href='<%= request.getContextPath() %>/delete.pt?rNo=<%= review.getrNo() %>';
         }
      } --%>
   </script>
</body>
</html>