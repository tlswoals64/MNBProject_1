<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
.inputbtn {
	width: 200px;
	height: 40px;
	border-radius: 15px;
	cursor:pointer;
}

.ul01 li {
	display: inline-block;
	margin:auto;
}
.star{
	font-size:20px;
	color:red;

}
.estar{
	font-size:20px;
	color:gray;	
}

</style>
</head>
<body>
	
	<div style="height:40px"></div>
	<form action="reViewUpView.do" method="post">
	<div style="margin:auto;">
	<div class="UNS">
	<table>
	<tr>
	<td>
	<input type="hidden" value="${revi.bNo}" name="bNo" id="bNo">
	<h2>${revi.bTitle}</h2>
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
				<img width="500px" height="420px" src="resources/images/reView/${revi.changeName }">
			</div>
		</div>
		<div class="_2T0ZR" style="width:100%;">
			<div>
				<div class="_1yvNS" style="margin-bottom: 12px;">
					<div class="_3Ub_z" style="margin-right: 15px;">
					<br><br>		
					<table>
					<tr>
					<td class="ftd">작성자</td>
					<td>${revi.bWriter}</td>
					</tr>
					</table>
					</div>
					<hr>
				</div>
				<div class="_1yvNS">
					<div class="_1qvJA">
						
					</div>
					<br>
				</div>
			</div>
			<div>
				<div style="flex-basis: 100%;">
					<div style="justify-content: space-around;">
						<div >
							<div>
							<div>조회수 : ${revi.bCount}</div>
							</div>
						</div>						
					</div>
					<br>
					<div>
					<input type="hidden" name="bEva" id="bEva" value="${revi.bEva}">
					<c:if test="${revi.bEva eq 1 }">
					<div>
						<span class="star">★</span>
						<span class="estar">★</span>
						<span class="estar">★</span>
						<span class="estar">★</span>
						<span class="estar">★</span>
						
					</div>
					</c:if>
					<c:if test="${revi.bEva eq 2 }">
					<div>
						<span class="star">★</span>
						<span class="star">★</span>
						<span class="estar">★</span>
						<span class="estar">★</span>
						<span class="estar">★</span>
					</div>
					</c:if>
					<c:if test="${revi.bEva eq 3 }">
					<div>
						<span class="star">★</span>
						<span class="star">★</span>
						<span class="star">★</span>
						<span class="estar">★</span>
						<span class="estar">★</span>
					</div>
					</c:if>
					<c:if test="${revi.bEva eq 4 }">
					<div>
						<span class="star">★</span>
						<span class="star">★</span>
						<span class="star">★</span>
						<span class="star">★</span>
						<span class="estar">★</span>
					</div>
					</c:if>
					<c:if test="${revi.bEva eq 5 }">
					<div>
						<span class="star">★</span>
						<span class="star">★</span>
						<span class="star">★</span>
						<span class="star">★</span>
						<span class="star">★</span>
						</div>
					</c:if>					
					</div>
					<br>
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
	<table>
	<tr>
	<th style="background-color:#f1f1f1;">리뷰 내용</th>
	</tr>
	<tr>
	<td style="text-align:left">
	<textarea name="content" cols="110" rows="10" style="text-align:left; resize:none;" readonly>
	${revi.bContent}	
	</textarea>
	</td>
	</tr>
	</table>	
	</div>
	</div>
	
		<c:if test="${ loginUser.nickName eq revi.bWriter }">
			<div class="joinbox" style="max-width: 90%;">
				<c:url var="reviewUpdateView" value="reviewUpdateView.do">
					<c:param name="bNo" value="${ revi.bNo }" />
					<c:param name="page" value="${ page }" />
				</c:url>
				<c:url var="reviewDelete" value="reviewDelete.do">
					<c:param name="bNo" value="${ revi.bNo }" />
					<c:param name="page" value="${ page }" />
				</c:url>
				
				<ul class="ul01">
					<li><input class="inputbtn" type="button" value="수정" onclick="location.href='${ reviewUpdateView }'"></li>
					<li><input class="inputbtn" type="button" value="삭제" onclick="location.href='${ reviewDelete }'"></li>
					<li><input class="inputbtn" type="button" value="취소" onclick="javascript:history.back()"></li>
				</ul>
			</div>
		</c:if>
</div>
</form>

<script>

function back(){	  
	   
	   location.href="reViewList.do"

	   }
</script>


</body>
</html>