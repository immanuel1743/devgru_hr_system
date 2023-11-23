<!--  mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm -->
<!-- JSP 기술의 한 종류인 [Page Directive]를 이용하여 현 JSP 페이지 처리 방식 선언하기 -->
<!--  mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm -->
   <!-- 현재 이 JSP 페이지 실행 후 생성되는 문서는 HTML이고 이 문서 안의 데이터는 UTF-8 방식으로 인코딩한다 라고 설정함. -->
   <!-- 현재 이 JSP 페이지를 정할 때는 UTF-8 방식으로 인코딩한다. -->
   <!-- 모든 JSP 페이지 상단에 무조건 아래 설정이 들어간다. -->
   <%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
  <!-- mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm -->
  <!-- JSP 기술의 한 종류인 [Include Directive]를 이용하여 -->
  <!-- common.jsp 파일 내의 소스를 삽입하기 -->
  <!-- mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm -->
  <%@include file="/WEB-INF/views/common.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Document</title>
<script>
   $(function(){init();});
   function init(){
         var formObj = $("[name='dispatch_search']");  
         /*
       formObj.find("[name='min_worked_month']").val("");   
       formObj.find("[name='max_worked_month']").val("");      
       formObj.find("[name='min_dispatch_start_date']").val("");
       formObj.find("[name='max_dispatch_start_date']").val("");
       formObj.find("[name='min_dispatch_finish_date']").val("");
       formObj.find("[name='max_dispatch_finish_date']").val("");
       formObj.find("[name='min_dispatch_cost']").val("");
       formObj.find("[name='max_dispatch_cost']").val("");
       formObj.find("[name='min_worked_year']").val("");
       formObj.find("[name='max_worked_year']").val(""); 
       formObj.find("[name='keyword1']").val("");
       formObj.find("[name='keyword2']").val(""); 
       */
   }
   
   //--------------------------------------------------------------   
   function searchData(){  
       
          var formObj = $("[name='dispatch_search']");                                                // form 태그
          var checkObj_min_worked_month = $("[name='min_worked_month']");                  // min 파견기간
          var checkObj_max_worked_month = $("[name='max_worked_month']");                  // max 파견기간
          var checkObj_min_dispatch_start_date = $("[name='min_dispatch_start_date']");      // min 파견시작일
          var checkObj_max_dispatch_start_date = $("[name='max_dispatch_start_date']");      // max 파견시작일
          var checkObj_min_dispatch_finish_date = $("[name='min_dispatch_finish_date']");      // min 파견종료일
          var checkObj_max_dispatch_finish_date = $("[name='max_dispatch_finish_date']");      // max 파견종료일
          var checkObj_min_dispatch_cost = $("[name='min_dispatch_cost']");                   // min 파견 단가
          var checkObj_max_dispatch_cost = $("[name='max_dispatch_cost']");                 // max 파견 단가
          var checkObj_min_worked_year = $("[name='min_worked_year']");                     // min 년차
          var checkObj_max_worked_year = $("[name='max_worked_year']");                    // max 년차
          var checkObj_keyword1 = $("[name='keyword1']");                                   // 키워드1 
          var checkObj_keyword2 = $("[name='keyword2']");                                   // 키워드2
       
        // 파견 기간 유효성 체크
       if(checkObj_min_worked_month.val()>checkObj_max_worked_month.val()){
          alert("최소 파견 기간은 최대 파견 기간을 넘을 수 없습니다.")
       return;}

        // 파견 시작일 유효성 체크
       if(checkObj_min_dispatch_start_date.val()>checkObj_max_dispatch_start_date.val()){
          alert("최소 파견 시작일은 최대 파견 시작일을 넘을 수 없습니다.")
       return;}

        // 파견 종료일 유효성 체크
       if(checkObj_min_dispatch_finish_date.val()>checkObj_max_dispatch_finish_date.val()){
          alert("최소 파견 종료일은 최대 파견 종료일을 넘을 수 없습니다.")
       return;}

       // 파견 단가 유효성 체크
       if(checkObj_min_dispatch_cost.val()>checkObj_max_dispatch_cost.val()){
          alert("최소 파견 단가는 최대 파견 단가를 넘을 수 없습니다.")
       return;}
       
       // 년차 유효성 체크
       if(checkObj_min_worked_year.val()>checkObj_max_worked_year.val()){
          alert("최소 년차는 최대 년차를 넘을 수 없습니다.")
       return;}

       if(checkObj_keyword1.val()!=""){
          var a = checkObj_keyword1.val().trim();
          checkObj_keyword1.val(a);
            return;
       }

        if(checkObj_keyword2.val()!=""){
          var a = checkObj_keyword2.val().trim();
          checkObj_keyword2.val(a);
            return;
       }
   }
