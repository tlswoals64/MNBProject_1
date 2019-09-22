<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
	color: block;
}
.inputbtn {
   width: 200px;
   height: 40px;
   border-radius: 15px;
   cursor: pointer;
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
	<div style="height:40px"></div>
	<div style="margin:auto;">
	<div class="UNS">
	<table>
	<tr>
	<td>
	<h2>${momboard.bTitle}</h2>
	</td>
	<td>	
	<button onclick="" id="reportbtn"><img src="resources/images/board/babymom/siren.png" style="width:20px; height:20px;">신고</button>
	</td>
	</tr>
	</table>
	</div>
	<div class="UNS" >
		<div class="_1f8P3">
			<div class="_2EG3w" style="width: 500px; height: 420px; padding-right:30px;">
				<img width="500px" height="420px" src="resources/images/board/babymom/${momboard.changeName }">
			</div>
		</div>
		<div class="_2T0ZR" style="width:100%;">
			<div>
				<div class="_1yvNS" style="margin-bottom: 12px;">
					<div class="_3Ub_z" style="margin-right: 15px;">
					<br><br>		
					<table>
					<tr>
					<td class="ftd">신청자</td>
					<td>${momboard.bWriter}</td>
					</tr>
					</table>
					</div>
					<hr>
				</div>
				
				<div class="_1yvNS">
					<div class="_1efBn">
					<br>
						${momboard.address}
					</div>
				</div>
				<div class="_1yvNS">
					<div class="_1qvJA">
						희망시급: ${momboard.bcSalary}
					</div>
					<br>
				</div>
			</div>
			<div>
				<div style="flex-basis: 100%;">
					<div class="_3UFT6" style="justify-content: space-around;">
						<div class="_3O6up">
							<div class="uKalM">
									<div>조회수 : ${momboard.bCount}</div>
							</div>
						</div>						
					</div>
					<br><br>
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
	<textarea name="content" cols="110" rows="10" style="text-align:left; resize:none;" readonly>
	${momboard.bContent}	
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
		<th style="background-color:#f1f1f1;" colspan="3">아이 성별</th>		
		</tr>
		<tr>
		<c:set var="bGender" value="${ fn:split(momboard.bGender, ',') }"/>	
		<td style="text-align:center;">		
        <div class="icon"><br>
        <c:choose>      
        <c:when test="${bGender[0] eq '남자'}">
            <img src="resources/images/board/babymom/boy.png" style="width:100px; height:100px; border: 1px solide pink;"><br>
    		<p class="menu">남자</p>
    	</c:when>
    	<c:when test="${bGender[0] eq '여자'}">
    		 <img src="resources/images/board/babymom/girl.png" style="width:100px; height:100px; border: 1px solide pink;"><br>
    		<p class="menu">여자</p>
    	</c:when>
        </c:choose> 
        </div>
        <c:if test="${momboard.personnel >1 }">
        <div class="icon"><br>
        <c:choose>      
        <c:when test="${bGender[1] eq '남자'}">
            <img src="resources/images/board/babymom/boy.png" style="width:100px; height:100px; border: 1px solide pink;"><br>
    		<p class="menu">남자</p>
    	</c:when>
    	<c:when test="${bGender[1] eq '여자'}">
    		 <img src="resources/images/board/babymom/girl.png" style="width:100px; height:100px; border: 1px solide pink;"><br>
    		<p class="menu">여자</p>
    	</c:when>
        </c:choose> 
        </div>
        </c:if>
         <c:if test="${momboard.personnel >2 }">
         <div class="icon"><br>
        <c:choose>      
        <c:when test="${bGender[2] eq '남자'}">
            <img src="resources/images/board/babymom/boy.png" style="width:100px; height:100px; border: 1px solide pink;"><br>
    		<p class="menu">남자</p>
    	</c:when>
    	<c:when test="${bGender[2] eq '여자'}">
    		 <img src="resources/images/board/babymom/girl.png" style="width:100px; height:100px; border: 1px solide pink;"><br>
    		<p class="menu">여자</p>
    	</c:when>
        </c:choose> 
        </div>
        </c:if>                
      </td>
        </tr>
        </table>
        </div>
	</div>
	<div class="UNS">
	<div style="margin:auto">
		<table>
		<tr>
		<th style="background-color:#f1f1f1;">아이 나이</th>
		</tr>
		<tr>
		<c:set var="bAge" value="${ fn:split(momboard.bAge, ',') }"/>
	
		<td style="text-align:center;">		
        <div class="icon"><br>
        <c:choose>      
        <c:when test="${bAge[0] eq '신생아'}">
            <img src="resources/images/board/babymom/pacifier2.png" style="width:100px; height:100px; border: 1px solide pink;"><br>
    		<p class="menu">신생아(0~6개월)</p>
    	</c:when>
    	<c:when test="${bAge[0] eq '영아'}">
    		 <img src="resources/images/board/babymom/milk-bottle2.png" style="width:100px; height:100px; border: 1px solide pink;"><br>
    		<p class="menu">영아(7~36개월)</p>
    	</c:when>
    	<c:when test="${bAge[0] eq '유아'}">
    		<img src="resources/images/board/babymom/maternity2.png" style="width:100px; height:100px; border: 1px solide pink;"><br>
    		<p class="menu">유아(4~6살)</p>
    	</c:when>
        </c:choose> 
        </div>
        <c:if test="${momboard.personnel >1 }">
         <div class="icon"><br>
        <c:choose>
        <c:when test="${bAge[1] eq '신생아'}">
            <img src="resources/images/board/babymom/pacifier2.png" style="width:100px; height:100px; border: 1px solide pink;"><br>
    		<p class="menu">신생아(0~6개월)</p>
    	</c:when>
    	<c:when test="${bAge[1] eq '영아'}">
    		 <img src="resources/images/board/babymom/milk-bottle2.png" style="width:100px; height:100px; border: 1px solide pink;"><br>
    		<p class="menu">영아(7~36개월)</p>
    	</c:when>
    	<c:when test="${bAge[1] eq '유아'}">
    		<img src="resources/images/board/babymom/maternity2.png" style="width:100px; height:100px; border: 1px solide pink;"><br>
    		<p class="menu">유아(4~6살)</p>
    	</c:when>
        </c:choose> 
        </div>
        </c:if>
         <c:if test="${momboard.personnel >2 }">
         <div class="icon"><br>
        <c:choose>
        <c:when test="${bAge[2] eq '신생아'}">
            <img src="resources/images/board/babymom/pacifier2.png" style="width:100px; height:100px; border: 1px solide pink;"><br>
    		<p class="menu">신생아(0~6개월)</p>
    	</c:when>
    	<c:when test="${bAge[2] eq '영아'}">
    		 <img src="resources/images/board/babymom/milk-bottle2.png" style="width:100px; height:100px; border: 1px solide pink;"><br>
    		<p class="menu">영아(7~36개월)</p>
    	</c:when>
    	<c:when test="${bAge[2] eq '유아'}">
    		<img src="resources/images/board/babymom/maternity2.png" style="width:100px; height:100px; border: 1px solide pink;"><br>
    		<p class="menu">유아(4~6살)</p>
    	</c:when>
        </c:choose> 
        </div>
        </c:if>                
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
                              <c:set var="active" value="${ fn:split(momboard.bcActivity, ',') }"/>
                              <c:choose>
                                 <c:when test="${ active[0] eq '실내놀이'}">
                                    <img src="resources/images/board/babymom/puzzle2.png"
                                       style="width: 100px; height: 100px; border: 1px solide pink;">
                                 </c:when>
                                 <c:when test="${ active[1] eq '실내놀이'}">
                                    <img src="resources/images/board/babymom/puzzle2.png"
                                       style="width: 100px; height: 100px; border: 1px solide pink;">
                                 </c:when>
                                 <c:when test="${ active[2] eq '실내놀이'}">
                                    <img src="resources/images/board/babymom/puzzle2.png"
                                       style="width: 100px; height: 100px; border: 1px solide pink;">
                                 </c:when>
                                 <c:otherwise>
                                    <img src="resources/images/board/babymom/puzzle.png"
                                       style="width: 100px; height: 100px; border: 1px solide pink;">
                                 </c:otherwise>
                              </c:choose>
                           <br>
                           <p class="menu">실내놀이</p>
                        </div>
                        <div class="icon">
                           <br>
                              <c:choose>
                                 <c:when test="${ active[0] eq '등하원돕기'}">
                                    <img src="resources/images/board/babymom/gohome2.png" style="width: 100px; height: 100px; border: 1px solide pink;">
                                 </c:when>
                                 <c:when test="${ active[1] eq '등하원돕기'}">
                                    <img src="resources/images/board/babymom/gohome2.png" style="width: 100px; height: 100px; border: 1px solide pink;">
                                 </c:when>
                                 <c:when test="${ active[2] eq '등하원돕기'}">
                                    <img src="resources/images/board/babymom/gohome2.png" style="width: 100px; height: 100px; border: 1px solide pink;">
                                 </c:when>
                                 <c:otherwise>
                                    <img src="resources/images/board/babymom/gohome.png" style="width: 100px; height: 100px; border: 1px solide pink;">
                                 </c:otherwise>
                              </c:choose>
                           <br>
                           <p class="menu">등하원돕기</p>
                        </div>
                        <div class="icon">
                           <br>
                              <c:choose>
                                 <c:when test="${ active[0] eq '책읽기'}">
                                    <img src="resources/images/board/babymom/book2.png" style="width: 100px; height: 100px; border: 1px solide pink;">
                                 </c:when>
                                 <c:when test="${ active[1] eq '책읽기'}">
                                    <img src="resources/images/board/babymom/book2.png" style="width: 100px; height: 100px; border: 1px solide pink;">
                                 </c:when>
                                 <c:when test="${ active[2] eq '책읽기'}">
                                    <img src="resources/images/board/babymom/book2.png" style="width: 100px; height: 100px; border: 1px solide pink;">
                                 </c:when>
                                 <c:otherwise>
                                    <img src="resources/images/board/babymom/book.png" style="width: 100px; height: 100px; border: 1px solide pink;">
                                 </c:otherwise>
                              </c:choose>
                           <br>
                           <p class="menu">책읽기</p>
                        </div>
                        <br>
                        <br>
                        <div class="icon">
                           <br>
                              <c:choose>
                                 <c:when test="${ active[0] eq '야외활동'}">
                                    <img src="resources/images/board/babymom/butterfly2.png" style="width: 100px; height: 100px; border: 1px solide pink;">
                                 </c:when>
                                 <c:when test="${ active[1] eq '야외활동'}">
                                    <img src="resources/images/board/babymom/butterfly2.png" style="width: 100px; height: 100px; border: 1px solide pink;">
                                 </c:when>
                                 <c:when test="${ active[2] eq '야외활동'}">
                                    <img src="resources/images/board/babymom/butterfly2.png" style="width: 100px; height: 100px; border: 1px solide pink;">
                                 </c:when>
                                 <c:otherwise>
                                    <img src="resources/images/board/babymom/butterfly.png" style="width: 100px; height: 100px; border: 1px solide pink;">
                                 </c:otherwise>
                              </c:choose>
                           <br>
                           <p class="menu">야외활동</p>
                        </div>
                        <div class="icon">
                           <br>
                              <c:choose>
                                 <c:when test="${ active[0] eq '한글놀이'}">
                                    <img src="resources/images/board/babymom/hangle2.png" style="width: 100px; height: 100px; border: 1px solide pink;">
                                 </c:when>
                                 <c:when test="${ active[1] eq '한글놀이'}">
                                    <img src="resources/images/board/babymom/hangle2.png" style="width: 100px; height: 100px; border: 1px solide pink;">
                                 </c:when>
                                 <c:when test="${ active[2] eq '한글놀이'}">
                                    <img src="resources/images/board/babymom/hangle2.png" style="width: 100px; height: 100px; border: 1px solide pink;">
                                 </c:when>
                                 <c:otherwise>
                                    <img src="resources/images/board/babymom/hangle.png" style="width: 100px; height: 100px; border: 1px solide pink;">
                                 </c:otherwise>
                              </c:choose>
                           <br>
                           <p class="menu">한글놀이</p>
                        </div>
                        <div class="icon">
                           <br>
                              <c:choose>
                                 <c:when test="${ active[0] eq '영어놀이'}">
                                    <img src="resources/images/board/babymom/english2.png" style="width: 100px; height: 100px; border: 1px solide pink;">
                                 </c:when>
                                 <c:when test="${ active[1] eq '영어놀이'}">
                                    <img src="resources/images/board/babymom/english2.png" style="width: 100px; height: 100px; border: 1px solide pink;">
                                 </c:when>
                                 <c:when test="${ active[2] eq '영어놀이'}">
                                    <img src="resources/images/board/babymom/english2.png" style="width: 100px; height: 100px; border: 1px solide pink;">
                                 </c:when>
                                 <c:otherwise>
                                    <img src="resources/images/board/babymom/english.png" style="width: 100px; height: 100px; border: 1px solide pink;">
                                 </c:otherwise>
                              </c:choose>
                           <br>
                           <p class="menu">영어놀이</p>
                        </div>
                        <br>
                        <br>
                        <div class="icon">
                           <br>
                              <c:choose>
                                 <c:when test="${ active[0] eq '학습지도'}">
                                    <img src="resources/images/board/babymom/study2.png" style="width: 100px; height: 100px; border: 1px solide pink;">
                                 </c:when>
                                 <c:when test="${ active[1] eq '학습지도'}">
                                    <img src="resources/images/board/babymom/study2.png" style="width: 100px; height: 100px; border: 1px solide pink;">
                                 </c:when>
                                 <c:when test="${ active[2] eq '학습지도'}">
                                    <img src="resources/images/board/babymom/study2.png" style="width: 100px; height: 100px; border: 1px solide pink;">
                                 </c:when>
                                 <c:otherwise>
                                    <img src="resources/images/board/babymom/study.png" style="width: 100px; height: 100px; border: 1px solide pink;">
                                 </c:otherwise>
                              </c:choose>
                           <br>
                           <p class="menu">학습지도</p>
                        </div>
                        <div class="icon">
                           <br>
                              <c:choose>
                                 <c:when test="${ active[0] eq '체육놀이'}">
                                    <img src="resources/images/board/babymom/soccer2.png" style="width: 100px; height: 100px; border: 1px solide pink;">
                                 </c:when>
                                 <c:when test="${ active[1] eq '체육놀이'}">
                                    <img src="resources/images/board/babymom/soccer2.png" style="width: 100px; height: 100px; border: 1px solide pink;">
                                 </c:when>
                                 <c:when test="${ active[2] eq '체육놀이'}">
                                    <img src="resources/images/board/babymom/soccer2.png" style="width: 100px; height: 100px; border: 1px solide pink;">
                                 </c:when>
                                 <c:otherwise>
                                    <img src="resources/images/board/babymom/soccer.png" style="width: 100px; height: 100px; border: 1px solide pink;">
                                 </c:otherwise>
                              </c:choose>
                           <br>
                           <p class="menu">체육놀이</p>
                        </div>
                        <div class="icon">
                           <br>
                              <c:choose>
                                 <c:when test="${ active[0] eq '밥챙겨주기'}">
                                    <img src="resources/images/board/babymom/baby-feeding2.png" style="width: 100px; height: 100px; border: 1px solide pink;">
                                 </c:when>
                                 <c:when test="${ active[1] eq '밥챙겨주기'}">
                                    <img src="resources/images/board/babymom/baby-feeding2.png" style="width: 100px; height: 100px; border: 1px solide pink;">
                                 </c:when>
                                 <c:when test="${ active[2] eq '밥챙겨주기'}">
                                    <img src="resources/images/board/babymom/baby-feeding2.png" style="width: 100px; height: 100px; border: 1px solide pink;">
                                 </c:when>
                                 <c:otherwise>
                                    <img src="resources/images/board/babymom/baby-feeding.png" style="width: 100px; height: 100px; border: 1px solide pink;">
                                 </c:otherwise>
                              </c:choose>
                           <br>
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
		<c:set var="req0" value="${momboard.req}"/>
		<c:set var="req1" value="req0.split(',')"/>
		
		 <c:set var="req1" value="${ fn:split(momboard.req, ',') }"/>
		 <label class="la">희망 돌보는 방식 : </label>
         <input type="text" class="req" id="req2" value="${req1[0]}" placeholder="예시) 부모님과 같이 돌봐주세요">
         <br>
         <label class="la">희망 인터뷰 방식 :</label>
         <input type="text" class="req" id="req3" value="${req1[1]}" placeholder="예시) 시범채용">
         <br>
         <label class="la">희망 베이비시터 성별 : </label>
         <input type="text" class="req" id="req1" value="${req1[2]}" placeholder="예시) 남자">         
		</div>
	</div>

	
	</div>
	
	<div class="UNS">
	<c:if test="${ loginUser.nickName eq momboard.bWriter }">
         <div class="joinbox" style="max-width: 90%; margin: 20px auto;">
            <c:url var="momboardUpdate" value="momboardUpdateForm.do">
               <c:param name="bNo" value="${ momboard.bNo }" />
               <c:param name="page" value="${ page }" />
            </c:url>
            <c:url var="momboardDelete" value="momboardDelete.do">
               <c:param name="bNo" value="${ momboard.bNo }" />
               <c:param name="page" value="${ page }" />
            </c:url>           
            <ul class="ul01">
               <li><input class="inputbtn" type="button" value="수정" onclick="location.href='${ momboardUpdate }'"></li>
               <li><input class="inputbtn" type="button" value="삭제" onclick="location.href='${ momboardDelete }'"></li>
               <li><input class="inputbtn" type="button" value="목록" onclick="location.href='babymom.do'"></li>
            </ul>
         </div>
      </c:if>
	
	</div>




</body>
<jsp:include page="../../../common/footer.jsp"/>
</html>