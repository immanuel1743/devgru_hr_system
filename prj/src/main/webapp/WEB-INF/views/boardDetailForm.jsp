<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/common.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지 상세</title>
<link rel="stylesheet" href="css/boardDetail.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" integrity="sha512-5A8nwdMOWrSz20fDsjczgUidUBR8liPYU+WymTZP1lmY9G6Oc7HlZv156XqnsgNUzTyMefFTcsFH/tnJE/+xBg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<script>
	function init() {
	}

	function hidePopup() {
		$('.popup').hide();
	}
	
	function showPopUp() {
		$('.popup').show();
	}

	function goBoardListForm(){
		document.boardListForm.submit();
	}
	function goBoardUpDelForm(){
		document.boardUpDelForm.submit();
	}
	function goBoardRegForm(){ 
		document.boardRegForm.submit();
	}
</script>

</head>
<body>
		<form class="header">
			<div class="header_box">
				<div class="logo" onclick="location.replace('/mainpage.do')">
					<img src="">
					<div>
						DEVGRU
					</div>
				</div>
				<table>
						<tr class="cate_box">
              <td class="main_cate" onclick="location.replace('/searchFreeDev.do')">프리랜서 개발자</td>
              <td class="main_cate" onclick="location.replace('/searchDev.do')">정규직 개발자</td>
              <td class="main_cate" onclick="location.replace('/searchPrj.do')">프로젝트</td>
              <td class="main_cate" onclick="location.replace('/searchDispatch.do')">파견현황</td>
              <td class="main_cate" onclick="location.replace('/gyeoljaeList.do')">결재</td>
              <td class="main_cate active" onclick="location.replace('/boardList.do')">공지사항</td>
				</table>
				<div class="welcome_user">
					<div>
      		    <div class="welcome_name">로그아웃</div>
					</div>
					<div class="logout_btn" onclick="location.replace('/loginForm.do')"><i class="fa fa-sign-out" aria-hidden="true"></i></div>
				</div>
				<br>
			</div>
		</form>
		<form name="boardDetailForm" class="boardForm">
			<header>공지사항 상세보기</header>
			<div class="boardDetail_desc">
				<div>
					<div class="subject">${boardDTO.subject}</div>
				</div>
				<div>
					<textarea name="content" class="content" readonly>${boardDTO.content}</textarea>
				</div>
				<div>
					
						<c:if test="${!empty requestScope.boardDTO.img_name}">
							<a href = "/img/${requestScope.boardDTO.img_name}">파일 다운로드</a>							
						</c:if>
						
				</div>
				<div class="read_desc">
					<div>
						<i class="fa fa-eye" aria-hidden="true"></i>
						<div>${boardDTO.readcount}</div>
					</div>
					<div>
						<div>${boardDTO.reg_date}</div>
					</div>
				</div>
			</div>
				<span class="backList" onClick="goBoardListForm();">
					<i class="fa fa-bars" aria-hidden="true"></i>
					<span>목록</span>
				</span>
			</div>
				<span class="backList alterBoard" onClick="goBoardUpDelForm();">
					<i class="fa fa-pencil-square-o" aria-hidden="true"></i>
					<span>수정/삭제</span>
				</span>
			</div>
		</form>
		<div>
			<form name="boardListForm" method="post" action="/boardList.do"> 
			</form>
			
			<form name="boardUpDelForm" method="post" action="/boardUpDelForm.do"> 
				<input type="hidden" name="b_no" value="${requestScope.boardDTO.b_no}">
			</form>
			
			<form name="boardRegForm" method="post" action="/boardRegForm.do"> 
				<input type="hidden" name="mom_b_no" value="${requestScope.boardDTO.b_no}">
			</form>
		</div>
</body>
</html>








