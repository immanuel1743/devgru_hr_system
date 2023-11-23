<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/common.jsp" %>
    
<!DOCTYPE html>
<html>
<head>
<title>공지사항</title>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/boardList.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" integrity="sha512-5A8nwdMOWrSz20fDsjczgUidUBR8liPYU+WymTZP1lmY9G6Oc7HlZv156XqnsgNUzTyMefFTcsFH/tnJE/+xBg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<script>
	window.onload = function(){search()};

	function pageNoClick(
		clickPageNo 
	){
	
		var formObj = $("[name='boardSearchForm']");
		formObj.find("[name='selectPageNo']").val(clickPageNo);
		search();
	}
	
	function sortThClick(
		ascDesc  
	){
		 	$("[name='boardSearchForm'] [name='sort']").val(ascDesc);
			search();
	}
	
	function search(){
		ajax(
				"/boardList.do"
				,"post"
				,$("[name='boardSearchForm']")
				,function(responseHtml){
					var obj = $(responseHtml);
					var searchResultCnt = obj.find(".searchResultCnt").html();
					var searchResult = obj.find(".search_list").html();
					var pageNos = obj.find(".pageNos").html();

					var html = 
					'<div class="isEmpty"><i class="fa fa-search" aria-hidden="true"></i>검색 결과가 없습니다.</div>';

					$(".searchResultCnt").html( searchResultCnt );
					$(".search_list").html( searchResult );
					$(".pageNos").html( pageNos );
					$('.searchResultCnt, .pageNos').show();

					if($('.impect').text() == 0 || $('.impect').text() == '0') {
						$(".search_list").html( html );
						$('.searchResultCnt, .pageNos').hide();
					}
				}
		);
	}
	function goBoardDetailForm(b_no){
		$("[name='boardDetailForm'] [name='b_no']").val(b_no);
		document.boardDetailForm.submit();
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
	<form name="boardSearchForm" class="boardForm">
		<header>공지사항</header>
		<table class="search_bar"> 
			<tr>
				<td class="searchbar_box">
					<input type="text" name="keyword1">

					<input class="search_btn" type="button" value="검색" onclick="search()">
					<c:if test="${sessionScope.mid=='xyz'}">
					<span onclick="location.replace('/boardRegForm.do');" class="newBoard_btn">[새글쓰기]</span>
					</c:if>
				</td>
			</tr>
		</table>
		<input type="hidden" name="selectPageNo" value="1">
		
		<input type="hidden" name="sort">
		<table>
	        <section class="count_desc">
	          <section class="searchResultCnt">
	              <div class="impect">전체 : ${requestScope.boardMap.boardListCnt} 개</div> 
	         </section>
	          
	            <select name="rowCntPerPage" onChange="search()" class="rownum">
	                  <option value="10">10 
	                  <option value="15">15 
	                  <option value="20">20 
	            </select>&nbsp;행 
	        </section>
		</table>
		<div>
			
		
		</div>
	
		<div class="search_list">	
			<div>
				<c:forEach var="board" items="${requestScope.boardMap.boardList}" varStatus="vs">
					<div onClick="goBoardDetailForm(${board.b_no})" class="search_con">
						<div class="b_no">${requestScope.boardMap.begin_serialNo_desc-vs.index}</div> 
						<div class="subject">${board.subject}</div>
						<div class="writer">${board.writer}</div>
						<div class="view_i">
							<div class="reg_date list_reg">
								<i class="fa fa-calendar-o" aria-hidden="true"></i>
                <span class="reg_date">${board.reg_date}</span>
							</div>
							<div class="readcount">
								<i class="fa fa-eye" aria-hidden="true"></i>
                <span>${board.readcount}</span>
							</div> 
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
		<div class="pageNos"> 
			<span onClick="pageNoClick(1)"><i class="fa fa-angle-left" aria-hidden="true"></i><i class="fa fa-angle-left" aria-hidden="true"></i></span>
			<span onClick="pageNoClick(${requestScope.boardMap.selectPageNo}-1)"><i class="fa fa-angle-left" aria-hidden="true"></i></span>
			<c:forEach var="pageNo" begin="${requestScope.boardMap.begin_pageNo}" end="${requestScope.boardMap.end_pageNo}">
				<c:if test="${requestScope.boardMap.selectPageNo==pageNo}">
					<span class="isClick">${pageNo}</span>
				</c:if>
				<c:if test="${requestScope.boardMap.selectPageNo!=pageNo}">
					<span class="unClick" onClick="pageNoClick(${pageNo})">${pageNo}</span>
				</c:if>
			</c:forEach>
			<span onClick="pageNoClick(${requestScope.boardMap.selectPageNo}+1)"><i class="fa fa-angle-right" aria-hidden="true"></i></span>
			<span onClick="pageNoClick(${requestScope.boardMap.last_pageNo})"><i class="fa fa-angle-right" aria-hidden="true"></i><i class="fa fa-angle-right" aria-hidden="true"></i></span>
		</div>
	</form>

	<div>
		<form name="boardDetailForm" action="/boardDetailForm.do" post="post">
			<input type="hidden" name="b_no">
		</form>
	</div>
</body>
</html>