<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<style type="text/css">

element.style {
}
* {
    margin: 0;
    padding: 0;
}

user agent stylesheet
body {
    display: block;
    margin: 8px;
}
user agent stylesheet
html {
    color: -internal-root-color;
}
 
 
element.style {
}
* {
    margin: 0;
    padding: 0;
}
user agent stylesheet
form {
    display: block;
    margin-top: 0em;
}
html {
    color: -internal-root-color;
}
element.style {
    width: 530px;
}
div#pop_wrap {
}
div#pop_wrap {
}
div#pop_wrap {
}
div#pop_wrap {
}
#pop_wrap {
    text-align: left;
    margin: 0 auto;
}
* {
    margin: 0;
    padding: 0;
}
user agent stylesheet
div {
    display: block;
}
body {
    font-family: '나눔고딕',NanumGothic,'돋움',Dotum,"굴림",Gulim,AppleGothic,Sans-serif;
    font-size: 12px;
    font-weight: normal;
    line-height: 14px;
    text-align: center;
}
user agent stylesheet
html {
    color: -internal-root-color;
}
 
element.style {
}
* {
    margin: 0;
    padding: 0;
}
user agent stylesheet
form {
    display: block;
    margin-top: 0em;
}
element.style {
}
* {
    margin: 0;
    padding: 0;
}
html[Attributes Style] {
    -webkit-locale: "ko";
}
user agent stylesheet
html {
    display: block;
    color: -internal-root-color;
}
ul{
   list-style:none;
   }
li{
   height: 30px;
   font-size: 20px;
}

#titleArea{
   margin-left:20px;
   margin-bottom : 20px;
   height: 50px;
   font-size :30px;
   font-weight: bold;
}
#titleArea>img{
   width: 40px;
   height: 40px;
}
</style>
</head>
<body>
<div id="pop_wrap" style="width:1000px; border: 5px solid rgb(230,230,230)">
    <div id="pop_header" style="width:1000px; height : 100px;
   border:1px solid rgb(230,230,230);
   background-color:rgb(230,230,230);">
    <br><br>
        <div id="titleArea">신고하기<img src="resources/images/board/warning.png"></div>
        <br>
    </div>
   <br>
  
 <form action="radioCommit.do" method="post" enctype="Multipart/form-data" id="formtag"> 
    <div id="pop_container">
        <div id="pop_content">
        
         <input type="hidden" name="rMan" value="${board123.bWriter }">
             <input type="hidden" name="rTitle" value="${board123.bTitle }">
             <input type="hidden" name="bNo" value="${board123.bNo }">
         	

            <dl class="list_report">
         <dt class="first" style="margin-left:20px; height :50px; font-weight:bold; font-size:23px;">제&nbsp;&nbsp;&nbsp;목 :  ${board123.bTitle } </dt><br>
          
            <dt class="dt_type2" style="margin-left:20px; height :50px; font-weight:bold;font-size:23px;">작성자 : ${board123.bWriter } </dt><br>
          
             
            <dt style="margin-left:20px; height :30px; font-weight:bold;font-size:23px;"><span>사유선택</span></dt>
            <dd class="dd_type" style="margin-left:20px; ">
                <p class="desc5" style="font-size :15px; opacity:1;">(여러 사유에 해당되는 경우, 대표적인 사유 1개를 선택해 주세요
                    <span><a target="_blank" href="http://cafe.naver.com/common/cafein_service_use.htm">운영원칙 자세히 보기</a>)</span>
                </p><br>
                <ul class="list_type">
                    <li>
                        <input type="radio" name="rType" class="badArticleReport" id="rdo_illegal" value="1" class="input_rdo"><label for="rdo_illegal">&nbsp;부적절한 홍보 게시글</label>
                        <strong><span class="more"><a href="#" onclick="changeInfoLayer('info_illegal','img_illegal');"><img id="img_illegal" src="https://ssl.pstatic.net/static/common/popup/img_more.gif" width="36" height="11" alt="더보기"></a></span></strong>
          
                    </li>
                    <li>
                        <input type="radio" name="rType" class="badArticleReport" id="rdo_obscenity" value="2" class="input_rdo"> <label for="rdo_obscenity">음란성 또는 청소년에게 부적합한 내용</label>
                        <span class="more"><a href="#" onclick="changeInfoLayer('info_obscenity','img_obscenity');"><img id="img_obscenity" src="https://ssl.pstatic.net/static/common/popup/img_more.gif" width="36" height="11" alt="더보기"></a></span>
                       
                    </li>
                    <li>
                        <input type="radio" name="rType" class="badArticleReport" id="rdo_libel" value="3" class="input_rdo"> <label for="rdo_libel">명예훼손/사생활 침해 및 저작권침해등</label>
                    </li>
                    <li>
                        <input type="radio" name="rType" class="badArticleReport" id="rdo_etc" value="4" class="input_rdo"> <label for="rdo_etc">기타</label>
                    </li>
                </ul>
                
                <textarea name="rContent"class="badArticleReport2" id="etcTxtBox" cols="50" rows="5" class="txt_area" 
                placeholder="해당 신고는 운영자에게 전달니다. 신고사유를 작성해주세요."
                 style="width:960px; height:80px; resize:none; font-size:16px;"></textarea>
            </dd>
         
    
        </dl>
        </div>
    </div>

    <div id="pop_footer" style="padding-top:20px; width:1000px; margin-left:370px; padding-bottom:20px;">
        <input type="image"  id="btnReport" src="https://ssl.pstatic.net/static/common/popup/btn_report2.gif" alt="신고하기" title="신고하기" value="신고하기" onmouseover="this.src='https://ssl.pstatic.net/static/common/popup/btn_report2_over.gif'" style="width:80px; height:40px;"onmouseout="this.src='https://ssl.pstatic.net/static/common/popup/btn_report2.gif'" onclick="submit1();">
        <a href="javascript:window.close()"><img src="https://ssl.pstatic.net/static/common/popup/btn_cancel2.gif" width="48" height="28" alt="취소" onmouseover="this.src='https://ssl.pstatic.net/static/common/popup/btn_cancel2_over.gif'" style="width:80px; height:40px;" onmouseout="this.src='https://ssl.pstatic.net/static/common/popup/btn_cancel2.gif'"></a>
    </div>
 </form> 
</div>
 
<script type="text/javascript">
   function submit1() {

   
      alert("신고 완료되었습니다. 검토 후 의견 반영하겠습니다."); 
      form.submit();
       window.close(); 

   }
</script>
</body>
</html>