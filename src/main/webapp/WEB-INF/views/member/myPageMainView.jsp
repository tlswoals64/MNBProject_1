<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	.wrap{
		width : 1200px;
		margin : auto;
	}
	
	#myPageB{
		margin-left: auto;
		margin-right : auto;	
		padding-top : 40px;
		font-size : 35px;
		font-weight : bold;
		text-align : center;
		width: 1000px;
	}
	
	/* 처음 유저 상세내용*/
	.myInfo{
		margin-left: auto;
		margin-right : auto;
		width : 1000px;
		margin-top : 20px;
		height : 420px;
		background: rgb(240,240,240);
	}
	#userName{
		padding-top : 10px;
		text-align : center;
		width : 1000px;
		font-size : 20px;
		font-weight : bold;
		
	}
	.myInfoTable {
		padding-bottom : 30px;
		margin-left : auto;
		margin-right : auto;
		margin-top : 10px;
		background : white;
		border: 1px solid rgb(240,240,240);
		border-collapse: collapse;
	}
	
	.myInfoTh {
		padding: 10px;
		height: 30px;
		width : 150px;
		font-weight : 800;
		font-size : 20px;
		text-align : left;
	}
	
	.myInfoTd {
		width : 270px;
		padding: 10px;
		height: 30px;
		font-size : 18px;
	}
	
	/* 버튼 부분*/
	
	.myInfoBtnArea{
		margin-left: auto;
		margin-right : auto;
		padding-top : 20px;
		width : 1000px;
	}
	.btnTable {
		padding-bottom : 30px;
		width : 1000px;
		margin-top : 10px;
		background : white;
		border: 5px solid rgb(240,240,240);
		border-collapse: collapse;
	}
	
	
	.btnTd {
		width : 333px;
		padding: 30px;
		height: 150px;
		font-size : 18px;
		border : 5px solid rgb(240,240,240);
	}	
	
	
	.imgdiv{
		width : 100px;
		height: 100px;
		display : inline-block;
	}
	.bDiv{
		display : inline-block;
		font-weight : bold;
		padding-left : 20px;
	}
	
	.imgdiv > img{
		width : 100%;
		height : 100%;
	}
	
	/* 베이비시터 신청 확인*/
	
	.BSApplyArea{
		margin-left: auto;
		margin-right : auto;
		width : 1000px;
		background : rgb(240, 240, 240);
		margin-top : 20px;
		border : 5px solid rgb(240,240,240);
		
	}
	#bsaB{
		font-size : 20px;
		font-weight : bold;
		text-align : center;
		padding-top : 10px;
		padding-bottom : 10px;
	}
	
	.bsaStatus{
	
		font-size : 20px;
		background : white;
		margin-left : 10px;
		margin-right : 10px;
		margin-bottom : 10px;
		padding : 20px;
		height : 150px;
	}
	
	#bsaBtnArea{
		width : 1000px;
		margin-left : 400px;
		margin-top : 10px;
		width : 100px;
		height : 40px;
		border : 3px solid rgb(240,240,240);
		background : rgb(240,240,240);
		font-weight : bold;
		
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
	.bsaComent{
		padding-left : 10px;
		display : inline-block;
	}
	.reasonComent{
		display : inline-block;
		padding-left : 20px;
		color : #01A9DB;
		font-weight : bold;
	}
