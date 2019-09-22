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
/****************댓글 버튼 *******************/
#replyyy{
	width: 1200px;
	margin-right : auto;
	margin-left : auto;
}

#replyListArea{
	width : 1200px;
	margin-top : 15px;
	border-top : 2px solid rgb(230, 230, 230);
	margin-bottom: 20px;
}

#replyB{
	padding-top : 15px;
}

.replyList td{
	border-bottom : 1px solid rgb(240, 240, 240);
}

.applybtnArea > ul{
	margin-left: 650px;
}

.delBtn{
	margin-top : 20px;
}
.udBtn{
	margin-top : 20px;
}

#nContentText{
	width : 550px;
	resize : none;
	border : 1px solid white;
}


/********************like css*************************/
#likeArea{
	width: 50px;
	height : 50px;
	cursor : pointer;
}
#likeArea>img{
	width : 100%;
	height: 100%;
}

.joinButton{
	text-align: center;
	margin-top: 20px;
	padding-top : 20px;
}

.joinButton button{
	width : 20%;
	margin: 10px;
	padding: 10px 32px;
	font-size: 16px;
	cursor: pointer;
	background-color: white;
 	color: black;
  	border: 1px solid black;
  	transition-duration: 0.4s;
  	border-radius: 4px;
}

.joinButton button:hover{
	background-color: black;
  	color: white;
}


</style>
<jsp:include page="../../common/header.jsp"/>
</head>
<body>
	
	<div style="height:40px"></div>
	<form action="">
	<div style="margin:auto;">
	<div class="UNS">
	<table>
	<tr>
	<td>
	<input type="hidden" value="${revi.bNo}" name="bNo" id="bNo">
	<h2>${revi.bTitle}</h2>
	<span style="float:right;" id="likeArea" onclick="likeChange();"><img id="likeAreaImg" src="resources/images/main/unlike.png"></span>
	<button onclick="report();" id="reportbtn"><img src="resources/images/board/babymom/siren.png" style="width:20px; height:20px;">신고</button>
	</td>
	</tr>
	</table>
	</div>
	<div class="UNS" >
		<div class="_1f8P3">
			<div class="_2EG3w" style="width: 500px; height: 320px; padding-right:30px;">
				<img width="500px" height="320px" src="resources/images/reView/${revi.changeName }">
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
			<div class="joinbox" style="max-width: 90%; margin:auto" >
				<c:url var="reviewUpdateView" value="reviewUpdateView.do">
					<c:param name="bNo" value="${ revi.bNo }" />
					<c:param name="page" value="${ page }" />
				</c:url>
				<c:url var="reviewDelete" value="reviewDelete.do">
					<c:param name="bNo" value="${ revi.bNo }" />
					<c:param name="page" value="${ page }" />
				</c:url>
			</div>
		</c:if>
		
		<div class="both" ></div>	
		</div>	
		<div id="replyyy">
		<div id="userMemoArea">
					<table id="userMemoTable">
						<colgroup>
							<col width="20%">
							<col width="60%">
							<col width="20%">
						</colgroup>
						
						<tr class="userMemoTr">
							<th class="userMemoTh" style="font-size:18px;">댓글</th>
							<td class="userMemoTextTd"><textarea cols=100 rows=3 id=rContent style="resize: none;"></textarea></td>
	   						<td  style = "text-align: center;"><button id="rSubmit" class="inputbox02 btn btn-outline-dark">등록하기</button></td>
						</tr>
					</table>
				</div>
				
				<div id="replyListArea">
					<div id="replyB" style="font-size: 18px;">댓글목록 </div>
					<table class="memoTable" id="mtb">					
						<tbody class="replyList">
						   			
						</tbody>
					</table>
				</div> 
		 </div>
	 	

	<div class="both"></div>
	

   	
   	<div class="both"></div>
		<div class= "joinButton">
				<button type = "button" onclick ="location.href='${ reviewUpdateView }'">수정</button>
				<button type = "button" onclick="location.href='${ reviewDelete }'"">삭제</button>
				<button onclick="location.href='reViewList.do'">목록으로</button>
			</div>
			

</form>
<script type="text/javascript">
			function report() {
				var bNo = ${revi.bNo};
		window.open("openReport.do?bNo="+bNo, 'content', 'width=1024, height=600, menubar=no, status=no, toolbar=no ');
			}
		</script>
<script>
function back(){	  	   
	   location.href="reViewList.do"
	   }
