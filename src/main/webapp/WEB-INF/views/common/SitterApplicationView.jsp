<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<script type="text/javascript" src="resources/js/jquery-3.4.1.min.js"></script>
<style>
	#Warp{
		width : 1200px;
		margin-left: auto;
		margin-right: auto;
		padding : 20px;
		text-align : center;
	}
	.qna{
		font-weight : bold;
		font-size : 30px;
		padding-top : 10px;
		padding-bottom : 10px;
	}
	
	#title{
		margin-top : 20px;
		margin-bottom : 20px;
		font-size : 40px;
		font-weight : bold;
	}
	fieldset{
		width : 800px;
		margin-left: auto;
		margin-right: auto;
		border : 3px solid #ecb4b5;
	}
	
	.imgdiv{
		margin-left : auto;
		margin-right : auto;
		margin-top : 10px;
		height : 70px;
		width : 70px;
	}
	.imgdiv>img{
		height : 100%;
		width : 100%;
	}
	
	/**************************** 기본 정보 ****************************/
	#applidiv{
		text-align : left;
	}
	
	.appB{
		font-size : 20px;
		font-weight : bolder;
		margin-left : 30px;
		padding-top : 5px;
	}
	
	.appS{
		margin-left : 30px;
		margin-bottom : 10px;
		padding-top : 10px;
		width : 300px;
		border-bottom : 2px solid #ecb4b5;
		font-size : 18px;
		padding-bottom : 10px;
	}
	
	#tableArea{
		padding-top : 10px;
		padding-bottom : 10px;
	}
	.exTable{
		border : 1px solid rgb(180, 180, 180);
		border-collapse: collapse;
	}
	.exTableTr>th{
		text-align : center;
		font-size : 18px;
		border-bottom : 1px solid rgb(180, 180, 180);
		border-right : 1px solid rgb(180, 180, 180);
		height : 30px;
	}
	
	.exTableTr>td{
		height : 40px;
		font-size : 15px;
		border-bottom : 1px solid rgb(180, 180, 180);
		border-right : 1px solid rgb(180, 180, 180);
		padding-left : 10px;
	}
	#exCon1, #exCon2, #exCon3{
		width : 300px;
	}
	#exPe1, #exPe2, #exPe3{
		width : 200px;
	}
	
	#exTitle1, #exTitle2, #exTitle3{
		width : 150px;
	}
	td>input{
		border : 1px solid white;
	}
	.intro{
		margin-left : 30px;
		margin-top : 10px;
		width : 700px;
		resize : none;
	}
	#address2{
		width : 300px;
		height : 30px;
		border-bottom : 1px solid black;
	}
	#address3{
		width : 300px;
		height : 40px;
		border-bottom : 1px solid black;
	}
	#address4{
		width : 300px;
		height : 40px;
	}
	
	.fNameCheckBtn{
		color : #ecb4b5;
		font-weight : 900;
	}
	/***************************************************************/
	/**************************** 어떤사람인가요 css ****************************/
	.wruCheckInput{
		text-align : left;
		width : 750px;
		height : 60px;
		margin-left : auto;
		margin-right : auto;
		padding-left : 10px;
		font-weight : bold;
		font-size : 20px;
		margin-bottom : 20px;
	}
	
	.inputDiv{
		margin-left : 20px;
		color : gray;
		font-size : 16px;
		
	}
	
	/************************************************************/
	
	
	/**************************** 어떤아이를 돌볼 수 있나요 css ****************************/
	.bChoiceCheckInput input[type="checkbox"]{
    	display:none;
	}
	.bChoiceCheckInput input[type="checkbox"] + span{
	    display:inline-block;
	    background:none;
	    border:3px solid #ecb4b5;    
	    padding:0px 10px;
	    text-align:center;
	    height:110px;
	    line-height:33px;
	    font-weight: 900;
	    cursor:pointer;
	    color : #ecb4b5;
	    margin-bottom : 10px;
	    margin-right : 20px;
	}
	.bChoiceCheckInput input[type="checkbox"]:checked + span{
	    border : 2px solid #ecb4b5;
	    background : #ecb4b5;
	    color : white;
	}
	.bChoiceArea{
		margin-bottom : 10px;
		width : 450px;
		margin-left : auto;
		margin-right : auto;
	}
	.bChoiceCheck{
		width :100px;
		border-radius: 20px;
	
	}
	/************************************************************/
	
	
	/**************************** 활동 css ****************************/
	.actiCheckInput input[type="checkbox"]{
    	display:none;
	}
	.actiCheckInput input[type="checkbox"] + span{
	    display:inline-block;
	    background:none;
	    border:3px solid #ecb4b5;    
	    padding:0px 10px;
	    text-align:center;
	    height:110px;
	    line-height:33px;
	    font-weight:900;
	    cursor:pointer;
	    color : #ecb4b5;
	    margin-bottom : 20px;
	    margin-right : 20px;
	}
	.actiCheckInput input[type="checkbox"]:checked + span{
	    border : 2px solid #ecb4b5;
	    background : #ecb4b5;
	    color : white;
	}
	.activityArea{
		margin-bottom : 10px;
		width : 450px;
		margin-left : auto;
		margin-right : auto;
	}
	.atiCheck{
		width :100px;
		border-radius: 20px;
	
	}
	/************************************************************/
	
	/*********************** 밑에버튼 **************************/
	#insertBtn{
		margin-top :15px;
		width : 120px;
		height : 50px;
		background : #ecb4b5;
	    color : white;
	    border : 2px solid #ecb4b5;
	    font-weight:900;
	    font-size : 15px;
	}
	
	#cancelBtn{
		display: inline-block;
		width : 120px;
		height : 50px;
		border : 3px solid #ecb4b5;
		color : #ecb4b5;
		font-weight:900;
		background : white;
		font-size : 15px;
	}
	/*******************************************************/
