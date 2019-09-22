<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"  %>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TranDetail</title>

<script type="text/javascript" src="resources/js/jquery-3.4.1.min.js"></script>
<style>
.menubar ul{width:800px;height:30px;background:pink;list-style:none;padding-top:15px; margin-top:30px; }
.menubar ul li{float:left;margin-right:10px;font-family:dotum; }
.menubar ul li a{font-size:12px;color:yellow;font-weight:bold;text-decoration:none;  }
.white a{color:#fff}

.ta{
   width:670px; height:500px; background:pink; padding-top:15px;
}

table.type07 {
    border-collapse: collapse;
    text-align: left;
    line-height: 1.5;
    border: 1px solid #ccc;
    margin: 20px 10px;
    width:800px;
    height:70px;
}
table.type07 thead {
    border-right: 1px solid #ccc;
    border-left: 1px solid #ccc;
    background: #e7708d;
}
table.type07 thead th {
    padding: 10px;
    font-weight: bold;
    vertical-align: top;
    color: #fff;
}
table.type07 tbody th {
    width: 150px;
    padding: 10px;
    font-weight: bold;
    vertical-align: top;
    border-bottom: 1px solid #ccc;
    background: #fcf1f4;
}
table.type07 td {
    width: 350px;
    padding: 10px;
    vertical-align: top;
    border-bottom: 1px solid #ccc;
}

/*fna이미지*/
element.style {
    width: 730px;
    height: 80px;
    background-image: url(/img/Header_Faq.gif);
    background-repeat: no-repeat;
    margin-top: 10px;
}
.header1 {
	font-size:14px;
	color:dimgray;
	width:600px;
}
.form{
	margin-left:27%;
}
.sidebar{width:195px;float:left;border:1px solid #ee9a99;margin-left:110px; margin-top:220px;}
.sidebar h2{background:#ee9a99;color:#fff;padding:20px}
.sidebar li{padding:15px 20px ;border-bottom:1px solid #ddd}
.sidebar li:hover{cursor:pointer;font-weight:bold;color:#ee9a99}
</style>
</head>
<body>
 <%@ include file="../common/header.jsp"%> 
        <div class="sidebar">
      <h2>문의사항</h2>
      <ul>
         <li>문의사항</li>
         <li>자주묻는질문</li>
      </ul>
   </div>
<div class="form">
<div style="width:730px;height:80px;background-image:url(resources/images/fna/faq.PNG);background-repeat:no-repeat;margin-top:20px">

<div class="header1" style="padding-left:150px; margin-top:2px;">
<h4>부모마음에서 제공하는 각종 서비스와 관련하여 고객님들께서 가장 자주 문의하시는 사항들을 회원구분별로 확인하실 수 있습니다.&nbsp;&nbsp;</h4>
	<p align="right">
<a href=""><img src="resources/images/fna/fna_propose.PNG" width="122" height="19"  alt="질문과답변 바로가기"></a></p>
</div>
</div>

<div class="menubar">
   <ul>
      <li><a href="#">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;전체</a></li>
      <li><a href="#">사이트 이용관련</a></li>
      <li><a href="#">회원정보</a></li>
      <li><a href="#">불건전 행위</a></li>
       <li class="white" ><a href="#">베이비시터 관련</a></li>
      <li class="white" ><a href="#">부모님 관련</a></li>
   </ul>
</div>


 <table class="type07">
    <tr>
        <th scope="cols">분류</th>
        <th scope="cols">내용</th>
    </tr>
    
    <c:forEach var="f" items="${ fList }" varStatus="i">
  
	<tr>
		<th scope="row"> 
	 <c:choose>
    <c:when test="${f.fType ==1}">
       	사이트 이용관련
    </c:when>

    <c:when test="${f.fType ==2}">
        회원정보
    </c:when>
  	<c:when test="${f.fType ==3}">
        불건전 행위
    </c:when>
     <c:when test="${f.fType ==4}">
       기타
    </c:when>
     <c:when test="${f.fType ==5}">
       베이비시터 관련
    </c:when>
    <c:otherwise>
        부모님 관련
    </c:otherwise>
 
	</c:choose>
	
	</th>
		
		<td id="btn1">
			<img src="resources/images/fna/qna.png" width="20" height="20">
			
			<a onclick="aClick('content${i.count }');">${f.fTitle }</a>
		</td>
	</tr>
	<tr class="content${i.count }" style="display:none">
		<td colspan="2" style="background-color: pink;">
			<a>${f.fContent }</a>
		</td>
	</tr>
  	</c:forEach>
</table>
</div> 

<script type="text/javascript">
function aClick(content){
	var contentClass = $("."+ content);
	contentClass.toggle('2500');
}
/* $("a").click(function() {
	console.log($(this).parent().parent());
 	var a = $(this).closest(".content1");
	console.log(a);
	a.toggle();
}); */

</script>
 <%@ include file="../common/footer.jsp"%> 

</body>
</html>