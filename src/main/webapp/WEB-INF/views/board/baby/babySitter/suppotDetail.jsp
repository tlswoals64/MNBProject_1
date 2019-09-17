<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	float: right;
}

.ageicon {
	width: 130px;
	height: 120px;
	curson: pointer;
	border: 1px solid pink;
	display: inline-block;
	margin: 10px;
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
	cursor: pointer;
}
</style>
<jsp:include page="../../../common/header.jsp" />
</head>
<body>
	<div style="margin: auto;">
		<div class="UNS">
			<table>
				<tr>
					<td>
						<h2>${ suppot.bTitle }</h2>
					</td>
					<td>
						<button onclick="" id="reportbtn">
							<img src="resources/images/babySitter/siren.png"
								style="width: 20px; height: 20px;">신고
						</button>
					</td>
					<td>
						<button onclick="popup();" id="reportbtn">
							<img src="resources/images/babySitter/note.png" style="width: 20px; height: 20px;">쪽지
						</button>
					</td>
				</tr>
			</table>
		</div>
		<div class="UNS">
			<div class="_1f8P3">
				<div class="_2EG3w"
					style="width: 500px; height: 420px; padding-right: 30px;">
					<img style = "width:100%; height: 100%;" src="resources/images/babySitter/suppot/${ suppot.changeName }">
				</div>
			</div>
			<div class="_2T0ZR">
				<div>
					<div class="_1yvNS" style="margin-bottom: 12px;">
						<div class="_3Ub_z" style="margin-right: 15px;">
							<br>
							<br>
							<table>
								<tr>
									<td class="ftd">작성자</td>
									<td>${ suppot.bWriter }</td>
								</tr>
							</table>
						</div>
						<hr>
					</div>

					<div class="_1yvNS">
						<div class="_1efBn">
							<br>${ suppot.address }
						</div>
					</div>
					<div class="_1yvNS">
						<div class="_1qvJA">희망시급:${ suppot.salary }원</div>
						<br>
					</div>
				</div>
				<div>
					<div style="flex-basis: 100%;">
						<div class="_3UFT6" style="justify-content: space-around;">
							<div class="_3O6up">
								<div class="uKalM">
									<div>조회수 : ${ suppot.bCount }</div>
								</div>
							</div>
						</div>
						<br>
						<br>
					</div>
					<div class="_1yvNS"
						style="margin-bottom: 0px; justify-content: space-between;">
						<div style="flex-basis: 14%;">
							<button tabindex="0" type="button"
								style="border: 1px solid rgb(236, 238, 239); box-sizing: border-box; display: inline-block; font-family: &amp; amp; quot; Noto Sans KR&amp;amp; quot; , sans-serif; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); cursor: pointer; text-decoration: none; margin: 0px; padding: 0px; outline: none; font-size: inherit; font-weight: inherit; position: relative; z-index: 1; height: 60px; line-height: 36px; min-width: 100%; color: rgba(0, 0, 0, 0.87); transition: all 450ms cubic-bezier(0.23, 1, 0.32, 1) 0ms; border-radius: 2px; user-select: none; overflow: hidden; background-color: rgb(255, 255, 255); text-align: center;">
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
			<div style="margin: auto">
				<table>
					<tr>
						<th style="background-color: #f1f1f1;">간단 소개</th>
					</tr>
					<tr>
						<td style="text-align: left"><textarea name="content"
								cols="110" rows="10" style="text-align: left" readonly>${ suppot.bContent }	
	</textarea></td>
					</tr>
				</table>
			</div>
		</div>
		<div class="UNS">
			<div style="margin: auto">
				<table>
					<tr>
						<th style="background-color: #f1f1f1;">아이 성별</th>
					</tr>
					<tr>
						<td style="text-align: center;">
							<div class="ageicon">
								<br> <img src="resources/images/board/babymom/boy.png"
									style="width: 100px; height: 100px; border: 1px solide pink;"><br>

							</div>
							<div class="ageicon">
								<br> <img src="resources/images/board/babymom/girl.png"
									style="width: 100px; height: 100px; border: 1px solide pink;"><br>

							</div>
							<div class="ageicon">
								<br> <img src="resources/images/board/babymom/girl.png"
									style="width: 100px; height: 100px; border: 1px solide pink;"><br>

							</div>
						</td>
					</tr>
				</table>
			</div>
		</div>
		<div class="UNS">
			<div style="margin: auto">
				<table>
					<tr>
						<th style="background-color: #f1f1f1;">아이 나이</th>
					</tr>
					<tr>
						<td style="text-align: center;">
							<div class="icon">
								<br> <img
									src="resources/images/board/babymom/milk-bottle.png"
									style="width: 100px; height: 100px; border: 1px solide pink;"><br>
								<p class="menu">신생아(0~6개월)</p>
							</div>
							<div class="icon">
								<br> <img src="resources/images/board/babymom/pacifier.png"
									style="width: 100px; height: 100px; border: 1px solide pink;"><br>
								<p class="menu">영아(7~36개월)</p>
							</div>
							<div class="icon">
								<br> <img
									src="resources/images/board/babymom/maternity.png"
									style="width: 100px; height: 100px; border: 1px solide pink;"><br>
								<p class="menu">유아(4~6살)</p>
							</div>
						</td>
					</tr>
				</table>
			</div>
		</div>
		<div class="UNS">
			<div style="margin: auto">
				<table>
					<tr>
						<th style="background-color: #f1f1f1;">원하는 활동</th>
					</tr>
					<tr>
						<td style="text-align: center;">
							<div>
								<div class="icon">
									<br> <img src="resources/images/board/babymom/puzzle.png"
										style="width: 100px; height: 100px; border: 1px solide pink;"><br>
									<p class="menu">실내놀이</p>
								</div>
								<div class="icon">
									<br> <img src="resources/images/board/babymom/gohome.png"
										style="width: 100px; height: 100px; border: 1px solide pink;"><br>
									<p class="menu">등하원돕기</p>
								</div>
								<div class="icon">
									<br> <img src="resources/images/board/babymom/book.png"
										style="width: 100px; height: 100px; border: 1px solide pink;"><br>
									<p class="menu">책읽기</p>
								</div>
								<br>
								<br>
								<div class="icon">
									<br> <img
										src="resources/images/board/babymom/butterfly.png"
										style="width: 100px; height: 100px; border: 1px solide pink;"><br>
									<p class="menu">야외활동</p>
								</div>
								<div class="icon">
									<br> <img src="resources/images/board/babymom/hangle.png"
										style="width: 100px; height: 100px; border: 1px solide pink;"><br>
									<p class="menu">한글놀이</p>
								</div>
								<div class="icon">
									<br> <img src="resources/images/board/babymom/english.png"
										style="width: 100px; height: 100px; border: 1px solide pink;"><br>
									<p class="menu">영어놀이</p>
								</div>
								<br>
								<br>
								<div class="icon">
									<br> <img src="resources/images/board/babymom/study.png"
										style="width: 100px; height: 100px; border: 1px solide pink;"><br>
									<p class="menu">학습지도</p>
								</div>
								<div class="icon">
									<br> <img src="resources/images/board/babymom/soccer.png"
										style="width: 100px; height: 100px; border: 1px solide pink;"><br>
									<p class="menu">체육놀이</p>
								</div>
								<div class="icon">
									<br> <img
										src="resources/images/board/babymom/baby-feeding.png"
										style="width: 100px; height: 100px; border: 1px solide pink;"><br>
									<p class="menu">밥챙겨주기</p>
								</div>
							</div>
						</td>
					</tr>
				</table>
			</div>
		</div>
		<div class="UNS">
			<textarea name="content" cols="110" rows="10" style="text-align: left; margin: auto;" readonly>${ suppot.bCcarrer }
			</textarea>
		</div>
		<div>
			<table class="replyTable" style = "margin: auto;">
				<tr>
					<td><textarea cols=55 rows=3 id=rContent></textarea></td>
					<td><button id="rSubmit">등록하기</button></td>
				</tr>
			</table>
			<table class="replyTable" id="rtb" style = "margin: auto;">
				<thead>
					<tr>
						<td colspan="2"><b id=rCount></b></td>
					</tr>
				</thead>
				<tbody></tbody>
			</table>
		</div>
		<c:if test="${ loginUser.nickName eq suppot.bWriter }">
			<div class="joinbox" style="max-width: 90%;">
				<c:url var="suppotUpdate" value="suppotUpdateForm.do">
					<c:param name="bNo" value="${ suppot.bNo }" />
					<c:param name="page" value="${ page }" />
				</c:url>
				<c:url var="suppotDelete" value="suppotDelete.do">
					<c:param name="bNo" value="${ suppot.bNo }" />
					<c:param name="page" value="${ page }" />
				</c:url>
				
				<ul class="ul01">
					<li><input class="inputbtn" type="button" value="수정" onclick="location.href='${ suppotUpdate }'"></li>
					<li><input class="inputbtn" type="button" value="삭제" onclick="location.href='${ suppotDelete }'"></li>
					<li><input class="inputbtn" type="button" value="취소" onclick="javascript:history.back()"></li>
				</ul>
			</div>
		</c:if>
	</div>
	
	<!-- 팝업창으로 보내줄 정보 -->
	<form name = "popupData" id = "popupData" method = "post">
		<input type = "hidden" name = "bWriter" value = "${ suppot.bWriter }">
	</form>
	<script>
		$(function(){
			getReplyList();
			
			setInterval(function(){
				getReplyList();
			}, 10000);
		});
		
		// 댓글 등록 ajax
		$("#rSubmit").on("click", function(){
			var nContent = $("#rContent").val();
			var bNo = ${ suppot.bNo };
			
			$.ajax({
				url: "addReply.do",
				data: {nContent:nContent, bNo:bNo},
				type: "post",
				success: function(data){
					if(data == "success"){
		             	getReplyList();
						$("#rContent").val("");
					}
				}
			});
		});
		
		// 댓글 리스트 ajax
		function getReplyList(){
			var bNo = ${suppot.bNo};
			
			$.ajax({
				url: "rList.do",
				data: {bNo: bNo},
				dataType: "json",
				success: function(data){
					$tableBody = $("#rtb tbody");
					$tableBody.html("");
					
					var $tr;
					var $rWriter;
					var $rContent;
					var $rCreateDate;
					
					$("#rCount").text("댓글 (" + data.length + ")");
					
					if(data.length > 0){
						for(var i in data){
							$tr = $("<tr>");
							$rWriter = $("<td width = '100'>").text(data[i].rWriter);
							$rContent = $("<td>").text(decodeURIComponent(data[i].nContent.replace(/\+/g, " ")));
							$rCreateDate = $("<td width = '100'>").text(data[i].nCreate_Date);
							
							$tr.append($rWriter);
							$tr.append($rContent);
							$tr.append($rCreateDate);
							$tableBody.append($tr);
						}
					} else{
						$tr = $("<tr>");
						$rContent = $("<td colspan = '3'>").text("등록된 댓글이 없습니다.");
						$tr.append($rContent);
						$tableBody.append($tr);
					}
				}
			});
		}
		
		function popup(){
			var popupData = document.popupData;
			var url= "noteInsertForm.do";    //팝업창 페이지 URL
			var winWidth = 400;
		    var winHeight = 300;
		    var popupOption= "width="+winWidth+", height="+winHeight;    //팝업창 옵션(optoin)
		    
		    window.open("","noteInsertForm",popupOption);
		    
		    popupData.action = url;
		    popupData.target = "noteInsertForm";
		    popupData.submit();
			
		}
	</script>
</body>
<jsp:include page="../../../common/footer.jsp" />
</html>