<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
</head>

<style>
td.small {
	text-align: center;
	cursor: pointer;
	width: 150px;
}

td.small a img {
	border: none;
	margin: 10px;
	width: 60px;
	height: 60px;
}

td.small p {
	font-weight: bold;
}

.large {
	width: 480px;
	text-align: center;
}

.hover {
	background-color: powderblue;
}

@charset "utf-8";

@import url('font.css');

body {
	margin: 0;
	padding: 0;
	text-decoration: none;
	font-family: "NanumSquare", "NanumMyeongjo", "malgun", "나눔고딕",
		"NanumGothic", "돋움", "Dotum", "굴림", "Gulim", "Sans-serif", "Roboto";
	font-size: 13px;
	letter-spacing: -1px;
	background: #fff;
	line-height: 160%
}

div, ul, ol, li, h1, h2, h3, h4, h5, h6, form, fieldset, input, textarea,
	p, th, td, dd, dl {
	margin: 0;
	padding: 0;
}

html {
	
}

img {
	border: 0;
	vertical-align: middle;
}

ul {
	list-style: none;
}

li {
	list-style: none;
}

a {
	text-decoration: none;
	color: #000;
	cursor: pointer;
}

a:link, a:visited {
	text-decoration: none;
	color: #000;
}

a:hover, a:focus, a:active {
	background: none;
	text-decoration: none;
}

.both {
	height: 0;
	clear: both;
	visibility: hidden;
	margin: 0px;
	padding: 0px;
}

.content {
	width: 100%
}

.nanum_view {
	width: 1200px;
	margin-bottom: 65px;
	margin: 0 auto;
	margin-top: 20px;
}

.nanum_view>ul>li {
	float: left;
	border: 1px solid #dfdfdf;
	min-height: 400px;
}

.nanum_view>ul>li:first-child {
	width: 41.6%;
	margin-right: 36.8px
}

.nanum_view>ul>li:nth-child(2) {
	width: 55%;
	margin-right: 0;
}

.nanum_content {
	width: 1200px;
	margin-bottom: 65px;
	margin: 0 auto;
	margin-top: 20px;
	border: 1px solid #dfdfdf;
	min-height: 400px;
	padding: 10px;
}

/* .replyArea {width:1200px; margin-bottom:65px; margin:0 auto; margin-top:20px; }
.replyArea h2 {pont-size:12px; border-bottom:2px solid #dfdfdf; padding-bottom:10px;}
.replyArea td {} */
/****************댓글 버튼 *******************/
#replyyy {
	width: 1200px;
	margin-right: auto;
	margin-left: auto;
}

#replyListArea {
	width: 1200px;
	margin-top: 15px;
	border-top: 2px solid rgb(230, 230, 230);
	margin-bottom: 20px;
}

#replyB {
	padding-top: 15px;
}

.replyList td {
	border-bottom: 1px solid rgb(240, 240, 240);
}

.applybtnArea>ul {
	margin-left: 650px;
}

.delBtn {
	margin-top: 20px;
}

.udBtn {
	margin-top: 20px;
}

#nContentText {
	width: 550px;
	resize: none;
	border: 1px solid white;
}

/*상품명 상품소개등등*/
.product_info {
	padding: 10px;
	min-height: 486px;
}

.product_info h2 {
	font-size: 20px;
	margin-bottom: 20px;
}

.product_info ul li {
	float: left;
	margin-bottom: 20px;
	margin-right: 20px;
}

.product_info>ul>.pro_title {
	margin-right: 30px;
	font-weight: bold;
}

.info_txt {
	border: 1px dashed #7a8799;
	padding: 10px;
	background-color: #ededed;
	margin-top: 30px
}

.info_txt  span {
	background: url('resources/images/board/icn_notice.png') no-repeat;
	padding-left: 25px;
	color: #FF0000
}

.order_txt {
	margin-top: 20px;
}

#likeArea {
	width: 50px;
	height: 50px;
	cursor: pointer;
}

#likeArea>img {
	width: 100%;
	height: 100%;
}
</style>

