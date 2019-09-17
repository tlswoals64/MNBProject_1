<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
  <script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
</head>

<style>
	td.small {
		text-align:center;
		cursor:pointer;
		width:150px;
	}
	td.small a img {
		border:none;
		margin:10px;
		width:60px;
		height:60px;
	}
	td.small p{font-weight:bold;}
	.large {width:480px; text-align:center;}
	.hover {background-color:powderblue;}
	
	
	@charset "utf-8";

@import url('font.css');

body {margin:0;padding:0;  text-decoration:none; font-family:"NanumSquare","NanumMyeongjo","malgun","나눔고딕", "NanumGothic", "돋움", "Dotum", "굴림", "Gulim", "Sans-serif","Roboto"; font-size:13px; letter-spacing:-1px; background:#fff;line-height:160%}
div,ul,ol,li,h1,h2,h3,h4,h5,h6,form,fieldset,input,textarea,p,th,td,dd,dl {margin:0;padding:0;}
html{ }
img{border:0; vertical-align:middle;}
ul{list-style:none;}
li{list-style:none;}
a {text-decoration:none;color:#000;cursor:pointer;}
a:link, a:visited {text-decoration:none;color:#000;}
a:hover, a:focus, a:active{background:none;text-decoration:none;}
.both {height: 0;
    clear: both;
    visibility: hidden;
    margin: 0px;
    padding: 0px;}


.content{width:100%}
.nanum_view{width:1200px;margin-bottom:65px;margin:0 auto; margin-top:20px; }
.nanum_view > ul > li {float:left; border:1px solid #dfdfdf; min-height:400px;}
.nanum_view > ul > li:first-child {width:41.6%; margin-right:36.8px }
.nanum_view > ul > li:nth-child(2) {width:55%; margin-right:0;}

.nanum_content{width:1200px;margin-bottom:65px; margin:0 auto; margin-top:20px;  border:1px solid #dfdfdf; min-height:400px; padding:10px;}

.replyArea {width:1200px; margin-bottom:65px; margin:0 auto; margin-top:20px; }
.replyArea h2 {pont-size:12px; border-bottom:2px solid #dfdfdf; padding-bottom:10px;}
.replyArea td {}


/*상품명 상품소개등등*/
.product_info {padding:10px;min-height: 486px;}
.product_info h2 {font-size:20px;margin-bottom:20px;}
.product_info ul li {float:left;margin-bottom:20px;margin-right:20px;}
.product_info > ul > .pro_title {margin-right:30px;font-weight:bold;}
.info_txt {border:1px dashed #7a8799; padding:10px; background-color:#ededed;margin-top:30px}
.info_txt  span {background:url('resources/images/board/icn_notice.png') no-repeat;padding-left:25px; color:#FF0000}
.order_txt {margin-top:20px;}


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
							<th colspan ="5">
								<img src="resources/images/board/${ board[0].changeName }" width="480" height="380" class="large" />
							</th>
						</tr>
						<tr>
							<td class="small">
								<a href="resources/images/board/${ board[0].changeName }"><img src="resources/images/board/${ board[0].changeName }" width="480" height="380"/></a>
								<p>사진1<br>
							</td>	
							<td class="small">
								<a href="resources/images/board/${ board[1].changeName }"><img src="resources/images/board/${ board[1].changeName }" width="480" height="380"/></a>
								<p>사진2<br>
							</td>
							<td class="small">
								<a href="resources/images/board/${ board[2].changeName }"><img src="resources/images/board/${ board[2].changeName }" width="480" height="380"/></a>
								<p>사진3<br>
							</td>
							<td class="small">
								<a href="resources/images/board/${ board[3].changeName }"><img src="resources/images/board/${ board[3].changeName }" width="480" height="380"/></a>
								<p>사진4<br>
							</td>
						</tr>
					</table>
						<script>
		var src = "";
		$(function () {
			$('.small').find('img').hover(function () {
				src = $(this).attr('src');
				$('.large').fadeOut(0);
				$('.large').attr('src', src).fadeIn(2000);
			}, function () {
				$('.large').stop().fadeIn();
			});
		});
	</script>
				</li>
				
		<li>
			<div class="product_info">
				<h2>상품안내
				<span style="float:right;"><img src="resources/images/board/singo.png"></span></h2>
				<ul>
					<li class="pro_title">제목</li>
					<li> ${ board[0].bTitle }</li>
				</ul>
				<p class="both"></p>
				<ul>
					<li class="pro_title">작성자</li>
					<li> ${ board[0].bWriter }</li>
				</ul>
				<p class="both"></p>
				<ul>
					<li class="pro_title">작성날짜</li>
					<li>${ board[0].upload_Date }</li>
				</ul>
				<p class="both"></p>
				<p class="info_txt"><span>직접거래시 아래 사항에 유의해주세요.</span><br>
				불확실한 판매자(본인 미인증, 해외IP, 사기의심 전화번호)의 물건은 구매하지 말아주세요.<br>
				판매자와의 연락은 메신저보다는 전화, 메일 등을 이용하시고 개인정보 유출에 주의하세요.<br>
				계좌이체 시 선입금을 유도할 경우 안전한 거래인지 다시 한 번 확인해주세요.</p>

				<p class="order_txt">* 거래전 필독! 주의하세요!<br>
* 연락처가 없이 외부링크, 카카오톡, 댓글로만 거래할 때<br>
* 연락처 및 계좌번호를 사이버캅과 더치트로 꼭 조회해보기<br>
* 업체인 척 위장하여 신분증과 사업자등록증을 보내는 경우<br>
* 고가의 물품(휴대폰,전자기기)등만 판매하고 최근(1주일 내) 게시글만 있을 때<br>
* 해외직구로 면세받은 물품을 판매하는 행위는 불법입니다.</p>
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
		
			<div class = "replyArea">
			<div class = "replyWriterArea">
			
			<div class = "replySelectArea">
			 <table class="replyTable" id="rtb">
			<h2> 댓글 </h2>			
	   		<thead>
	   			<tr><td colspan="2">
	   				<b id="rCount"></b>
	   			</tr>
	   		</thead>
	   		<tbody>
	   			
	   		</tbody>
	   </table>
			 	<table id = "replySelectTable">
					
							<tr>
								<td style="width:100px; font-size:20px;padding-top:10px;">${rWriter}</td> 
								<td style="width:200px; font-size:20px;padding-top:10px;">${nCreate_Date}</td>
							</tr>
							<tr>
								<td style="width:600px;text-align: left; padding-left: 20px; font-size:15px; padding-top: 5px;">${nContent}</td>
							</tr>
						
					
					
				</table> 
			</div>

	
	   	

				<div class="comment_wrap">
					<div class="comment_text"	>
						<textarea id="replyContent" rows="3" cols="80" class="form-control" placeholder="댓글을 입력하세요." style="width: 750px;height: 90px; margin:0 auto; margin-top: 20px;display: inline-block; resize: none;position:relative; box-shadow: -1px 0px 15px 1px #9d9a9a;"></textarea>
						<input type="button" id="addReply" style="width:100px; height:90px;color:#000; background-color:#FFC0CB;border:0;position: absolute;left: 1105px; margin-top: 20px;" value="댓글쓰기">
					</div>
				</div>
				
			</div>
			
			
		</div>
			
		</div>
		
		<div class="both"></div>
	
	    <c:url var="updateNanumView" value="nanumUpdateView.do">
         <c:param name="bNo" value="${ board[0].bNo }"/><!--  -->
        <%--  <c:param name="page" value="${ page }"/> --%>
      </c:url>
      <c:url var="deleteNanumView" value="deleteNanumBoard.do">
         <c:param name="bNo" value="${ board[0].bNo }"/>
      </c:url>	
      <c:url var="nBoard" value="nBoard.do"> 
         <c:param name="page" value="${ page }"/>
      </c:url> 
      <!-- 인덱스 번호좀 생각하셈 씨벌새i -->

		
		<script>
	   	$(function(){
	   		getReplyList();
	   			
	   		setInterval(function(){
	   			getReplyList();
	   		}, 10000);
	   	});
	  
	 	$("#addReply").on("click", function(){
	   		var nContent = $("#replyContent").val();
	   		var refBno = ${board[0].bNo};
	   		 
	   		 $.ajax({
	   			url: "addNanumReply.do",
	   			data: {nContent:nContent, bNo:refBno},
	   			type: "get",
	   			success: function(data){
	   				
	   				if(data == "success"){
	   					$("#replyContent").val("");
	   					getReplyList();
	   				} 
	   				else{
	   					alert("댓글등록에 실패했습니다.");
	   					$("#replyContent").val("");
	   				}
	   				
	   			}
	   		}); 
	   	}); 
	 	
	  	// 댓글 리스트 ajax
	   	function getReplyList(){
	   		var bNo = ${board[0].bNo};
	   		$.ajax({
	   			url: "rNanumList.do",
	   			data: {bNo:bNo},
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
	   						$rWriter =  $("<td width='100'>").text(data[i].rWriter);
	   					    $rContent = $("<td>").text(decodeURIComponent(data[i].nContent.replace(/\+/g, " ")));
	   					    $rCreateDate =  $("<td width='100'>").text(data[i].nCreate_Date);
	   					    
	   					    $tr.append($rWriter);
		   					$tr.append($rContent);
		   					$tr.append($rCreateDate);
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
	   	}
	 	 
	 	</script>
	 	

	<div class="both"></div>
	    <c:if test="${ loginUser.userId eq board[0].bWriter }"> 
	<p align="center">
            <button onclick="location.href='${ updateNanumView }'" >수정하기</button>
            <button onclick="location.href='${ deleteNanumView }'">삭제하기</button>
 	</p>
      </c:if>   
	 <c:if test="${ loginUser.userId ne board[0].bWriter }"> 
	 <p align="center">
	 
      <button onclick="location.href=' index.jsp '">시작 페이지로 이동</button>
      <button onclick="location.href=' views/board/community/nanumView.jsp'">목록 보기로 이동</button>
   </p>
   </c:if>
   	
   	<div class="both"></div>

	  <jsp:include page="../../common/footer.jsp"></jsp:include>
	  
</body>
</html>