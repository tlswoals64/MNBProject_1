<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
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

body {margin:0;padding:0;  text-decoration:none; font-family:"NanumSquare","NanumMyeongjo","malgun","�������", "NanumGothic", "����", "Dotum", "����", "Gulim", "Sans-serif","Roboto"; font-size:13px; letter-spacing:-1px; background:#fff;line-height:160%}
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


/*��ǰ�� ��ǰ�Ұ����*/
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
	
	
	<	<div class="content">	
		<div class="nanum_view">
			<ul>
				<li>
					<table>
						<tr>
							<th colspan ="5">
								<img src="resources/images/main/main_img_01.png" width="480" height="380" class="large" />
							</th>
						</tr>
						<tr>
							<td class="small">
								<a href="resources/images/main/main_img_02.png"><img src="resources/images/main/main_img_02.png" width="480" height="380"/></a>
								<p>�Ｚ 21x<br>&#8361;500
							</td>	
							<td class="small">
								<a href="resources/images/main/main_img_03.png"><img src="resources/images/main/main_img_03.png" width="480" height="380"/></a>
								<p>�Ｚ 21x<br>&#8361;500
							</td>
							<td class="small">
								<a href="resources/images/main/main_img_01.png"><img src="resources/images/main/main_img_01.png" width="480" height="380"/></a>
								<p>�Ｚ 21x<br>&#8361;500
							</td>
							<td class="small">
								<a href="resources/images/main/main_img_02.png"><img src="resources/images/main/main_img_02.png" width="480" height="380"/></a>
								<p>�Ｚ 21x<br>&#8361;500
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
				<h2>��ǰ�ȳ�
				<span style="float:right;"><img src="resources/images/board/singo.png"></span></h2>
				<ul>
					<li class="pro_title">�Ǹ�������</li>
					<li>���̵�</li>
					<li>�̸���</li>
				</ul>
				<p class="both"></p>
				<ul>
					<li class="pro_title">�ŷ����</li>
					<li>���̵�</li>
				</ul>
				<p class="both"></p>
				<ul>
					<li class="pro_title">��۹��</li>
					<li>�Ǹ��ڿ� ���������ϼ���.</li>
				</ul>
				<p class="both"></p>
				<p class="info_txt"><span>�����ŷ��� �Ʒ� ���׿� �������ּ���.</span><br>
				��Ȯ���� �Ǹ���(���� ������, �ؿ�IP, ����ǽ� ��ȭ��ȣ)�� ������ �������� �����ּ���.<br>
				�Ǹ��ڿ��� ������ �޽������ٴ� ��ȭ, ���� ���� �̿��Ͻð� �������� ���⿡ �����ϼ���.<br>
				������ü �� ���Ա��� ������ ��� ������ �ŷ����� �ٽ� �� �� Ȯ�����ּ���.</p>

				<p class="order_txt">* �ŷ��� �ʵ�! �����ϼ���!<br>
* ����ó�� ���� �ܺθ�ũ, īī����, ��۷θ� �ŷ��� ��<br>
* ����ó �� ���¹�ȣ�� ���̹�İ�� ��ġƮ�� �� ��ȸ�غ���<br>
* ��ü�� ô �����Ͽ� �ź����� ����ڵ������ ������ ���<br>
* ���� ��ǰ(�޴���,���ڱ��)� �Ǹ��ϰ� �ֱ�(1���� ��) �Խñ۸� ���� ��<br>
* �ؿ������� �鼼���� ��ǰ�� �Ǹ��ϴ� ������ �ҹ��Դϴ�.</p>
			</div>
		</li>


			</ul>
		</div>
		
		
		<div class="both"></div>
		
		
		<div class="nanum_content">
			<ul>
				<li>����</li>
			</ul>
		</div>
		
		<div class="both"></div>
		
			<div class = "replyArea">
			<div class = "replyWriterArea">
			
			<div class = "replySelectArea">
				<table id = "replySelectTable">
					
			<h2> ��� </h2>			
							<tr>
								<td style="width:100px; font-size:20px;padding-top:10px;">��긣</td> 
								<td style="width:200px; font-size:20px;padding-top:10px;">2019-08-06</td>
							</tr>
							<tr>
								<td style="width:600px;text-align: left; padding-left: 20px; font-size:15px; padding-top: 5px;">��Ƽ�� ���� ����?!</td>
							</tr>
						
					
					
				</table>
			</div>

	
	   	

				<div class="comment_wrap">
					<div class="comment_text"	>
						<textarea id="replyContent" rows="3" cols="80" class="form-control" placeholder="����� �Է��ϼ���." style="width: 750px;height: 90px; margin:0 auto; margin-top: 20px;display: inline-block; resize: none;position:relative; box-shadow: -1px 0px 15px 1px #9d9a9a;"></textarea>
						<input type="button" id="addReply" style="width:100px; height:90px;color:#000; background-color:#FFC0CB;border:0;position: absolute;left: 915px; margin-top: 20px;" value="��۾���">
					</div>
				</div>
				
			</div>
			
			
		</div>
			
		</div>
		
		 <script>
	   	$(function(){
	   		getReplyList();
	   		
	   		setInterval(function(){
	   			getReplyList();
	   		}, 10000);
	   	});
	 	$("#addReply").on("click", function(){
	   		var rContent = $("#replyContent").val();
	   		var refBno = ${board.bNo};
	   		
	   		$.ajax({
	   			url: "addReply.do",
	   			data: {nContent:nContent, refBno:refBno},
	   			type: "post",
	   			success: function(data){
	   				
	   				if(data == "success"){
	   					$("#replyContent").val("");
	   					getReplyList();
	   				}
	   				else{
	   					alert("��۵�Ͽ� �����߽��ϴ�.");
	   					$("#replyContent").val("");
	   				}
	   				
	   			}
	   		});
	   	});
	 	
	  	// ��� ����Ʈ ajax
	   	function getReplyList(){
	   		var bNo = ${board.bNo};
	   		$.ajax({
	   			url: "rList.do",
	   			data: {bNo:bNo},
	   			dataType: "json",
	   			success: function(data){
	   				$tableBody = $("#rtb tbody");
	   				$tableBody.html("");
	   				
	   				var $tr;
	   				var $rWriter;
	   				var $rContent;
	   				var $rCreateDate;
	   				
	   				$("#rCount").text("��� (" + data.length + ")");
	   				
	   				if(data.length > 0){
	   					for(var i in data){
	   						$tr = $("<tr>");
	   						$rWriter =  $("<td width='100'>").text(data[i].rWriter);
	   					    $rContent = $("<td>").text(decodeURIComponent(data[i].rContent.replace(/\+/g, " ")));
	   					    $rCreateDate =  $("<td width='100'>").text(data[i].rCreateDate);
	   					    
	   					    $tr.append($rWriter);
		   					$tr.append($rContent);
		   					$tr.append($rCreateDate);
		   					$tableBody.append($tr);
	   					}
	   				}
	   				else{
	   					$tr = $("<tr>");
	   					$rContent = $("<td colspan='3'>").text("��ϵ� ����� �����ϴ�.");
	   		
					   	$tr.append($rContent);
						$tableBody.append($tr);
	   				}
	   			}
	  	 	});
	   	}
	 	
	 	</script>
	 	

	<div class="both"></div>
	
	 <p align="center">
      <button onclick="location.href='home.do'">���� �������� �̵�</button>
      <button onclick="location.href='${ blist }'">��� ����� �̵�</button>
   </p>
   	
   	<div class="both"></div>

	  <jsp:include page="../../common/footer.jsp"></jsp:include>
	  
</body>
</html>