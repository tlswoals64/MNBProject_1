<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<script type="text/javascript" src="resources/js/jquery-3.4.1.min.js"></script>
<html>
<style>
	*{
		margin : 0px;
	}
	nav{
		float: left;
		background-color: #01A9DB;
		width : 120px;
		height : 1500px;
	}
	
	/*********************header*********************/
	#header{
		height : 45px;
		background : #585858;
		color : white;
		padding-top : 7px;
		
	}
	b{
		font-size : 24px;
		font-weight : 800;
		margin-left : 15px;
	}
	
	.buttonArea{
		display : inline-block; 
		width : 1400px;
	}
	
	.homBtn{
		margin-left : 1100px;
		background : #01A9DB;
		font-weight : 700;
		border : 3px solid #01A9DB;
		width : 100px;
		height : 30px;
		font-size : 18px;
		
	}
	.logOutBtn{
		background : white;
		font-weight : 700;
		border : 3px solid white;
		width : 100px;
		height : 30px;
		color : #585858;
		font-size : 17px;
	}
	/***********************************************/
	
	/******************** nav **********************/
	.menu div{
		cursor:pointer;
		text-align : center;
	}
	
	#userM{
		display : inline-block;
		width : 100%;
		margin-left : auto;
		margin-right : auto;
	}
	#userMb{
		margin-left : 3%;
		font-weight : 800;
		color : white;
		font-size : 17px;
	}
	#boardM{
		display : inline-block;
		width : 100%;
		margin-left : auto;
		margin-right : auto;
		text-align: center;
	}
	#boardMb{
		margin-left : 1%;
		font-weight : 800;
		color : white;
		font-size : 17px;
	}
    .menu .hide{display:none;}
    .menu{
    	margin-left : 5px;
    	margin-right : 5px;
    	margin-top : 8px;
    	margin-bottom : 8px;
    	list-style:none;
    	border-bottom : 3px solid #0489B1;
    }
    
    .memuImg{
    	width : 70%;
    	height : 70%;
    	padding-top : 10px;
    	padding-bottom : 20px;
    	padding-right : 10px;
    	margin-left : 10px;
    }
    
    .memuImg>img{
    	width : 100%;
    	height : 100%;
    }
    
    li{
    	list-style:none;
    	padding-left:0px;
    }
    ul{
    	
    	padding-left:0px;
    }
    
    .menuUl{
    	width : 100%;
    }
	/***********************************************/
	
	/************************nav2****************************/
	.navArea2{
		width : 280px;
		background : #0B4C5F;
	}
	
	#deListB{
		font-size : 27px;
		font-weight : 900;
		margin-left : 15px;
		width : 1600px;
		padding-top : 10px;
		padding-bottom : 10px;
		border-bottom : 3px solid black;
	}
	#amountUser{
		font-size : 18px;
		color : #01A9DB;
		
	}
	
	#boardMbar{
		display:none;
		cursor:pointer;
		text-align : center;
	}
	
	#userMbar{
		cursor:pointer;
		text-align : center;
	}
	
	.nav2Menu{
		height : 70px;
		font-size : 20px;
		font-weight : 900;
		color : white;
		padding-top : 20px;
		border-bottom : 3px solid #086A87;
		padding-bottom : 19px;
		margin-left : 20px;
		margin-right : 20px;
	}
	/********************************************************/
	
	/**************************content*************************/
	.content{
		margin-left : 400px;
		height : 100vh;
	}
	
	#faq_selectOption{
		height : 30px;
		width : 300px;
	}
	
	
	#fTitle{
		width : 1077px;
		height : 40px;
		border : 2px solid rgb(248,248,248);
	}
	
	input, textArea:focus{
		outline : none;
	}
	.qnaTable{
		margin-top : 50px;
		margin-left : 50px;
		border : 2px solid #01A9DB;

		border-collapse: separate;
		border-spacing: 0 10px;
		padding-left : 10px;
		padding-right : 10px;
		
	}
	.qnaTh{
		text-align : center;
		font-size : 18px;
		height : 50px;
		margin-top : 20px;
	}
	
	.qnaTd{

		font-size : 17px;
		padding-left : 10px;
	}
	
	#firstArea{
		background : #CEE3F6;
	}
	
	#contentArea > td{
		border-top : 2px solid rgb(220,220,220);
	}
	#contentArea > th{
		border-top : 2px solid rgb(220,220,220);
		
	}
	#replyArea{
		background : rgb(248,248,248);
		
	}
	

	
	#typeArea{
		width : 70px;
		
	}
	
	#userIdArea, #writeDateArea{
		width : 80px;
	}
	
	.qnaRely{
		width : 1077px;
		margin-top : 10px;
		resize : none;
		border : 2px solid rgb(248,248,248);
		font-size : 17px;
		text-aling : left;
	}
	#replyTd{
		border-top : 2px solid white;
	}
	
	#qnaContent{
		width : 1020px;
		height : 300px;
		margin-top : 30px;
		
		
	}
	
	.repTable{
		border : 3px solid #01A9DB;
		border-top : 3px solid white;
		
	}
	.repTh{
		text-align : center;
		font-size : 18px;
		height : 50px;
		width : 70px;
		margin-top : 20px;
	}
	
	/********************** 버튼 *****************************/
	.btn{
		display : inline-block;
		height : 40px;
		width : 100px;
	}
	
	#applyBtn{
		border : 2px solid #CEE3F6;
	    background : #CEE3F6;
	    font-szie : 18px;
	    font-weight: bold;
	}
	
	#cancleBtn{
		border : 2px solid #CEE3F6;
		
	}
	
	.btnArea{
		margin-left : 500px;
		margin-top : 15px;
		padding-bottom : 15px;
	}
	/*******************************************************/
	#bTitle{
		width : 1077px;
		height : 40px;
		border : 2px solid rgb(248,248,248);
	}
	
	#replyyy {
	width: 1200px;
	margin-left: 50px;
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

