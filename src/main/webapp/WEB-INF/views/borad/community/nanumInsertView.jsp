<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>InsertTransaction</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<!--  <link rel="stylesheet" href="/resources/css/bootstrap.css"> -->
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
      		<h2 class="subtext">무료나눔 게시판 작성</h2>
      	</div>
         <!--  enctype은 전송되는 데이터 형식을 설정한다. -->
         <form name='writeform' id='writeform' action='<%= request.getContextPath()%>/insert.pt' method='post' ENCTYPE='multipart/form-data'>
            <table class="pnaw_box" summary="">
               <tbody>
                  <tr class="first">
                     <th>종류선택</th>
                     <td class="pnawtd">
                     <select style="width: 150px;" name='gender' id='cates' onchange="categoryChange(this);">
                           <option value =''>종류선택</option>
                           <option value='의류'>의류</option>
                           <option value='장난감'>장난감</option>
                           <option value='탈것'>탈것</option>
                           <option value='기타'>기타</option>
                     </select>
                     </td>
                  </tr>
	
                  <tr class="first">
                     <th>의류종류</th>
                     <td class="pnawtd">
                           <select class="po" style="width: 150px;" name='category' id='Smallclassification'>
                              <option>선택</option>
                           </select> 
                     </td>
                  </tr>
                  <tr>
                     <th scope="row">제목</th>
                     <td class="pnawtd"><input name="subject" value="" class="inputTypeText" style='width: 80%;' maxLength="125" type="text" msg="제목을 입력해주세요." valch="yes"/></td>
                  </tr>
                  <tr>
                     <th scope="row">작성자</th>
                     <td class="pnawtd"><input name="mem_name" value="신재민" class="inputTypeText" maxLength="125" type="text" readonly></td>
                  </tr>
                  <tr>
                     <th scope="row">메인 이미지</th>
                     <td>
                        <div id="titleImgArea">
                           <img id="titleImg" width="600" height="600" tabindex="0" >
                        </div>
                     </td>
                  </tr>
                  <tr>
                     <th scope="row">상세내용</th>
                     <td class="write pnawtd"><textarea name='content' style='width: 100%; height: 200px;'></textarea></td>
                  </tr>
                  <tr>
                     <th>사진 첨부</th>
                     <td>
                        <div class="par">
                           <div id="contentImgArea1" class="po">
                              <img id="contentImg1" width="120" height="100">
                           </div>

                           <div id="contentImgArea2" class="po">
                              <img id="contentImg2" width="120" height="100">
                           </div>

                           <div id="contentImgArea3" class="po">
                              <img id="contentImg3" width="120" height="100">
                           </div>
                           <div id="contentImgArea4" class="po">
                              <img id="contentImg4" width="120" height="100">
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
            <input type="file" id="thumbnailImg5" multiple="multiple" name="thumbnailImg5" onchange="LoadImg(this,5)">
         </div>
         </form>
      </div>
   </div>
   
   		<div class="both"></div>
   		
   		
   <footer>
     	  <jsp:include page="../../common/footer.jsp"></jsp:include>

   </footer>
   <script>
      // 의류 선택에서 의류 종류 나오게 함
      function categoryChange(e) {
    	  var c = [ "-- 의류 --", "OUTER", "TOP", "PANTS", "SHOES", "OTHER" ];
          var cnum = [ '', 'OUTER', 'TOP', 'PANTS', 'SHOES', 'OTHER' ];
          var t = [ '-- 장난감 --', 'HEAD', 'MOUTH', 'HAND', 'FOOT' ];
          var tnum = [ '', 'HEAD', 'MOUTH', 'HAND', 'FOOT' ];
          var r = [ "-- 탈것? --", "WATCH", "HEADWEAR", "EYEWEAR", "ACCESSORY", "OTHER" ];
          var rnum = [ '', 'WATCH', 'HEADWEAR', 'EYEWEAR', 'ACCESSORY', 'OTHER' ];
          var a = [ '-- 그외 용품 --', 'OUTER', 'DRESS', 'TOP', 'PANTS', 'SHOES', 'OTHER' ];
          var anum = [ '', '' , '' , '' , '', '', '' ]
          var ch = [ '선택' ];

         var target = document.getElementById("Smallclassification");
         // 대분류
         if (e.value == '의류') {
            console.log(e.value);
            console.log("1번 실행");
            var d = c;
            var v = cnum;
         } else if (e.value == '장난감') {		
            console.log(e.value);
            console.log("2번 실행");
            var d = t;
            var v = tnum;
         } else if (e.value == '탈것?') {
            console.log(e.value);
            console.log("3번 실행");
            var d = r;
            var v = rnum;
         } else if (e.value == '그외 용품') {
        	 console.log(e.value);
        	 console.log("4번 실행");
        	 var d = a;
        	 var v = anum;
         } else {
            console.log('종류 선택');
            var d = ch;
         }
         // 소분류
          
         target.options.length = 0;
         
         for (x in d) {
            var opt = document.createElement("option");
            opt.innerHTML = d[x];
            target.appendChild(opt);

            if (e.value == '남아') {
               opt.value = v[x];
               console.log(opt);
            } else if (e.value == '여아') {
               opt.value = v[x];
               console.log(opt);
            } else {
               opt.value = '기타';
               console.log(opt);
            }
         }
      }
      
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
         $("#contentImgArea4").click(function() {
            $("#thumbnailImg5").click();
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
               case 5:
                   $("#contentImg4").attr("src", e.target.result);
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
          alert('의류를 선택해주세요.');
          var offset = $('#cates').offset();
          $("html").animate({scrollTop:offset.top},400);
          isall = false;
          return false;
       }
      
      // 의류종류 선택 안햇을 경우 포커스
      if($('#Smallclassification').val() == ''){
          alert('의류종류를 선택해주세요.');
          var offset = $('#cates').offset();
          $("html").animate({scrollTop:offset.top},400);
          isall = false;
          return false;
       }
      
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
      
      // 메인 이미지가 없을 경우 포커스
       if(img.src == ''){
			alert('메인 이미지를 넣어주세요.');
			$('#titleImg').focus();
			return false;
		}
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