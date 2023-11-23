<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/common.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>새글쓰기</title>
<link rel="stylesheet" href="css/boardReg.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" integrity="sha512-5A8nwdMOWrSz20fDsjczgUidUBR8liPYU+WymTZP1lmY9G6Oc7HlZv156XqnsgNUzTyMefFTcsFH/tnJE/+xBg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<script>
	function init(){
	}
	
	function goBoardListForm(){
		document.boardListForm.submit();
	}

	function checkBoardRegForm(){
		var formObj = $("[name='boardRegForm']");

		if( !checkSubject(formObj.find("[name='subject']"))  ) { return; }
		if( !checkContent(formObj.find("[name='content']"))  ) { return; }
		

		if( confirm("정말 등록하시겠습니까?")==false ) { return; }
		
		ajax(
				"/boardRegProc.do"
				,"post"
				,formObj
				,function(responseJson){
					var errorMsg    = responseJson["errorMsg"];
					var boardRegCnt = responseJson["boardRegCnt"]; 
					if( errorMsg=="" && boardRegCnt==1 ){
						alert("새글 쓰기 성공!");
						goBoardListForm();
					}
					else{
						alert( errorMsg + ". ${empty param.mom_b_no?'새글':'댓글'}쓰기 실패!");
					}
				}
		);
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
          </tr>
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
	<form name="boardRegForm" class="boardForm">
    <header>공지사항 작성</header>
    <div class="boardDetail_desc">
      <div class="subject_box">
        <div class="subject">제목</div>
        <input type="text" name="subject" class="subject textarea" size="40" maxlength="80">
      </div>
      <div class="subject_box">
        <div class="subject">작성자</div>
        <input type="text" name="writer" class="subject textarea" size="40" maxlength="30">
      </div>
    </div>
    <div class="boardDetail_desc">
      <div class="subject_box content">
        <textarea name="content"  class="content" rows="13" cols="40"  
        maxlength="500" placeholder="본문 내용은 최대 500자 입력"></textarea>
      </div>
    </div>
        <input type="file" name="img">
      <div class="btn_box">
        <span class="backList" onClick="checkBoardRegForm()">
          <i class="fa fa-floppy-o" aria-hidden="true"></i>
          <span>저장</span>
        </span>
        <span class="backList" onClick="goBoardListForm();">
          <i class="fa fa-bars" aria-hidden="true"></i>
          <span>목록</span>
        </span>
      </div>
	</form>
	
  <div>
    <form name="boardListForm" method="post" action="/boardList.do">
    </form>
  </div>
</body>
</html>
