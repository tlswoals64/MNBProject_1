<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

.UNS {
	border-radius: 4px;
	background-color: #fff;
	margin: auto;
	width: 900px;
	box-shadow: 0 0 6px 0 hsla(0, 0%, 66%, .5);
	padding: 20px;
	display: flex;
	flex-wrap: nowrap;
}

.ftd {
	width: 80px;
}

.icon {
	width: 150px;
	height: 160px;
	curson: pointer;
	border: 1px solid pink;
	display: inline-block;
	margin: 10px;
}

.menu {
	font-size: 13px;
	color: pink;
}

.la {
	font-size: 13px;
	width: 200px;
	color: gray;
}

.req {
	width: 200px;
	height: 30px;
}

#reportbtn {
	width: 120xp;
	height: 40px;
	background-color: white;
	border-radius: 25px;
	float:right;
}

.ageicon{
	width: 130px;
	height: 120px;
	curson: pointer;
	border: 1px solid pink;
	display: inline-block;
	margin: 10px;
}

</style>
<jsp:include page="../../../common/header.jsp"/>
</head>
<body>
	<div style="margin:auto;">
	<div class="UNS">
	<table>
	<tr>
	<td>
	<h2>3세여아 돌봐주실분 구합니다.</h2>
	</td>
	<td>	
	<button onclick="" id="reportbtn">
	
	<img src="resources/images/board/babymom/siren.png" style="width:20px; height:20px;">신고</button>
	</td>
	</tr>
	</table>
	</div>
	<div class="UNS" >
		<div class="_1f8P3">
			<div class="_2EG3w" style="width: 500px; height: 420px; padding-right:30px;">
				<img src="resources/images/board/babymom/girl.png">
			</div>
		</div>
		<div class="_2T0ZR">
			<div>
				<div class="_1yvNS" style="margin-bottom: 12px;">
					<div class="_3Ub_z" style="margin-right: 15px;">
					<br><br>		
					<table>
					<tr>
					<td class="ftd">신청자</td>
					<td>김영선</td>
					</tr>
					</table>
					</div>
					<hr>
				</div>
				
				<div class="_1yvNS">
					<div class="_1efBn">
					<br>
						서울시 서초구 강남구,안양시 동안구
					</div>
				</div>
				<div class="_1yvNS">
					<div class="_1qvJA">
						희망시급:15,000원
					</div>
					<br>
				</div>
			</div>
			<div>
				<div style="flex-basis: 100%;">
					<div class="_3UFT6" style="justify-content: space-around;">
						<div class="_3O6up">
							<div class="uKalM">
									<div>조회수 : 19592</div>
							</div>
						</div>						
					</div>
					<br><br>
				</div>	
				<div class="_1yvNS"	style="margin-bottom: 0px; justify-content: space-between;">
					<div style="flex-basis: 14%;">
						<button tabindex="0" type="button"
							style="border: 1px solid rgb(236, 238, 239); box-sizing: border-box; display: inline-block; font-family: &amp; quot; Noto Sans KR&amp;quot; , sans-serif; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); cursor: pointer; text-decoration: none; margin: 0px; padding: 0px; outline: none; font-size: inherit; font-weight: inherit; position: relative; z-index: 1; height: 60px; line-height: 36px; min-width: 100%; color: rgba(0, 0, 0, 0.87); transition: all 450ms cubic-bezier(0.23, 1, 0.32, 1) 0ms; border-radius: 2px; user-select: none; overflow: hidden; background-color: rgb(255, 255, 255); text-align: center;">
							<div>
								<div style="height: 60px;">
									<div style="height: 27px;">
										<img
											src="https://s3.ap-northeast-2.amazonaws.com/momsitter-service/momsitter-app/static/public/favorites/p-details-5-like-off.png">
									</div>
									<div
										style="color: rgb(91, 91, 91); font-size: 0.75rem; font-weight: 500;">132</div>
								</div>
							</div>
						</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="UNS">
	<div style="margin:auto">
	<table >
	<tr>
	<th style="background-color:#f1f1f1;">간단 소개</th>
	</tr>
	<tr>
	<td style="text-align:left">
	<textarea name="content" cols="110" rows="10" style="text-align:left" readonly>	
	3살 여자 아이입니다. 활발하며, 에너지가 넘치는 아이 입니다. 오전 등원(9시 15분) 1시간, 하원(태권도/ 5시 20분) 1시간 해서 하루 총 2시간 봐주실 수 있는 맘시터를 원합니다^^
	3살 여자 아이입니다. 활발하며, 에너지가 넘치는 아이 입니다. 오전 등원(9시 15분) 1시간, 하원(태권도/ 5시 20분) 1시간 해서 하루 총 2시간 봐주실 수 있는 맘시터를 원합니다^^
	3살 여자 아이입니다. 활발하며, 에너지가 넘치는 아이 입니다. 오전 등원(9시 15분) 1시간, 하원(태권도/ 5시 20분) 1시간 해서 하루 총 2시간 봐주실 수 있는 맘시터를 원합니다^^
	</textarea>
	</td>
	</tr>
	</table>
	</div>
	</div>
	<div class="UNS">
	<div style="margin:auto">
		<table>
		<tr>
		<th style="background-color:#f1f1f1;">아이 성별</th>
		</tr>
		<tr><td style="text-align:center;">
        <div class="ageicon"><br>
            <img src="resources/images/board/babymom/boy.png" style="width:100px; height:100px; border: 1px solide pink;"><br>
    		
        </div>
        <div class="ageicon"><br>
            <img src="resources/images/board/babymom/girl.png" style="width:100px; height:100px; border: 1px solide pink;"><br>
    		
        </div>
        <div class="ageicon"><br>
            <img src="resources/images/board/babymom/girl.png" style="width:100px; height:100px; border: 1px solide pink;"><br>
    		
        </div>       
        </td></tr>
        </table>
        </div>
	</div>
	<div class="UNS">
	<div style="margin:auto">
		<table>
		<tr>
		<th style="background-color:#f1f1f1;">아이 나이</th>
		</tr>
		<tr><td style="text-align:center;">
        <div class="icon"><br>
            <img src="resources/images/board/babymom/milk-bottle.png" style="width:100px; height:100px; border: 1px solide pink;"><br>
    		<p class="menu">신생아(0~6개월)</p>
        </div>
        <div class="icon"><br>
            <img src="resources/images/board/babymom/pacifier.png" style="width:100px; height:100px; border: 1px solide pink;"><br>
    		<p class="menu">영아(7~36개월)</p>
        </div>
        <div class="icon"><br>
            <img src="resources/images/board/babymom/maternity.png" style="width:100px; height:100px; border: 1px solide pink;"><br>
    		<p class="menu">유아(4~6살)</p>
        </div>       
        </td></tr>
        </table>
        </div>
	</div>
	<div class="UNS">
	<div style="margin:auto">
	<table>
	<tr>
	<th style="background-color:#f1f1f1;">원하는 활동</th>
	</tr>
	<tr>
	<td style="text-align:center;">
				<div>
                  <div class="icon"><br>
                 <img src="resources/images/board/babymom/puzzle.png" style="width:100px; height:100px; border: 1px solide pink;"><br>
                  <p class="menu">실내놀이</p>
                  </div>
                  <div class="icon"><br>
                  <img src="resources/images/board/babymom/gohome.png" style="width:100px; height:100px; border: 1px solide pink;"><br>
                  <p class="menu">등하원돕기</p>
                  </div>
                  <div class="icon"><br>
                 <img src="resources/images/board/babymom/book.png" style="width:100px; height:100px; border: 1px solide pink;"><br>
                  <p class="menu">책읽기</p>
                  </div>       
                  <br><br>        
                  <div class="icon"><br>
                  <img src="resources/images/board/babymom/butterfly.png" style="width:100px; height:100px; border: 1px solide pink;"><br>
                  <p class="menu">야외활동</p>
                  </div>
                  <div class="icon"><br>
                 <img src="resources/images/board/babymom/hangle.png" style="width:100px; height:100px; border: 1px solide pink;"><br>
                  <p class="menu">한글놀이</p>
                  </div>
                  <div class="icon"><br>
                  <img src="resources/images/board/babymom/english.png" style="width:100px; height:100px; border: 1px solide pink;"><br>
                  <p class="menu">영어놀이</p>       
                  </div>
                  <br><br>
                   <div class="icon"><br>
                  <img src="resources/images/board/babymom/study.png" style="width:100px; height:100px; border: 1px solide pink;"><br>
                  <p class="menu">학습지도</p>
                  </div>
                  <div class="icon"><br>
                  <img src="resources/images/board/babymom/soccer.png" style="width:100px; height:100px; border: 1px solide pink;"><br>
                  <p class="menu">체육놀이</p>
                  </div>
                  <div class="icon"><br>
                  <img src="resources/images/board/babymom/baby-feeding.png" style="width:100px; height:100px; border: 1px solide pink;"><br>
                  <p class="menu">밥챙겨주기</p>        
                  </div>
                 </div>
		</td>
	</tr>
	</table>	
	</div>	
	</div>
	<div class="UNS">
		<div>
		 <label class="la">희망 돌보는 방식 : </label>
         <input type="text" class="req" id="req2" value="" placeholder="예시) 부모님과 같이 돌봐주세요">
         <br>
         <label class="la">희망 인터뷰 방식 :</label>
         <input type="text" class="req" id="req3" value="" placeholder="예시) 시범채용">
         <br>
         <label class="la">희망 베이비시터 성별 : </label>
         <input type="text" class="req" id="req1" value="" placeholder="예시) 남자">
         
		</div>
	</div>
	
	
</div>



</body>
<jsp:include page="../../../common/footer.jsp"/>
</html>