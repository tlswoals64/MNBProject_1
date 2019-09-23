
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
.bsaImgArea{
      padding-left : 20px;
      width : 100px;
      height : 100px;
      display : inline-block;
   }
   .bsaImgArea >img{
      width : 100%;
      height : 100%;
   }

</style>

<body>
	<jsp:include page="../../common/header.jsp"></jsp:include>

	
				<h2 style="text-align:center; margin-top:30px;">문의사항 게시판</h2>
	<div class="both"></div>
	
	
		<div class="content">	
		
		 <table class="pnaw_box" summary="">
	
               <tbody>
              		<tr>
              			<th scope="row">분류</th>
                     <td class="pnawtd">
                     
                    <div name="title" class="inputTypeText" style="width: 80%;"> ${ ptty } </div>	
						</td>
              		</tr>
                  <tr>
                     <th scope="row">제목</th>
                     <td class="pnawtd">
                    <div name="title"  class="inputTypeText" 
                     style='width: 80%;'>${board123.bTitle }</div>
					<input type="hidden"  name = "bNo" value="${baord123.pNo }">		
						</td>	
                  </tr>
                  
                 	<tr>
                     <th scope="row">작성자</th>
                     <td class="pnawtd">
                     <div name="mem_name"  class="inputTypeText">
                     	${board123.bWriter }
                     </div>
                     </td>
                  </tr>
                 	<tr>
                     <th scope="row">작성일</th>
                     <td class="pnawtd">
                     <div name="mem_name"  class="inputTypeText">
                     	${board123.b_CreateDate }
                     </div>
                     </td>
                  </tr>
     
                  <tr>
                     <th scope="row">상세내용</th>
                     <td class="write pnawtd">
				<div name="content"style='width: 100%; height: 200px;'>${board123.bContent } 
				</div>
			</td>
		  </tr>
		  <tr>
		  	<th scope="row">답변내용</th>
                     <td class="write pnawtd">
				<div name="pReContent"style='width: 100%; height: 200px;'readonly>
				<c:if test="${empty propose.pReContent}">
				<div class="bsaImgArea">
				<img src="resources/images/sitterApply/crying.png">
				</div>
				답변 준비중입니다.^^
				</c:if>
				<c:if test="${!empty propose.pReContent}">
				<div class="bsaImgArea">
						<img src="resources/images/sitterApply/happy.png">
						</div>
						${propose.pReContent }
					</c:if>
				</div>
			</td>
		  </tr>
                
               </tbody>
            </table>
            
		<div class="both" style="margin-top:40px; margin-bottom:30px;"></div>
			<div class="applybtnArea" style="max-width: 100%;">
               <ul class="ul01" style="margin-left:900px;">
              
              <c:if test="${board123.bWriter eq m.nickName}">
               <li>
					
               		<input class="inputbox02 btn btn-outline-dark" type="button" onclick="proup();"  value="수정하기">
               </li>
             
                <li><input class="inputbox02 btn btn-outline-dark" type="button" value="삭제하기" onclick="proDelete();"></li>
    			</c:if>
                	<li><input class="inputbox02 btn btn-outline-dark" type="button" value="목록으로" onclick="menulo()"></li>
					
               </ul>
            </div>
		<script type="text/javascript">
			function proup(){
				var bNo = ${board123.bNo};
				console.log(bNo);
				
				location.href="proup.do?bNo="+ bNo; 
			}
			function proDelete() {
				var bNo = ${board123.bNo};
				console.log(bNo);
				if(confirm("정말 삭제하시겠습니까?"))
				 {
					location.href="proDelete.do?bNo="+ bNo; 
				 }
				 else
				 {
				 alert('아니오를 누르셨습니다');
				 }
			
			}
		</script>
		<div class="both"></div>
		
			
			
		</div>

	 	

	<div class="both"></div>
	

   	
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

function menulo() {
	location.href='proListView.do'
}
	
</script>
</html>