</style>
<body>
	<jsp:include page="../common/header.jsp"></jsp:include>
	
	<div class="wrap">
		<div id="myPageB">MY PAGE</div>
		<div class="myInfo">
			<div id="userName">${loginUser.userName}님, 안녕하세요!</div>
			<table class="myInfoTable">
				<tr class="myInfoTr">
					<th class="myInfoTh">아이디</th>
					<td class="myInfoTd" colspan="3">${loginUser.userId}</td>
				</tr>
				<tr class="myInfoTr">
					<th class="myInfoTh">닉네임</th>
					<td class="myInfoTd">${loginUser.nickName}</td>
					<th class="myInfoTh">회원등급</th>
					<td class="myInfoTd">${loginUser.memberType}</td>
				</tr>
				<tr class="myInfoTr">
					<th class="myInfoTh">생년월일</th>
					<td class="myInfoTd">${loginUser.birth}</td>
					<th class="myInfoTh">성별</th>
					<c:if test="${loginUser.gender eq 'M' }">
					<td class="myInfoTd">남자</td>
					</c:if>
					<c:if test="${loginUser.gender eq 'F' }">
					<td class="myInfoTd">여자</td>
					</c:if>
				</tr>
				<tr class="myInfoTr">
					<th class="myInfoTh">이메일</th>
					<td class="myInfoTd" colspan="3">${loginUser.email}</td>
				</tr>
				<tr class="myInfoTr">
					<th class="myInfoTh">핸드폰번호</th>
					<td class="myInfoTd" colspan="3">${loginUser.phone}</td>
				</tr>
				<tr class="myInfoTr">
					<th class="myInfoTh">주소</th>
					<td class="myInfoTd" colspan="3">${loginUser.address } </td>
				</tr>
				<tr class="myInfoTr">
					<th class="myInfoTh">가입 날짜</th>
					<td class="myInfoTd" colspan="3">${loginUser.enroll_Date }</td>
				</tr>
			</table>
		</div>
		<div class="myInfoBtnArea">
			<table class="btnTable">
				<tr class="btnTr">
					<td class="btnTd" onclick="location.href='detailMemberView.do'" style="cursor:pointers">
						<div class="imgdiv">
							<img src="resources/images/main/user.png">
						</div>
						<div class="bDiv">
							내 정보 수정
						</div>
					</td>
	<!-- 		
					<button onclick="location.href='pwdUpdateView.do'">비밀번호변경</button>
					<button 내가 쓴 글목록</button>
					<button onclick="location.href='reViewList.do'">리뷰리스트</button>
					<button onclick="location.href='reViewDeView.do'">리뷰디테일</button>
					<button onclick="location.href='reViewInView.do'">리뷰 글쓰기</button> -->
					<td class="btnTd" onclick="location.href='mylikeList.do'" style="cursor:pointers">
						<div class="imgdiv">						
							<img src="resources/images/main/favorite.png">
						</div>
						<div class="bDiv">
							좋아요 게시글 보기
						</div>
					</td>
					<td class="btnTd" onclick="location.href='myboardList.do'" style="cursor:pointers">
						<div class="imgdiv">
							<img src="resources/images/main/document.png">
						</div>
						<div class="bDiv">
							내가 쓴글 보기
						</div>
					</td>
				</tr>
			</table>
		</div>
		
		<div class="BSApplyArea">
			<div id="bsaB">베이비시터 신청 현황</div>
			<div class="bsaStatus">
			<c:if test="${ empty b}">
				<div class="bsaImgArea">
					<img src="resources/images/sitterApply/plane.png">
				</div>
				<div class="bsaComent">
					베이비시터등록에 신청하지 않았습니다!
				</div>
			</c:if>
			<c:if test="${ m.memberType eq 2}">
				<div class="bsaImgArea">
					<img src="resources/images/sitterApply/love.png">
				</div>
				<div class="bsaComent">
			  		베이비시터회원입니다!
			  	</div>
			</c:if>
			<c:if test="${!empty b && b.apply_Date eq null && m.memberType == 1}">
				<div class="bsaImgArea">
					<img src="resources/images/sitterApply/happy.png">
				</div>
				<div class="bsaComent">
					관리자의 승인을 기다리는중입니다!
				</div>
			</c:if>
			<c:if test="${!empty b && b.reason ne null}">
				<div class="bsaImgArea">
					<img src="resources/images/sitterApply/crying.png">
				</div>
				<div class="bsaComent">
					신청이 반려되었습니다.
				</div>
				<div class="reasonComent">
					(반려 사유 : ${ b.reason })
				</div>	
							
				<div>
					<button id="bsaBtnArea" onclick="bsapplyUpdate();">수정하기</button>
				</div>
			</c:if>
			</div>		
			
		</div>
	</div>

	<jsp:include page="../common/footer.jsp"></jsp:include>
	
</body>

<script>
	function bsapplyUpdate(){
		location.href = 'bsaUpdateView.do';
	}
</script>
</html>