</script>
<script>
	function getreplyList(){
		var bNo = '${revi.bNo}';
		console.log("ajax전" + bNo);
		$.ajax({
			url: "reply.do",
			data: {bNo:bNo},
			dataType: "json",
			success: function(data){
				$tableBody = $("#mtb tbody");
				$tableBody.html("");
				var $tr;
				var $rNum;
				var $rWriter;
				var $rContent;
				var $rCreateDate;
				var $delBtn;
				var $udBtn;
				
				$("#rCount").text("댓글 (" + data.length + ")");
				
				if(data.length > 0){
					for(var i in data){

						var content = decodeURIComponent(data[i].nContent.replace(/\+/g, " "));
						$tr = $("<tr class='replyTr'>");
						$rNum = $("<td style='display:none' id='rNumTd' name='rNum'>").text(data[i].rNum)
					    $rContent = $("<td width='700px'; height='70px'; background:'green' id='nContentTd'><input type='text' id='nContentText' readonly value="+content + ">")
					    $rCreateDate =  $("<td width='200'>").text(data[i].nCreate_Date);
					    $rWriter =  $("<td width='200'>").text(decodeURIComponent(data[i].rWriter.replace(/\+/g, " ")));
					    $udBtn = $("<td width='100'><button class='udBtn'id='udAreaBtn' onclick='updateReplyBtn(this);'>수정</button><button style='display:none'class='udBtn'id='udBtn' onclick='updateReply(this);'>확인</button></td>")

					    $delBtn = $("<td width='100'><button class='delBtn' onclick='deleteReply(this);'>삭제</button></td>")
					    $tr.append($rNum);
					    $tr.append($rWriter);
	   					$tr.append($rContent);
	   					$tr.append($rCreateDate);
	   					$tr.append($udBtn);
	   					$tr.append($delBtn);
	   					$tableBody.append($tr);
					}
				}
				else{
					$tr = $("<tr>");
					$rContent = $("<td colspan='3'>").text("등록된 댓글이 없습니다.");
		
			   	$tr.append($rContent);
				$tableBody.append($tr);
				}
			}
	 	});
	};

	$(function(){
	getreplyList();

	});

	function deleteReply(d){

		var userId = '${loginUser.userId}';
		var rNum = $(d).parent().siblings('#rNumTd').text();
		if (confirm("정말 삭제하시겠습니까??") == true){
			$.ajax({
				url: "deleteReply.do",
				data: {rNum : rNum,
					   userId : userId},
				dataType: "json",
				success: function(data){
					console.log(data);
					if(data > 0){
						getreplyList();
					}
					else{
						alert('댓글작성자만 삭제가능합니다.');
						getreplyList();
					}
				}
				
			})
		}

	}

	function updateReplyBtn(d){
		
		$(d).hide();
		$(d).siblings('#udBtn').show();
		
		$(d).parent().siblings('#nContentTd').children().removeAttr('readonly');
		$(d).parent().siblings('#nContentTd').children('#nContentText').focus();
	}
	function updateReply(d){
		var rNum = $(d).parent().siblings('#rNumTd').text();
		var userId = '${loginUser.userId}';
		var nContent = $(d).parent().siblings('#nContentTd').children('#nContentText').val();
		console.log(nContent);
		$(d).hide();
		$(d).siblings('#udBtn').show();
		$(d).parent().siblings('#nContentTd').children().attr('readonly');
		$.ajax({
			url: "updateReply.do",
			data: {rNum : rNum,
				   userId : userId,

				  nContent : nContent},
			dataType: "json",
			success: function(data){
				if(data > 0){
					getreplyList();
				}

				else{
					alert('댓글작성자만 수정할수있습니다.');
					getreplyList();
				}

			}
			
		})
		
	}

		
	$("#rSubmit").on("click", function(){
		var rContent = $("#rContent").val();
		var userId = '${loginUser.userId}';
		var bNo = '${revi.bNo}';
			
		$.ajax({
			url: "addReplyMH.do",
			data: {rContent:rContent, userId:userId, bNo:bNo},
			type: "post",
			success: function(data){
					
				if(data > 0){
					$("#rContent").val("");
					getreplyList();
				}
				else{
					alert("댓글등록에 실패했습니다.");
					$("#rContent").val("");
				}
					
			}
		});
	});	   	
	
	</script>
	<script>
(function(){
	var bNo = '${revi.bNo}';
	$.ajax({
		url: "likeCheck.do",
		dataType: "json",
		data: {bNo:bNo},
		success: function(data){
			console.log(data);
			if(data > 0){
				console.log("null 아님");
				$('#likeAreaImg').attr('src', 'resources/images/main/like.png')
			}
		}
	});
}());
</script>

<script>
	function likeChange(){
		var check = $('#likeAreaImg').attr('src');
		var bNo = '${revi.bNo}';
		console.log(bNo);
		if(check.match("un")){
			$.ajax({
				url: "likeAddBoard.do",
				data: {bNo:bNo},
				dataType: "json",
				success: function(data){
					console.log(data);
					if(data > 0){
						alert('좋아요를 누르셨습니다!');
						$('#likeAreaImg').attr('src', 'resources/images/main/like.png')
					}
				}
			});
		}
		if(!check.match("un")){
			$.ajax({
				url: "likeCancleBoard.do",
				data: {bNo:bNo},
				dataType: "json",
				success: function(data){
					console.log(data);
					if(data > 0){
						alert('좋아요를 취소하셨습니다!');
						$('#likeAreaImg').attr('src', 'resources/images/main/unlike.png')
					}
				}
			});
		}
		
	}
</script>



</body>
<jsp:include page="../../common/footer.jsp"/>
</html>