#nContentText{
	width : 550px;
	resize : none;
	border : 1px solid white;
}

</style>
<head>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="header">
		<b>MnB(Mom And Bebe) 관리자 홈페이지</b>
		<div class="buttonArea">
			<button type="button" class="homBtn" onclick="location.href='managerMainHome.do'">home</button>
			<button type="button" class="logOutBtn" onclick="location.href='logout.do'">로그아웃</button>
		</div>
	</div>
	<div class="wrap">
		<nav class="navArea">
			<div>
				 <ul class="menuUl">
	        		<li class="menu">
	           		 	<div id="userM"><img class="memuImg" src="resources/images/manager/user.png"><div id="userMb">회원 관리</div></div>
	       			 </li>
	 
			        <li class="menu">
			            <div id="boardM"><img class="memuImg" src="resources/images/manager/statement.png"><div id="boardMb">게시판 관리</div></div>
			        </li>
			    </ul>
			</div>
		</nav>
		<nav class="navArea2">
			<div id="userMbar">
				 <ul class="nav2MenuUl">
	        		<li class="nav2Menu">
	        			<div id="userMa" onclick="location.href='mManaList.do'">회원 관리</div>
	       			 </li>
			        <li class="nav2Menu">
			        	<div id="userLevel" onclick="location.href='mLevelList.do'">회원 등급</div>
			        </li>
			    </ul>
			</div>
			
			<div id="boardMbar">
				 <ul class="nav2MenuUl">
	        		<li class="nav2Menu">
	        			<div id="boardMbb" onclick="location.href='mDeList.do'">신고게시판</div>
	       			 </li>
			        <li class="nav2Menu">
			        	<div id="boardQnA" onclick="location.href='mQnaList.do'">QnA게시판</div>
			        </li>
			         <li class="nav2Menu">
			        	<div id="boardFaQ" onclick="location.href='mFaqList.do'">FAQ게시판</div>
			        </li>
			        <li class="nav2Menu">
			        	<div id="boardPro" onclick="location.href='mNoticeList.do'">공지사항</div>
			        </li>
			    </ul>
			</div>
		</nav>	
		
		<div class="content">
			<div id="deListB">공지사항 게시판</div>
			<form action="mNoticeUpdateView.do" method="post">
				<table class="qnaTable">
				<tr class="qnaTr" id="firstArea">
					<th class="qnaTh" id="typeArea">글번호</th>
					<td class="qnaTd" id="type" name="bNo">
						<input type="hidden" name="bNo" value="${ b.bNo }">
						${ b.bNo }
					</td>
					<th class="qnaTh" id="typeArea">작성자</th>
					<td class="qnaTd" id="bWriter">
						<input type="hidden" name="bWriter" value="${ b.bWriter }">
						${ b.bWriter }
					</td>
					
					<th class="qnaTh" id="typeArea">조회수</th>
					<td class="qnaTd" id="bCount">
						<input type="hidden" name="bCount" value="${ b.bCount }">
						${ b.bCount }
					</td>
					
					<th class="qnaTh" id="typeArea">작성일</th>
					<td class="qnaTd" id="b_ModifyDate">
						<input type="hidden" name="b_CreateDate" value="${ b.b_CreateDate }">
						${ b.b_CreateDate }
					</td>
				</tr>
				
				<tr class="qnaTr" id="titleArea">
					<th class="qnaTh" colspan="1">제목</th>
					<td class="qnaTd" colspan="7"><input type="text" id="bTitle" name="bTitle" value="${ b.bTitle }" readonly></td>
				</tr>
				
				<tr class="qnaTr" id="contentArea">
					<th class="qnaTh" colspan="1">
						내용
					</th>
					<td class="qnaTd" colspan="7">
						<textarea class="qnaRely" rows="30" name="bContent" id="pReContent" readonly>${ b.bContent }</textarea>
					</td>
				</tr>
				
			</table>
			
				<div class="btnArea">
					<button type="submit" class="btn" id="applyBtn">수정</button>
					<button type="button" class="btn" id="cancleBtn" onclick="mFaQdelete();">삭제</button>
					<div class="btn" id="cancleBtn" onclick="location.href='mNoticeList.do'">목록</div>
				</div>
		</form>
			


		<div id="replyyy" style="display:inline-block;" >
		<div id="userMemoArea" style="display:inline-block;">
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
				
				<div id="replyListArea" style="display:inline-block;">
					<div id="replyB" style="font-size: 18px;">댓글목록 </div>
					<table class="memoTable" id="mtb">					
						<tbody class="replyList">
						   			
						</tbody>
					</table>
				</div> 
		 </div>
	</div>
		
	</div>
</body>
<script>
    $(document).ready(function(){
        $(".menu>div").click(function(){
        	var id_check = $(this).attr("id");
        	if(id_check == "userM"){
        		$("#userMbar").show();
        		$("#boardMbar").hide();	
        	}
        	if(id_check == "boardM"){
        		$("#boardMbar").show();	
        		$("#userMbar").hide();
        	}
            
        });
    });
</script>

<script>
	function mFaQdelete(){
		var bNo = '${ b.bNo }';
		if (confirm("정말 삭제하시겠습니까??") == true){    //확인
			location.href="mNoticedelete.do?bNo=" + bNo;
		}
	}
</script>
<script>
function getreplyList(){
	var bNo = '${b.bNo}';
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
	var userId = 'admin';
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
	var userId = 'admin';
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
	var userId = '${m.userId}';
	var bNo = '${b.bNo}';
		
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

</html>