<body>
	<jsp:include page="../../common/header.jsp"></jsp:include>


	<div class="both"></div>


	<div class="content">
		<div class="nanum_view">
			<ul>
				<li>
					<table>
						<tr>
							<th colspan="5"><img
								src="resources/images/board/${ board[0].changeName }"
								width="480" height="380" class="large" /></th>
						</tr>
						<tr>
							<c:forEach var="nanumImg" items="${ board }">
								<td class="small"><a
									href="resources/images/board/${ nanumImg.changeName }"><img
										src="resources/images/board/${ nanumImg.changeName }"
										width="480" height="380" /></a>
									<p>
										사진<br></td>
							</c:forEach>
						</tr>
					</table> <script>
						var src = "";
						$(function() {
							$('.small').find('img').hover(function() {
								src = $(this).attr('src');
								$('.large').fadeOut(0);
								$('.large').attr('src', src).fadeIn(2000);
							}, function() {
								$('.large').stop().fadeIn();
							});
						});
					</script>
				</li>

				<li>
					<div class="product_info">
						<h2>
							상품안내 <span style="float: right;" id="likeArea"
								onclick="likeChange();"><img id="likeAreaImg"
								src="resources/images/main/unlike.png"></span>
						</h2>
						<ul>
							<li class="pro_title">제목</li>
							<li>${ board[0].bTitle }</li>
						</ul>
						<p class="both"></p>
						<ul>
							<li class="pro_title">작성자</li>
							<li>${ board[0].nickName }</li>
						</ul>
						<p class="both"></p>
						<ul>
							<li class="pro_title">작성날짜</li>
							<li>${ board[0].upload_Date }</li>
						</ul>
						<p class="both"></p>
						<!-- <span style="float: right;"><img
							src="resources/images/board/singo.png" ></span> -->
						<button type="button" onclick="report();" id="singotbtn" style=" float:right;"><img src="resources/images/board/babymom/siren.png" style=" width:20px; height:20px;">신고</button>	
						</button>
						<p class="info_txt">
							<span>직접거래시 아래 사항에 유의해주세요.</span><br> 불확실한 판매자(본인 미인증, 해외IP,
							사기의심 전화번호)의 물건은 구매하지 말아주세요.<br> 판매자와의 연락은 메신저보다는 전화, 메일 등을
							이용하시고 개인정보 유출에 주의하세요.<br> 계좌이체 시 선입금을 유도할 경우 안전한 거래인지 다시 한 번
							확인해주세요.
						</p>

						<p class="order_txt">
							* 거래전 필독! 주의하세요!<br> * 연락처가 없이 외부링크, 카카오톡, 댓글로만 거래할 때<br>
							* 연락처 및 계좌번호를 사이버캅과 더치트로 꼭 조회해보기<br> * 업체인 척 위장하여 신분증과
							사업자등록증을 보내는 경우<br> * 고가의 물품(휴대폰,전자기기)등만 판매하고 최근(1주일 내) 게시글만
							있을 때<br> * 해외직구로 면세받은 물품을 판매하는 행위는 불법입니다.
						</p>
						<button onclick="popup();" id="reportbtn" style="float: right;"><img src="resources/images/babySitter/note.png"style="width: 40px; height: 40px;">쪽지
					</div>
				</li>


			</ul>
		</div>


		<div class="both"></div>


		<div class="nanum_content">
			<ul>
				<li>${ board[0].bContent }</li>
			</ul>
		</div>

		<div class="both"></div>

		<div id="replyyy">
			<div id="userMemoArea">
				<table id="userMemoTable">
					<colgroup>
						<col width="20%">
						<col width="60%">
						<col width="20%">
					</colgroup>

					<tr class="userMemoTr">
						<th class="userMemoTh" style="font-size: 18px;">댓글</th>
						<td class="userMemoTextTd"><textarea cols=100 rows=3
								id=rContent style="resize: none;"></textarea></td>
						<td style="text-align: center;"><button id="rSubmit"
								class="inputbox02 btn btn-outline-dark">등록하기</button></td>
					</tr>
				</table>
			</div>

			<div id="replyListArea">
				<div id="replyB" style="font-size: 18px;">댓글목록</div>
				<table class="memoTable" id="mtb">
					<tbody class="replyList">

					</tbody>
				</table>
			</div>
		</div>


		<div class="both"></div>

		<c:url var="updateNanumView" value="nanumUpdateView.do">
			<c:param name="bNo" value="${ board[0].bNo }" />
			<!--  -->
			<%--  <c:param name="page" value="${ page }"/> --%>
		</c:url>
		<c:url var="deleteNanumView" value="deleteNanumBoard.do">
			<c:param name="bNo" value="${ board[0].bNo }" />
		</c:url>
		<c:url var="nBoard" value="nBoard.do">
			<c:param name="page" value="${ page }" />
		</c:url>