</script>
</head>
<style>
</style>
<body>
<form name="dispatch_search">
   <table>
       <td>
           [파견 현황] 검색
       </td>
   </table><br>
  <table>
   <tr>
       <th>파견 기간</th>
       <td>
       <select name="min_worked_month">
           <option  value=""></option>
           <c:forEach var="nMonth" begin="0" end="12">
           <c:choose>
               <c:when test="${nMonth lt 10 }">
                   <option value="0${nMonth}">0${nMonth}</option>
               </c:when>
               <c:otherwise>
                   <option value="${nMonth}">${nMonth}</option>
               </c:otherwise>
           </c:choose>
           </c:forEach>
       </select>
       개월~
       <select name="max_worked_month">
           <option value=""></option>
           <c:forEach var="nMonth" begin="0" end="12">
           <c:choose>
               <c:when test="${nMonth lt 10 }">
                   <option value="0${nMonth}">0${nMonth}</option>
               </c:when>
               <c:otherwise>
                   <option value="${nMonth}">${nMonth}</option>
               </c:otherwise>
           </c:choose>
           </c:forEach>
       </select>
       개월
       </td>
   </tr>
   <tr>
       <th>파견시작일</th>
       <td>
           <input type="month" name="min_dispatch_start_date"> ~
           <input type="month" name="max_dispatch_start_date">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <input type="button" value="비움"> 
       </td>
   </tr>
   <tr>
   <th>파견종료일</th>
       <td>
           <input type="month" name="min_dispatch_finish_date"> ~
           <input type="month" name="max_dispatch_finish_date">&nbsp;&nbsp;
           <input type="checkbox" name="dispatch_finish_date" value="종료일확정">종료일확정
           <input type="checkbox" name="dispatch_finish_date" value="종료일미확정">종료일미확정&nbsp;&nbsp;
           <input type="button" name="reset" value="비움"> 
       </td>
   </tr>
   <tr>
       <th>파견진행단계</th>
           <td>
           <input type="checkbox" name="dispatch_Progress_Stage" value="이력서제출">이력서제출
           <input type="checkbox" name="dispatch_Progress_Stage" value="면접예정">면접예정
           <input type="checkbox" name="dispatch_Progress_Stage" value="면접합격">면접합격
           <input type="checkbox" name="dispatch_Progress_Stage" value="면접불합격">면접불합격
           <input type="checkbox" name="dispatch_Progress_Stage" value="파견확정">파견확정
           <input type="checkbox" name="dispatch_Progress_Stage" value="파견중">파견중
           <input type="checkbox" name="dispatch_Progress_Stage" value="종료">종료&nbsp;&nbsp;
           <input type="button" value="비움"> 
           </td>
   </tr>
   <tr>
       <th>파견 단가</th>
           <td>
               <input type="number" name="min_dispatch_cost">만원 ~
               <input type="number" name="max_dispatch_cost">만원
           </td>
   </tr>
   <tr>
       <th>년차</th>
       <td>
       <select name="min_worked_year">
           <option  value=""></option>
           <c:forEach var="nYear" begin="0" end="15">
           <c:choose>
               <c:when test="${nYear lt 10 }">
                   <option value="0${nYear}">0${nYear}</option>
               </c:when>
               <c:otherwise>
                   <option value="${nYear}">${nYear}</option>
               </c:otherwise>
           </c:choose>
           </c:forEach>
       </select>
       년차~
       <select name="max_worked_year">
           <option value=""></option>
           <c:forEach var="nYear" begin="0" end="15">
           <c:choose>
               <c:when test="${nYear lt 10 }">
                   <option value="0${nYear}">0${nYear}</option>
               </c:when>
               <c:otherwise>
                   <option value="${nYear}">${nYear}</option>
               </c:otherwise>
           </c:choose>
           </c:forEach>
       </select>
       년차
       </td>
   </tr>
   <tr>
       <th>역할</th>
           <td>
           <input type="checkbox" name="dispatch_role" value="개발">개발
           <input type="checkbox" name="dispatch_role" value="운영">운영
           <input type="checkbox" name="dispatch_role" value="분석설계">분석설계
           <input type="checkbox" name="dispatch_role" value="PM">PM
           <input type="checkbox" name="dispatch_role" value="PL">PL
           <input type="checkbox" name="dispatch_role" value="웹디">웹디
           <input type="checkbox" name="dispatch_role" value="기타">기타&nbsp;&nbsp;
           <input type="button" name="reset" value="비움"> 
           </td>
   </tr>
   <tr>
       <th>키워드</th>
           <td>
           <input type="text" name="keyword1" size="30">
           <select name="orand">
               <option value="or">or
               <option value="and">and
           </select>
           <input type="text" name="keyword2" size="30">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <input type="button" name="reset" value="비움"> 
           </td>
   </tr>
   </table>
   <br>
   <div>
   <input type="button" onclick="searchData();" name="search" value="검색">
   <input type="button" name="desc_btn" value="위 검색 조건 저장">&nbsp;&nbsp;&nbsp;
   <input type="button" name="desc_btn" value="초기화 후 전부검색">
   </div>
   <br>
  <div>
  <input type="button" name="select_cnt" value="검색개수=>~개">&nbsp;&nbsp;&nbsp;
  <select name="rowCntPerPage">
       <option value="10행보기">10행보기
       <option value="15행보기">15행보기
       <option value="20행보기">20행보기
       </option>
  </select>
  </div>
  <table>
   <tr>
       <th>파견개발자명</th>
       <th>핸드폰</th>
       <th>이메일</th>
       <th>파견단계</th>
       <th>프로젝트명</th>
       <th>현재년차</th>
       <th>파견시년차</th>
       <th>역할</th>
       <th>파견기간(개월)</th>
       <th>파견시작일</th>
       <th>파견종료일</th>
       <th>종료일확정</th>
       <th>종료일카운트</th>
       <th>파견단가(만원)</th>
       <th>협력업체</th>
   </tr>
   <tr>
       <td></td>
       <td></td>
       <td></td>
       <td></td>
       <td></td>
       <td></td>
       <td></td>
       <td></td>
       <td></td>
       <td></td>
       <td></td>
       <td></td>
       <td></td>
       <td></td>
       <td></td>
   </tr>
  </table>
   <div class="pageNos" align="center">
     <!-- ============================================== -->
     <!-- [처음], [이전] 출력하기 -->
     <!-- ============================================== -->
     <span style="cursor:pointer">[처음]</span>
     <span style="cursor:pointer">[이전]</span>&nbsp;&nbsp;
     
     <!-- ============================================== -->
     <!-- [다음], [마지막] 출력하기 -->
     <!-- ============================================== -->
     <span style="cursor:pointer">[다음]</span>
     <span style="cursor:pointer">[마지막]</span>
      
  </div>
   </form>
</body>
</html>