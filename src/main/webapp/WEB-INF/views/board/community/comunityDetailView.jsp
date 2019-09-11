
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"  %>
       <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
  <script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
  <link rel="stylesheet" href="resources/css/comunity/bootstrap.css">
<link rel="stylesheet" href="resources/css/comunity/_base.css">
<link rel="stylesheet" href="resources/css/comunity/_grid.css">
<link rel="stylesheet" href="resources/css/comunity/member.css">
<link rel="stylesheet" href="resources/css/comunity/xe.min.css">
<link rel="stylesheet" href="resources/css/comunity/font.css">
</head>

<style>

	li{
		display : inline-block;
		width : 80px;
	}
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


.content{width:100; margin-left:150px; margin-right:150px; margin-top: 30px; margin-bottom: 40px;}
.nanum_view{width:400px;margin-bottom:65px;margin:0 auto; margin-top:20px; }
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

.pnaw_box {
   width: 100%;
   margin: 10px 0;
   border: 1px solid #eee;
}

.pnaw_box th {
   width: 10%;
   padding: 20px;
   border: 1px solid #eee;
   font-size: 0.825em;
   font-weight: normal;
   background: pink;
}

.pnaw_box td {
   width: 75%;
   padding: 10px;
   border: 1px solid #eee;
   font-size: 13px;
   text-align: left;
   background:white;
}

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
</style>

<body>
	<jsp:include page="../../common/header.jsp"></jsp:include>

	<form action="comupView.do" method="post" enctype="Multipart/form-data">
				<h2 style="text-align:center; margin-top:30px;">정보공유 게시판</h2>
	<div class="both"></div>
	
	
		<div class="content">	
				
		
		 <table class="pnaw_box" summary="">
               <tbody>
              
                  <tr>
                     <th scope="row">제목</th>
                     <td class="pnawtd">
                    <input name="title" value="${ board123.bTitle }" class="inputTypeText" 
                     style='width: 80%;' maxLength="125" type="text" msg="제목을 입력해주세요." valch="yes" style="bor" readonly/>
							
						</td>	
                  </tr>
                  
                 	<tr>
                     <th scope="row">작성자</th>
                     <td class="pnawtd"><input name="mem_name" value="${board123.bWriter }" class="inputTypeText" maxLength="125" type="text" readonly></td>
                  </tr>
     
                  <tr>
                     <th scope="row">상세내용</th>
                     <td class="write pnawtd">
							<!-- textarea 읽기만 가능하게 하기!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
						
       				
			<%-- 			  <img src="resources/images/board/${board.changeName }" width="200" height="200">  --%> 
						
		
		
						
							<textarea name="content"style='width: 100%; height: 200px;'readonly>${board123.bContent } 
							</textarea>
						</td>
						
          
                  </tr>
                
               </tbody>
            </table>
            
            
		<div class="both" style="margin-top:40px; margin-bottom:30px;"></div>
			<div class="applybtnArea" style="max-width: 100%;">
               <ul class="ul01">
              
               <li>
					
               		<input class="inputbox02 btn btn-outline-dark" type="button" onclick="comup();" value="수정하기">
               </li>
             
                <li><input class="inputbox02 btn btn-outline-dark" type="button" value="삭제하기" onclick="deleteBoard();"></li>
    
                	<li><input class="inputbox02 btn btn-outline-dark" type="button" value="목록으로" onclick="menulo()"></li>
					
               </ul>
            </div>
		<script type="text/javascript">
			function comup(){
				location.href="${comup}"
			}
		</script>
		<div class="both"></div>
		
			
			
		</div>
		</form>
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
	
	 <p align="center">
      <button onclick="location.href='home.do'" class="inputbox02 btn btn-outline-dark" style="margin-right:15px;">시작 페이지로 이동</button>
      <button onclick="location.href='${ blist }'" class="inputbox02 btn btn-outline-dark">목록 보기로 이동</button>
   </p>
   	
   	<div class="both"></div>

	  <jsp:include page="../../common/footer.jsp"></jsp:include>
	  
</body>

<script>
function getreplyList(){
	var bNo = '${board123.bNo}';
	console.log("ajax전" + bNo);
	$.ajax({
		url: "reply.do",
		data: {bNo:bNo},
		dataType: "json",
		success: function(data){
			$tableBody = $("#mtb tbody");
			$tableBody.html("");
			var $tr;
			var $rWriter;
			var $rContent;
			var $rCreateDate;
			
			$("#rCount").text("댓글 (" + data.length + ")");
			
			if(data.length > 0){
				for(var i in data){
					$tr = $("<tr>");
				    $rContent = $("<td width='700px'; height='70px'; background:'green'>").text(decodeURIComponent(data[i].nContent.replace(/\+/g, " ")));
				    $rCreateDate =  $("<td width='200'>").text(data[i].nCreate_Date);
				    $rWriter =  $("<td width='200'>").text(data[i].rWriter);
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
};

$(function(){
getreplyList();

});

	
$("#rSubmit").on("click", function(){
	var rContent = $("#rContent").val();
	var userId = '${m.userId}';
	var bNo = '${board123.bNo}';
		
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