<script>
function getreplyList(){
	var bNo = '${board[0].bNo}';
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

function report() {
	var bNo = ${board[0].bNo};


	
	window.open("openReport.do?bNo="+bNo, 'content', 'width=1024, height=600, menubar=no, status=no, toolbar=no ');
}

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
	var bNo = '${board[0].bNo}';
		
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

	
<div class="both"></div> <c:if
					test="${ loginUser.userId eq board[0].bWriter }"> 
	<p align="center">
            <button onclick="location.href='${ updateNanumView }'">수정하기</button>
            <button onclick="location.href='${ deleteNanumView }'">삭제하기</button>
 	</p>
      </c:if>
	 <c:if test="${ loginUser.userId ne board[0].bWriter }"> 
	 <p align="center">
	 
<!--      <button onclick="location.href=' index.jsp '">시작 페이지로 이동</button> -->
          
					<li style="text-align:center;"><input
						class="inputbox02 btn btn-outline-dark"
						style="width:130px; height:25px;" type="button" value="목록으로"
						onclick="listGo()"></li>
   </p>
   </c:if>
   	<script>
					function listGo() {
						location.href = 'nBoard.do'
					}
				</script>
   	<div class="both"></div>

	  <jsp:include page="../../common/footer.jsp"></jsp:include>
	  
	  	<div class="popup">
		<!-- 팝업창으로 보내줄 정보 -->
		<form name="popupData" id="popupData" method="post">
			<input type="hidden" name="bWriter" value="${ board[0].nickName }">
		</form>
	</div>

			</body>

<script>
	(function() {
		var bNo = '${board[0].bNo}';
		$.ajax({
			url : "likeCheck.do",
			data : {
				bNo : bNo
			},
			dataType : "json",
			success : function(data) {
				console.log(data);
				if (data > 0) {
					console.log("null 아님");
					$('#likeAreaImg').attr('src',
							'resources/images/main/like.png')
				}
			}
		});
	}());
</script>

<script>
	function likeChange() {
		var check = $('#likeAreaImg').attr('src');
		var bNo = '${board[0].bNo}';
		console.log(bNo);
		if (check.match("un")) {
			$.ajax({
				url : "likeAddBoard.do",
				data : {
					bNo : bNo
				},
				dataType : "json",
				success : function(data) {
					console.log(data);
					if (data > 0) {
						alert('좋아요를 누르셨습니다!');
						$('#likeAreaImg').attr('src',
								'resources/images/main/like.png')
					}
				}
			});
		}
		if (!check.match("un")) {
			$.ajax({
				url : "likeCancleBoard.do",
				data : {
					bNo : bNo
				},
				dataType : "json",
				success : function(data) {
					console.log(data);
					if (data > 0) {
						alert('좋아요를 취소하셨습니다!');
						$('#likeAreaImg').attr('src',
								'resources/images/main/unlike.png')
					}
				}
			});
		}

	}
</script>
<script>
	function popup() {
		var popupData = document.popupData;
		var url = "noteInsertForm.do"; //팝업창 페이지 URL
		var winWidth = 759;
		var winHeight = 341;
		var popupOption = "width=" + winWidth + ", height=" + winHeight; //팝업창 옵션(optoin)

		window.open("", "noteInsertForm", popupOption);

		popupData.action = url;
		popupData.target = "noteInsertForm";
		popupData.submit();
	}
</script>
</html>