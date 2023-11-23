<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/common.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결재 상세</title>
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

	function goGyeoljaeListForm(){
		document.gyeoljaeListForm.submit();
	}
	function goGyeoljaeUpDelForm(){
		document.gyeoljaeUpDelForm.submit();
	}
	
	function result(resultText){
		if( confirm("정말 "+resultText+" 하시겠습니까?")==false ) { return; }
		$("[name='resultText'] [name='result']").val(resultText);
		
		var formObj = $("[name='resultText']")
		
		
		ajax(
				"/gyeoljaeResult.do"
				,"post"
				,formObj
				,function(responseJson){
					var progressUpCnt = responseJson["progressUpCnt"];
					
					if(progressUpCnt>=1
							){
						alert(resultText+"완료 되었습니다.");
						goGyeoljaeListForm();
					}
					else{
						alert("결재 처리 중 오류가 발생했습니다. 다시 시도해주십시오.")
					}
			 });
		
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
              <td class="main_cate active" onclick="location.replace('/gyeoljaeList.do')">결재</td>
              <td class="main_cate" onclick="location.replace('/boardList.do')">공지사항</td>
				</table>
				<div class="welcome_user" onclick="location.replace('/loginForm.do')">
					<div>
						
          <div class="welcome_name">로그아웃</div>
					</div>
					<div class="logout_btn" ><i class="fa fa-sign-out" aria-hidden="true"></i></div>
				</div>
				<br>
			</div>
		</form>
		<form name="gyeoljaeDetailForm" class="gyeoljaeForm boardForm">
			<header>결재 내용 상세보기</header>
			<div class="gyeoljaeDetail_desc">
				<div>
					<div> 등록일 : ${gyeoljaeDTO.reg_date}</div>
				</div>
				<div>
					<div class="gyeoljae_progress">결재상태 : ${gyeoljaeDTO.gyeoljae_progress}</div>
				</div>
				<div>
					<div class="writer">요청자 : ${gyeoljaeDTO.writer}</div>
				</div>
				<div>
					<div class="title">제목 : ${gyeoljaeDTO.title}</div>
				</div>
				<div>
					<textarea name="content" class="content" style="border: 1px solid lightgrey; padding: 15px;" readonly>내용 : ${gyeoljaeDTO.content}</textarea>
				</div>
					<c:if test="${gyeoljaeDTO.gyeoljae_progress!='미결'}">
					<div>
						<div> 결재일시 : ${gyeoljaeDTO.gyeoljae_progress_date}</div>
					</div>
					</c:if>
			</div>
					
			<div>
				<span class="backList" onClick="goGyeoljaeListForm();">
					<i class="fa fa-bars" aria-hidden="true"></i>
					<span>목록</span>
				</span>
				<c:if test="${gyeoljaeDTO.gyeoljae_progress!='반려' && gyeoljaeDTO.gyeoljae_progress!='승인'}">
				<c:if test="${sessionScope.mid==gyeoljaeDTO.mid}">
				<span class="backList alterBoard" onClick="goGyeoljaeUpDelForm();">
					<i class="fa fa-pencil-square-o" aria-hidden="true"></i>
					<span>수정/삭제</span>
				</span>
				</c:if>
				<c:if test="${sessionScope.mid=='xyz'}">
				<span class="backList alterBoard" onClick="result('승인');">
					<i class="fa fa-pencil-square-o" aria-hidden="true"></i>
					<span>승인</span>
				</span>
				<span class="backList alterBoard" onClick="result('반려');">
					<i class="fa fa-pencil-square-o" aria-hidden="true"></i>
					<span>반려</span>
				</span>
				</c:if>
				</c:if>
			</div>
				
		</form>
		<div class="hidden">
			<form name="gyeoljaeListForm" method="post" action="/gyeoljaeList.do"> 
			</form>
			
			<form name="gyeoljaeUpDelForm" method="post" action="/gyeoljaeUpDelForm.do"> 
				<input type="hidden" name="gyeoljae_num" value="${requestScope.gyeoljaeDTO.gyeoljae_num}">
			</form>
			<form name="resultText">
			<input type="text" name="result">
				<input type="hidden" name="gyeoljae_num" value="${requestScope.gyeoljaeDTO.gyeoljae_num}">
			</form>
		</div>
</body>
</html>








