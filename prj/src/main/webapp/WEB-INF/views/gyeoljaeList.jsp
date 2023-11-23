<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/common.jsp" %>
    
<!DOCTYPE html>
<html>
<head>
<title>결재</title>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/gyeoljaeList.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" integrity="sha512-5A8nwdMOWrSz20fDsjczgUidUBR8liPYU+WymTZP1lmY9G6Oc7HlZv156XqnsgNUzTyMefFTcsFH/tnJE/+xBg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<script>
$(function(){init();})

function init(){ 
    search(); 
}
   function progress(e, progress_text){
      var formObj = $("[name='gyeoljaeSearchForm']");
      formObj.find("[name='progress']").val(progress_text);
      search();
      $(e).addClass('active').siblings('span').removeClass('active');
   }   

   function pageNoClick(
      clickPageNo    
   ){
      var formObj = $("[name='gyeoljaeSearchForm']");

      formObj.find("[name='selectPageNo']").val(clickPageNo);
      search();
   }
   
   function sortThClick(
      ascDesc   
   ){
          $("[name='gyeoljaeSearchForm'] [name='sort']").val(ascDesc);
         search();
   }
   
   function search(){
      ajax(
            "/gyeoljaeList.do"
            ,"post"
            ,$("[name='gyeoljaeSearchForm']")
            ,function(responseHtml){
               var obj = $(responseHtml);
               console.log(responseHtml);
               var searchResultCnt = obj.find(".impect").html();
               var searchResult = obj.find(".search_list").html();
               var pageNos = obj.find(".pageNos").html();
               
               var progress = obj.find(".searchResultCnt").find("[name='progress']").html();
               var html = 
               '<div class="isEmpty"><i class="fa fa-search" aria-hidden="true"></i>검색 결과가 없습니다.</div>';
            
               $(".impect").html( searchResultCnt );
               $(".search_list").html( searchResult );
               $(".pageNos").html( pageNos );
               $("[name='progress']").html(progress);
               $('.search_header, .pageNos').show();

               if($('.impect').text() == 0 || $('.impect').text() == '0') {
                  $(".search_list").html(html);
                  $('.search_header, .pageNos').hide();
               } 
            }
      );
   }
   function goGyeoljaeDetailForm(gyeoljae_num){
      $("[name='gyeoljaeDetailForm'] [name='gyeoljae_num']").val(gyeoljae_num);
      document.gyeoljaeDetailForm.submit();
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
                  </tr>
            </table>
            <div class="welcome_user"  onclick="location.replace('/loginForm.do')">
               <div>
                  
          <div class="welcome_name">로그아웃</div>
               </div>
               <div class="logout_btn"><i class="fa fa-sign-out" aria-hidden="true"></i></div>
            </div>
            <br>
         </div>
      </form>
   <form name="gyeoljaeSearchForm" class="boardForm" action="hh">
      <header>결재</header>
      <table class="search_bar"> 
         <tr>
            <td class="searchbar_box">
               <input type="text" name="keyword1">

               <input class="search_btn" type="button" value="검색" onclick="search()">
               <span onclick="location.replace('/gyeoljaeRegForm.do');" class="newBoard_btn">[결재 작성]</span>
               
         <input type="hidden" name="progress">
         <input type="hidden" name="dev_id" value="${sessionScope.mid}">
         
            </td>
         </tr>
      </table>
      <input type="hidden" name="selectPageNo" value="1">
      
      <input type="hidden" name="sort">
      <span class="searchResultCnt">
         <div>
            전체 <span class="impect">${requestScope.gyeoljaeMap.gyeoljaeListCnt}</span> 건 
         </div>
         
         <span class="all isCate active" style="cursor:pointer" onclick="progress(this, '전체')">전체</span>
         <span class="yet isCate" style="cursor:pointer" onclick="progress(this, '미결')">미결</span>
         <span class="okay isCate" style="cursor:pointer" onclick="progress(this, '승인')">승인</span>
         <span class="deny isCate" style="cursor:pointer" onclick="progress(this, '반려')">반려</span>
         
         
         
         <div>
            <select name="rowCntPerPage" class="rowCntPerPage" onChange="search()">
               <option value="10">10
               <option value="15">15
               <option value="20">20
            </select>행보기
         </div>
      </span>
         <div class="search_header">
                  <div class="gyeoljae_progress">진행상황</div> 
                  <div class="subject">제목</div>
                  <div class="writer">결재자</div>
                  <div class="reg_date list_reg">등록일</div>
         </div>
         <div class="search_list">   
         <div>
            <c:forEach var="gyeoljae" items="${requestScope.gyeoljaeMap.gyeoljaeList}" varStatus="vs">
               <c:if test="${sessionScope.mid eq 'xyz' || sessionScope.mid eq gyeoljae.writer}">
                  <div onclick="goGyeoljaeDetailForm('${gyeoljae.gyeoljae_num}')" class="search_con">
                     <div class="gyeoljae_progress"><div>${gyeoljae.gyeoljae_progress}</div></div> 
                     <div class="subject">${gyeoljae.title}</div>
                     <div class="writer1">정선희 사장</div>
                     <div class="view_i">
                        <div class="reg_date list_reg">
                           <i class="fa fa-calendar-o" aria-hidden="true"></i>
                           <span class="reg_date">&nbsp;${gyeoljae.reg_date}</span>
                        </div>
                     </div>
                  </div>
               </c:if>
            </c:forEach>
         </div>
      </div>
      
      
      
      
      <div class="pageNos"> 
         <span onClick="pageNoClick(1)"><i class="fa fa-angle-left" aria-hidden="true"></i><i class="fa fa-angle-left" aria-hidden="true"></i></span>
         <span onClick="pageNoClick(${requestScope.gyeoljaeMap.selectPageNo}-1)"><i class="fa fa-angle-left" aria-hidden="true"></i></span>
         <c:forEach var="pageNo" begin="${requestScope.gyeoljaeMap.begin_pageNo}" end="${requestScope.gyeoljaeMap.end_pageNo}">
            <c:if test="${requestScope.gyeoljaeMap.selectPageNo==pageNo}">
               <span class="isClick">${pageNo}</span>
            </c:if>
            <c:if test="${requestScope.gyeoljaeMap.selectPageNo!=pageNo}">
               <span class="unClick" onClick="pageNoClick(${pageNo})">${pageNo}</span>
            </c:if>
         </c:forEach>
         <span onClick="pageNoClick(${requestScope.gyeoljaeMap.selectPageNo}+1)"><i class="fa fa-angle-right" aria-hidden="true"></i></span>
         <span onClick="pageNoClick(${requestScope.gyeoljaeMap.last_pageNo})"><i class="fa fa-angle-right" aria-hidden="true"></i><i class="fa fa-angle-right" aria-hidden="true"></i></span>
      </div>
   </form>

   <div>
      <form name="gyeoljaeDetailForm" action="/gyeoljaeDetailForm.do" post="post">
         <input type="hidden" name="gyeoljae_num" value="0">
      </form>
   </div>
</body>
</html>