</style>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:import url="/header.jsp"/>
	<div id="Warp">
	<form action="" method="post">
		<div id="title">베이비 시터 신청하기</div>

		<fieldset id="appliArea">
			<legend class="qna">기본정보를 작성해주세요</legend>
			<div id="applidiv">
				<div class="appB">
					아이디
				</div>
				<div class="appS" id="idArea">user01</div>
				<div class="appB">
					이름
				</div>
				<div class="appS" id="nameArea">이한솔</div>
				
				<div class="appB">
					생년월일
				</div>
				<div class="appS" id="nameArea">1995년 03월 22일</div>
				
				<div class="appB">
					주소 <a onclick="addressPopup();"><span class="fNameCheckBtn" style="font-size: 15px;">주소검색></span></a>
				</div>
				<div class="appS">
					<table>
						<tr>
	               			<td><input type="text" name="address2" id="address2" class="form-control"></td>
	            		</tr>
	            		<tr>
	               			<td><input type="text" name="address3" id="address3" class="form-control"></td>
	            		</tr>
	            		<tr>
	               			<td><br>상세주소<input type="text" name="address4" id="address4" class="form-control"></td>
	            		</tr>
            		</table>
				</div>
				
				<div class="appB">
					육아돌봄 경험
					<div id="tableArea">
						<table class="exTable">
							<tr class="exTableTr">
								<th>
									경력 사항
								</th>
								<th>
									기간
								</th>
								<th>
									돌봄 내용
								</th>
							</tr>
							<tr class="exTableTr" id="ex1">
								<td id="exTitle1"><input type="text" style="height : 30px;"></td>
								<td id="exPe1"><input type="text" style="width : 190px; height : 30px;"></td>
								<td id="exCon1"><input type="text" style="width : 280px; height : 30px;"></td>
							</tr>
							<tr class="exTableTr" id="ex2">
								<td id="exTitle2"><input type="text" style="height : 30px;"></td>
								<td id="exPe2"><input type="text" style="width : 190px; height : 30px;"></td>
								<td id="exCon2"><input type="text" style="width : 280px; height : 30px;"></td>
							</tr>
							<tr class="exTableTr" id="ex3">
								<td id="exTitle3"><input type="text" style="height : 30px;"></td>
								<td id="exPe3"><input type="text" style="width : 190px; height : 30px;"></td>
								<td id="exCon3"><input type="text" style="width : 280px; height : 30px;"></td>
							</tr>
						</table>
					</div>
				</div>
				
				<div class="appB">
					간단 자기소개
				</div>
				<textarea class="intro" rows="20">
				</textarea>
				
			</div>
		</fieldset>
		
		<div class="selectArea">
			<fieldset id="wruArea">
				<legend class="qna">당신은 어떤분인가요?</legend>
				<div class="wruCheckInput">
						<input type="radio" name="wruCheck" value="1">선생님
						<div class="inputDiv">보육교사, 유치원정교사, 특수학교(유치원/초등)정교사, 초등학교정교사 자격증을 보유하고 있는경우</div>
				</div>
				<div class="wruCheckInput">
					<input type="radio" name="wruCheck" value="2">엄마
					<div class="inputDiv">본인의 아이를 키우며 육아 경험이 있는경우</div>
				</div>
				<div class="wruCheckInput">
					<input type="radio" name="wruCheck" value="3">대학생
					<div class="inputDiv">현재 대학교에서 재학 및 휴학 중인 경우</div>
				</div>
				<div class="wruCheckInput">
					<input type="radio" name="wruCheck" value="4">일반
					<div class="inputDiv">위 3가지 경우에 속하지 않지만 맘시터로 활동하고싶은 경우(취준생, 회사원, 프리랜서 등등)</div>
				</div>
			</fieldset>

			

			<fieldset>
				<legend class="qna">어떤 아이를 돌볼 수 있나요?</legend>
				<div class="bChoiceArea">
					<label class="bChoiceCheckInput">
						<input type="checkbox" name="bChoiceCheck" value="1">
						<span class="bChoiceCheck">
							<div class="imgdiv">
								<img src="<%=request.getContextPath()%>/images/milkbottle.png";>
							</div>
						신생아
						</span>
					</label>
					<label class="bChoiceCheckInput">
						<input type="checkbox" name="bChoiceCheck" value="2">
						<span class="bChoiceCheck">
							<div class="imgdiv">
								<img src="<%=request.getContextPath()%>/images/pacifier.png";>
							</div>
						영아
						</span>
					</label>
					<label class="bChoiceCheckInput">
						<input type="checkbox" name="bChoiceCheck" value="3">
						<span class="bChoiceCheck">
							<div class="imgdiv">
								<img src="<%=request.getContextPath()%>/images/kindergarden.png";>
							</div>
						유아
						</span>
					</label>
				</div>
			</fieldset>

			<fieldset>
				<legend class="qna">어떤 활동을 할 수 있나요?</legend>
				
				<div class="activityArea">
					<label class="actiCheckInput">
						<input type="checkbox" name="atiCheck" value="1">
						<span class="atiCheck">
							<div class="imgdiv">
								<img src="<%=request.getContextPath()%>/images/puzzle.png";>
							</div>
						실내놀이
						</span>
					</label>
					<label class="actiCheckInput">
						<input type="checkbox" name="atiCheck" value="2">
						<span class="atiCheck">
							<div class="imgdiv">
								<img src="<%=request.getContextPath()%>/images/kindergarden.png";>
							</div>
						등하원돕기
						</span>
					</label>
					<label class="actiCheckInput">
						<input type="checkbox" name="atiCheck" value="3">
						<span class="atiCheck">
							<div class="imgdiv">
								<img src="<%=request.getContextPath()%>/images/book.png";>
							</div>
						책읽기
						</span>
					</label>
					<label class="actiCheckInput">
						<input type="checkbox" name="atiCheck" value="4">
						<span class="atiCheck">
							<div class="imgdiv">
								<img src="<%=request.getContextPath()%>/images/soccer.png";>
							</div>
						야외활동
						</span>
					</label>
					<label class="actiCheckInput">
						<input type="checkbox" name="atiCheck" value="5">
						<span class="atiCheck">
							<div class="imgdiv">
								<img src="<%=request.getContextPath()%>/images/english.png";>
							</div>
						한글놀이
						</span>
					</label>
					<label class="actiCheckInput">
						<input type="checkbox" name="atiCheck" value="6">
						<span class="atiCheck">
							<div class="imgdiv">
								<img src="<%=request.getContextPath()%>/images/english.png";>
							</div>
						영어놀이
						</span>
					</label>
					<label class="actiCheckInput">
						<input type="checkbox" name="atiCheck" value="7">
						<span class="atiCheck">
							<div class="imgdiv">
								<img src="<%=request.getContextPath()%>/images/kindergarden.png";>
							</div>
						학습지도
						</span>
					</label>
					<label class="actiCheckInput">
						<input type="checkbox" name="atiCheck" value="8">
						<span class="atiCheck">
							<div class="imgdiv">
								<img src="<%=request.getContextPath()%>/images/soccer.png";>
							</div>
						체육놀이
						</span>
					</label>
					<label class="actiCheckInput">
						<input type="checkbox" name="atiCheck" value="9">
						<span class="atiCheck">
							<div class="imgdiv">
								<img src="<%=request.getContextPath()%>/images/kindergarden.png";>
							</div>
						밥챙겨주기
						</span>
					</label>
				</div>
			</fieldset>
		</div>
		
		<button type="submit" id="insertBtn">신청하기</button>
		<button type="button" id="cancelBtn" onclick="location.href='<%= request.getContextPath() %>/list.bo'">취소하기</button>
		</form>
	</div>
	
	<c:import url="/footer.jsp"/>
</body>
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


