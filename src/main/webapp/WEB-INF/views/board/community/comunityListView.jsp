<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>커뮤니티</title>
<link rel="stylesheet" href="resources/css/comunity/_base.css">
<link rel="stylesheet" href="resources/css/comunity/_grid.css">
<link rel="stylesheet" href="resources/css/comunity/member.css">
<link rel="stylesheet" href="resources/css/comunity/xe.min.css">
<link rel="stylesheet" href="resources/css/comunity/font.css">


<script type="text/javascript" src="resources/js/jquery-3.4.1.min.js"></script>
<style type="text/css">
.frame{
  margin: 120px;

}
.wrapper{
   margin: 5%;
   margin-top: 50px;
   overflow:hidden;
}

 .nav {
  float: left;
  width: 150px;
  color: #fff;
  margin-right: 50px;
  border:1px solid black;
}
.nav-list {
  list-style: none;
  margin: 0;
  padding: 10px 0;
}
.nav-item {
  margin: 4px 0;
}
.nav-link {
  display: block;
  text-decoration: none;
  padding: 4px 10px;
  color: #fff;
}
.nav-link:hover {
  background: pink;
}

.body {
  font:14px/1.8 Arial, Helvetica, sans-serif;
}
.title{
	width:500px;
}
.th{
	font-size:23px;
}
.td{
	font-size:18px;
}
.sidebar{width:195px;float:left;border:1px solid #ee9a99;margin:0 20px 0 0}
.sidebar h2{background:#ee9a99;color:#fff;padding:20px}
.sidebar li{padding:15px 20px ;border-bottom:1px solid #ddd}
.sidebar li:hover{cursor:pointer;font-weight:bold;color:#ee9a99}
</style>
</head>
<body>
<%@ include file="../../common/header.jsp"%> 

<div class="frame">

       <div class="sidebar">
      <h2>커뮤니티</h2>
      <ul>
         <li>커뮤니티</li>
         <li>나눔게시판</li>
      </ul>
   </div>
      
       <div class="content">
       <div class="wrapper">
   <section class="xm">
       <table class="table table-striped table-hover" id="listArea">
         <%--  <caption>Total: <%=num %>, Page 1/1</caption>  --%>
         <thead>
            <tr style="background-color:pink">
               <th>번호</th>
               <th class="title">제목</th>
               <th>글쓴이</th>
               <th>조회수</th>   
               <th>작성 일</th>
            </tr>
            <!-- 리스트가져오기 -->
           
         </thead> 
        <c:forEach var="b" items="${ list1 }">
       
		<tr onclick="comDetail(this);">
			<td align="center" id="bNo">${ b.bNo }</td>
			
			<td align="left"> 
				${ b.bTitle }
			<%-- <c:if test="${ empty loginUser }">
					${ b.bTitle }		
				</c:if> --%> 
			</td>
			
			<td align="center">${ b.bWriter }</td>
			<td align="center">${ b.bCount }</td>
			<td align="center">${ b.b_CreateDate }</td>
			
		
		</tr>
		<script>
			function comDetail(v){
				var bNo=$(v).children("#bNo").text();
				console.log(bNo);
			location.href="detailCom.do?bNo="+ bNo; 
			}
		</script>
		</c:forEach>
		<!-- 페이징 처리 -->
		<tr align="center" height="20" id="buttonTab">
			<td colspan="6">
			
				<!-- [이전] -->
				<c:if test="${ pi1.currentPage <= 1 }">
					[이전] &nbsp;
				</c:if>
				<c:if test="${ pi1.currentPage > 1 }">
					<c:url var="before" value="comListView.do">
						<c:param name="page" value="${ pi1.currentPage - 1 }"/>
					</c:url>
					<a href="${ before }">[이전]</a> &nbsp;
				</c:if>
				
				<!-- 페이지 -->
				<c:forEach var="p" begin="${ pi1.startPage }" end="${ pi1.endPage }">
					<c:if test="${ p eq currentPage }">
						<font color="red" size="4"><b>[${ p }]</b></font>
					</c:if>
					
					<c:if test="${ p ne currentPage }">
						<c:url var="pagination" value="comListView.do">
							<c:param name="page" value="${ p }"/>
						</c:url>
						<a href="${ pagination }">${ p }</a> &nbsp;
					</c:if>
				</c:forEach>
				
				<!-- [다음] -->
				<c:if test="${ pi1.currentPage >= pi1.maxPage }">
					[다음]
				</c:if>
				<c:if test="${ pi1.currentPage < pi1.maxPage }">
					<c:url var="after" value="comListView.do">
						<c:param name="page" value="${ pi1.currentPage + 1 }"/>
					</c:url> 
					<a href="${ after }">[다음]</a>
				</c:if>
			</td>
		</tr>
      </table>
</section></div>
            
      
      <div align = "center">
      <form action="searchCom.do" method="get">
      <select class="option fr" name="search_target">
            <option value="title_content">제목+내용</option>
            <option value="title">제목</option>
            <option value="content">내용</option>
          <option value="nick_name">닉네임</option>
            </select>
            <input  type="text" name="search" value="" placeholder="검색어를 입력하세요.">&nbsp;
         <input type="submit" value="검색" style="background-color: white; color:black; width:50px;  border: solid 1px gray;
  border-radius: 7px; text-align: center;" >
            
            
      </form>
      </div>

          <div align="right">
         <button onclick="location.href='inCom.do'"
            id="writeNoBtn" style="background-color:gray; color:black; border:1px solid black; width: 60px; height: 25px;  border: solid 1px gray;
  border-radius: 7px; background-color:white; margin-right:90px;">글쓰기</button><br>
    	  </div> 
   
      </div>
      </div>
<script>
      $(function(){
         //아이디가 listArea의 자손인 td에 마우스가 들어가게되면 지금 마우스가 있는곳(td)의 부모(tr)에게 css를 적용한다.
         $('#listArea td').mouseenter(function(){
            $(this).parent().css({'background':'pink', 'cursor':'pointer'});
         }).mouseout(function(){
            //지금 있는 곳(td)에서 마우스가 나갔을 때 td의 부모인 tr에게 css를 적용한다.
            $(this).parent().css('background','none');
         }).click(function(){
            //클릭시에 td의 부모인 tr의 첫번째 요소의 text값을 가져온다.
            var num = $(this).parent().children().eq(0).text();
           <%--  location.href="<%= request.getContextPath()%>/detail.no?no=" + num; --%>
         });
      }); 
   </script>
<%@ include file="../../common/footer.jsp"%> 
</body>
</html>