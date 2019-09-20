<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>InsertTransaction</title>
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
<jsp:include page="../../../common/header.jsp"/>
</head>

<body>

	<br><br>
   <div class="boardbox">
      <div class="boxrow">
         <div class = "boxrow-top">
            <pre class="subtext">베이비시터 모집</pre>
         </div>
         <!--  enctype은 전송되는 데이터 형식을 설정한다. -->
         <form action='babymominsert.do' name='writeform' id='writeform' method='post' ENCTYPE='multipart/form-data'>
            <table class="pnaw_box" summary="">
               <tbody>
                   <tr>
                     <th scope="row">제목</th>
                     <td class="pnawtd"><input name="bTitle" value="" class="inputTypeText" style='width: 80%; height:40px;' maxLength="125" type="text" required="required"></td>
                  </tr>
               	  <tr class="first">
                  <th>인원</th>
                  <td>
                    <select class="po" style="width: 150px; height:30px;" name='personnel' id='personnel'>                              
                              <option value="1">1명</option>
                              <option value="2">2명</option>
                              <option value="3">3명</option>                           
                    </select>                  
                  </td>                  
                  </tr>                  
                  <tr>
                     <th scope="row">희망 시간</th>
                     <td class="pnawtd"><input type="time" name="time1" required="required" style="height:30px; font-size:13px;"> ~ <input type="time" name="time2" style="height:30px; font-size:13px;"></td>
                  </tr>
                   <tr>
                     <th scope="row">희망 급여</th>
                     <td class="pnawtd"><input type="text" name="bcSalary" placeholder="ex) 시급10000원 " id="salary" style="height:30px; font-size:13px;"></td>
                  </tr>
                  <tr>
                  	<th>주소</th>
                  	<td>
                  	<input type="text" id="sample6_postcode" class="addr1" placeholder="우편번호" name="postNum">
					<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
					<input type="text" id="sample6_address" class="addr" placeholder="주소" style="width: 38em;" name="addr1" required="required"><br>
					<input type="text" id="sample6_detailAddress" class="addr"  placeholder="상세주소" name="addr2">
					<input type="text" id="sample6_extraAddress" class="addr" placeholder="참고항목" name="addr3">

					<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
					<script>
  
						function sample6_execDaumPostcode() {
							new daum.Postcode(
									{
										oncomplete : function(data) {
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
											if (data.userSelectedType === 'R') {
												// 법정동명이 있을 경우 추가한다. (법정리는 제외)
												// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
												if (data.bname !== ''
														&& /[동|로|가]$/g
																.test(data.bname)) {
													extraAddr += data.bname;
												}
												// 건물명이 있고, 공동주택일 경우 추가한다.
												if (data.buildingName !== ''
														&& data.apartment === 'Y') {
													extraAddr += (extraAddr !== '' ? ', '
															+ data.buildingName
															: data.buildingName);
												}
												// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
												if (extraAddr !== '') {
													extraAddr = ' ('
															+ extraAddr + ')';
												}
												// 조합된 참고항목을 해당 필드에 넣는다.
												document
														.getElementById("sample6_extraAddress").value = extraAddr;

											} else {
												document
														.getElementById("sample6_extraAddress").value = '';
											}

											// 우편번호와 주소 정보를 해당 필드에 넣는다.
											document
													.getElementById('sample6_postcode').value = data.zonecode;
											document
													.getElementById("sample6_address").value = addr;
											// 커서를 상세주소 필드로 이동한다.
											document.getElementById(
													"sample6_detailAddress")
													.focus();
										}
									}).open();
						}
					</script>
							</td>
                  </tr>
                 
                  <tr>
                     <th scope="row">상세내용</th>
                     <td class="write pnawtd"><textarea name='bContent' required="required" style='width: 90%; height: 200px; resize:none;'></textarea></td>
                  </tr>
                  <tr class="first">
                     <th>성별</th>
                     <td class="pnawtd" style="margin:auto">
                     
                     <div id="gen1" style="display:inline-block">
							<div class="gicon">
								<br> <input type="radio" name="gender1" id="cb13" value="남자" checked="checked"> <label
									for="cb13"></label>								
							</div>
							<div class="gicon">
								<br> <input type="radio" name="gender1" id="cb14" value="여자"> <label
									for="cb14"></label>					
							</div>
							<input type="hidden" id="gender1" value="">
					</div>
					  <div id="gen2">
							<div class="gicon">
								<br> <input type="radio" name="gender2" id="cb15" value="남자"> <label
									for="cb15"></label>								
							</div>
							<div class="gicon">
								<br> <input type="radio" name="gender2" id="cb16" value="여자"> <label
									for="cb16"></label>					
							</div>
							<input type="hidden" id="gender2" value="">
					</div>
					  <div id="gen3">
							<div class="gicon">
								<br> <input type="radio" name="gender3" id="cb17" value="남자"> <label
									for="cb17"></label>								
							</div>
							<div class="gicon">
								<br> <input type="radio" name="gender3" id="cb18" value="여자"> <label
									for="cb18"></label>					
							</div>
							<input type="hidden" id="gender3" value="">
					</div>
					
					</td>
                  </tr>                  
                  <tr>
                  <th>아이 연령</th>
                  <td style="text-align:center;">
                  <div class="age1">
                   <div class="icon"><br>
                   <input type="radio" name="age1" id="c1" value="신생아" checked="checked">
    				<label for="c1"></label>
    				<p class="menu">신생아(0~6개월)</p>
                  </div>
                  <div class="icon"><br>
                   <input type="radio" name="age1" id="c2" value="영아">
    			   <label for="c2"></label>
    				<p class="menu">영아(7~36개월)</p>
                  </div>
                  <div class="icon"><br>
                   <input type="radio" name="age1" id="c3" value="유아">
    				<label for="c3"></label>
    				<p class="menu">유아(4~6살)</p>
                  </div>
                  </div>
                   <div id="age2">
                   <div class="icon"><br>
                   <input type="radio" name="age2" id="c4" value="신생아">
    				<label for="c4"></label>
    				<p class="menu">신생아(0~6개월)</p>
                  </div>
                  <div class="icon"><br>
                   <input type="radio" name="age2" id="c5" value="영아">
    			   <label for="c5"></label>
    				<p class="menu">영아(7~36개월)</p>
                  </div>
                  <div class="icon"><br>
                   <input type="radio" name="age2" id="c6" value="유아">
    				<label for="c6"></label>
    				<p class="menu">유아(4~6살)</p>
                  </div>
                  </div>
                  <div id="age3">
                   <div class="icon"><br>
                   <input type="radio" name="age3" id="c7" value="신생아">
    				<label for="c7"></label>
    				<p class="menu">신생아(0~6개월)</p>
                  </div>
                  <div class="icon"><br>
                   <input type="radio" name="age3" id="c8" value="영아">
    			   <label for="c8"></label>
    				<p class="menu">영아(7~36개월)</p>
                  </div>
                  <div class="icon"><br>
                   <input type="radio" name="age3" id="c9" value="유아">
    				<label for="c9"></label>
    				<p class="menu">유아(4~6살)</p>
                  </div>
                  </div>
                 </td>
                 </tr>
                 <tr>
                 <th>활동 유형	</th>
                 <td style="text-align:center;">
                 <div>
                  <div class="icon">
                  <br>
                  <input type="checkbox" id="cb4" value="실내놀이" name="active">
    				<label for="cb4"></label>
    				<p class="menu">실내놀이</p>
                  </div>
                  <div class="icon"><br>
                  <input type="checkbox" id="cb5" value="등하원돕기" name="active">
    			  <label for="cb5"></label>
    			  <p class="menu">등하원돕기</p>
                  </div>
                  <div class="icon"><br>
                  <input type="checkbox" id="cb6" value="책읽기" name="active">
    			  <label for="cb6"></label>
    			  <p class="menu">책읽기</p>
                  </div>     
                  <br><br>        
                  <div class="icon"><br>
                  <input type="checkbox" id="cb7" value="야외활동" name="active">
    			  <label for="cb7"></label>
    			  <p class="menu">야외활동</p>
                  </div>
                  <div class="icon"><br>
                 <input type="checkbox" id="cb8" value="한글놀이" name="active">
    			  <label for="cb8"></label>
    			  <p class="menu">한글놀이</p>
                  </div>
                  <div class="icon"><br>
                <input type="checkbox" id="cb9" value="영어놀이" name="active">
    			  <label for="cb9"></label>
    			  <p class="menu">영어놀이</p>      
                  </div>
                  <br><br>
                   <div class="icon"><br>
                 <input type="checkbox" id="cb10" value="학습지도" name="active">
    			  <label for="cb10"></label>
    			  <p class="menu">학습지도</p>
                  </div>
                  <div class="icon"><br>
                  <input type="checkbox" id="cb11" value="체육놀이" name="active">
    			  <label for="cb11"></label>
    			  <p class="menu">체육놀이</p>
                  </div>
                  <div class="icon"><br>
                 <input type="checkbox" id="cb12" value="밥챙겨주기" name="active">
    			  <label for="cb12"></label>
    			  <p class="menu">밥챙겨주기</p>      
                  </div>
                 </div>
                 </td>
                 </tr>
               	 <tr>
               	 <th>그 외 요청 사항</th>
               	 <td>              	
               	 <label class="la">희망 돌보는 방식 : </label>
               	 <input type="text" class="req" id="req1" value="" placeholder="예시) 부모님과 같이 돌봐주세요" name="req1">
               	 <br>
               	 <label class="la">희망 인터뷰 방식 :</label>
               	 <input type="text" class="req" id="req2" value="" placeholder="예시) 시범채용" name="req2">
               	 <br>
               	 <label class="la">희망 베이비시터 성별 : </label>
               	 <input type="text" class="req" id="req3" value="" placeholder="예시) 남자" name="req3">
               	 <br>
               	 
               	 </td>
               	 </tr>
                  <tr>
                     <th>사진 첨부</th>
                     <td>
                        <div class="par">
                           <div id="contentImgArea1" class="po">
                              <img id="contentImg">
                           	  </div> 			
							  <input type="file" id="inputimg" name="uploadFile" onchange="LoadImg(this,1);">		     
                        </div>
                     </td>

                  </tr>
               </tbody>
            </table>
            <div class="joinbox" style="max-width: 90%;">
               <ul class="ul01">
                  <li><input class="inputbtn" type="submit" value="등록"></li>
                  <li><input class="inputbtn" type="button" value="취소" onclick="javascript:history.back()"></li>
               </ul>
            </div>
         </form>
      </div>
   </div>
   <script> 
   $(document).ready(function(){
	  $("input[type='checkbox']").on("click",function(){
		  var count = $("input:checked[type='checkbox']").length;		  
		  if(count>3){
			  $(this).prop("checked",false);
			  alert("3개까지만 선택할 수 있습니다.");
		  }
		  
	  }); 
   });
   
   $('#personnel').change(function(){
		var count= $('#personnel option:selected').val();
		if(count == '1'){
			$('#gen1').css("display","inline-block");
			$('#gen2').attr("disabled", true).css("display","none");
			$('#gen3').attr("disabled", true).css("display","none");			
		}else if(count =='2'){
			$('#gen2').attr("disabled", false).css("display","inline-block");
			$('#gen3').attr("disabled", true).css("display","none");
		}else{
			$('#gen2').css("display","inline-block");
			$('#gen3').attr("disabled", false).css("display","inline-block");
		}
	});

	$('#personnel').change(function(){
		var count= $('#personnel option:selected').val();
		if(count == '1'){
			$('#age1').css("display","inline-block");
			$('#age2').attr("disabled", true).css("display","none");
			$('#age3').attr("disabled", true).css("display","none");
		}else if(count =='2'){
			$('#age2').attr("disabled", false).css("display","inline-block");
			$('#age3').attr("disabled", true).css("display","none");
		}else{
			$('#age2').attr("disabled", false).css("display","inline-block");
			$('#age3').attr("disabled", false).css("display","inline-block");
		}
	});
	
	function LoadImg(value){
		 if (value.files && value.files[0]) {
	            var reader = new FileReader();

	            reader.onload = function(e) {
	            $("#contentImg").attr("src", e.target.result);
	            
	         }
	       reader.readAsDataURL(value.files[0]);
	}
	}
      
   </script>
</body>
<jsp:include page="../../../common/footer.jsp"/>
</html>