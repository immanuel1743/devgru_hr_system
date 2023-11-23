<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/common.jsp"%>

<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>10페이지 프로젝트검색</title>


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
        */
    }
    
    //--------------------------------------------------------------   
    function searchData(){  
        
           var formObj = $("[name='prj_search']");                                                // form 태그
           
           var checkObj_min_dispatch_start_date = $("[name='min_dispatch_start_date']");                // min 파견 시작일
           var checkObj_max_dispatch_start_date = $("[name='max_dispatch_start_date']");                // max 파견 시작일
           var checkObj_min_dispatch_finish_date = $("[name='min_dispatch_finish_date']");      		// min 파견 종료일
           var checkObj_max_dispatch_finish_date = $("[name='max_dispatch_finish_date']");      		// max 파견 종료일
           var checkObj_min_dispatchTerm = $("[name='min_dispatchTerm']");      						// min 파견 기간
           var checkObj_max_dispatchTerm = $("[name='max_dispatchTerm']");								// max 파견 기간
           var checkObj_min_dev_year = $("[name='min_dev_year']");                   					// min 개발 년차
           var checkObj_max_dev_year = $("[name='max_dev_year']");                 						// max 개발 년차
           var checkObj_min_operate_year = $("[name='min_operate_year']");                  			// min 운영 년차
           var checkObj_max_operate_year = $("[name='max_operate_year']");                    			// max 운영 년차
           var checkObj_min_design_year = $("[name='min_design_year']");                   				// min 디자이너 년차
           var checkObj_max_design_year = $("[name='max_design_year']");                 				// max 디자이너 년차
           var checkObj_min_publish_year = $("[name='min_publish_year']");                  			// min 퍼블리셔 년차
           var checkObj_max_publish_year = $("[name='max_publish_year']");                    			// max 퍼블리셔 년차
           var checkObj_min_reg_date = $("[name='min_reg_date']");                  					// min 접수일자
           var checkObj_max_reg_date = $("[name='max_reg_date']");                 			// max 퍼블리셔 년차
           var checkObj_keyword1 = $("[name='keyword1']");                  					// min 접수일자
           var checkObj_keyword2 = $("[name='keyword2']");                     					// max 접수일자
        
 
        if(checkObj_min_dispatch_start_date.val()>checkObj_max_dispatch_start_date.val()){
           alert("최소 파견 시작일은 최대 파견 시작일을 넘을 수 없습니다.")
        return;}
 
        if(checkObj_min_dispatch_finish_date.val()>checkObj_max_dispatch_finish_date.val()){
           alert("최소 파견 종료일은 최대 파견 종료일을 넘을 수 없습니다.")
        return;}
 
        if(checkObj_min_dispatchTerm.val()>checkObj_max_dispatchTerm.val()){
           alert("최소 파견 기간은 최대 파견 기간을 넘을 수 없습니다.")
        return;}
 
        if(checkObj_min_dev_year.val()>checkObj_max_dev_year.val()){
           alert("최소 개발년차는 최대 개발년차를 넘을 수 없습니다.")
        return;}
        
        if(checkObj_min_operate_year.val()>checkObj_max_operate_year.val()){
           alert("최소 운영년차는 최대 운영년차를 넘을 수 없습니다.")
        return;}

        if(checkObj_min_design_year.val()>checkObj_max_design_year.val()){
           alert("최소 디자이너년차는 최대 디자이너년차를 넘을 수 없습니다.")
        return;}

        if(checkObj_min_publish_year.val()>checkObj_max_publish_year.val()){
           alert("최소 퍼블리셔년차는 최대 퍼블리셔년차를 넘을 수 없습니다.")
        return;}

        if(checkObj_min_reg_date.val()>checkObj_max_reg_date.val()){
           alert("최소 접수일자는 최대 접수일자를 넘을 수 없습니다.")
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
 <body>
    <form name="prj_search">
    <table border="1" cellpadding="5" cellspacing="0" style="border-collapse:collapse">
         <tr>[프로젝트]/[프로젝트 현황] 검색 화면
         
         <tr>
             <td colspan="6">[프로젝트] 검색</td>
         </tr>
             <td>파견시작일</td>
             <td><input type="month" name="min_dispatch_start_date">~<input type="month" name="max_dispatch_start_date"></td>

             <td colspan="2">
                <input type="button" value="비움" name="reset">
            </td>
         <tr>
            <td>파견종료일</td>
            <td><input type="month" name="min_dispatch_finish_date">~<input type="month" name="max_dispatch_finish_date"></td>
            <td><input type="button" value="비움"></td>
         </tr>
         <tr>
             <td>파견기간</td>
             <td><select name="min_dispatchTerm">
                <option value=""></option>
                <c:forEach var="dispatchTerm" begin="3" end="12">
                <c:choose>
                    <c:when test="${dispatchTerm lt 10 }">
                        <option value="0${dispatchTerm}">0${dispatchTerm}</option>
                    </c:when>
                    <c:otherwise>
                        <option value="${dispatchTerm}">${dispatchTerm}</option>
                    </c:otherwise>
                </c:choose>
                </c:forEach>
            </select>
            개월~
            <select name="max_dispatchTerm">
                <option value=""></option>
                <c:forEach var="dispatchTerm" begin="3" end="12">
                <c:choose>
                    <c:when test="${dispatchTerm lt 10 }">
                        <option value="0${dispatchTerm}">0${dispatchTerm}</option>
                    </c:when>
                    <c:otherwise>
                        <option value="${dispatchTerm}">${dispatchTerm}</option>
                    </c:otherwise>
                </c:choose>
                </c:forEach>
            </select>
            </td>
            <td colspan="2"><input type="button" value="비움"></td>
         </tr>
         
        <tr><td colspan="4">------------------------------------------------------------------------------------------------------------------------------------</td></tr>

        <tr>
            <td>역할</td>
            <td>
                <input type="checkbox" name="role" value="1">개발
                <input type="checkbox" name="role" value="2">운영
                <input type="checkbox" name="role" value="3">퍼블리셔
                <input type="checkbox" name="role" value="4">웹디
            </td>    
        </tr> 

        <tr>
            <td>개발년차</td>
            <td colspan="3">
               <select name="min_dev_year">
                   <option value=""></option>
                   <c:forEach var="nYear" begin="0" end="20">
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
               <select name="max_dev_year">
                   <option value=""></option>
                   <c:forEach var="nYear" begin="0" end="20">
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
            <td>운영년차</td>
            <td colspan="3">
               <select name="min_operate_year">
                   <option value=""></option>
                   <c:forEach var="nYear" begin="0" end="20">
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
               <select name="max_operate_year">
                   <option value=""></option>
                   <c:forEach var="nYear" begin="0" end="20">
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
            <td>디자이너년차</td>
            <td colspan="3">
               <select name="min_design_year">
                   <option value=""></option>
                   <c:forEach var="nYear" begin="0" end="20">
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
               <select name="max_design_year">
                   <option value=""></option>
                   <c:forEach var="nYear" begin="0" end="20">
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
            <td>퍼블리셔년차</td>
            <td colspan="3">
               <select name="min_publish_year">
                   <option value=""></option>
                   <c:forEach var="nYear" begin="0" end="20">
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
               <select name="max_publish_year">
                   <option value=""></option>
                   <c:forEach var="nYear" begin="0" end="20">
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
            <td>자격증</td>
            <td>
                <input type="checkbox" name="license" value="1">정보처리기사필수
                <input type="checkbox" name="license" value="2">정보처리산업기사필수
            </td>    
        </tr> 

         <tr>
             <td>접수일자</td>
             <td><input type="month" name="min_reg_date">~<input type="month" name="max_reg_date"></td>
             <td colspan="2"><input type="button" value="비움" name="reset"></td>
         </tr>

         <tr>
            <td>키워드</td>
            <td><input type="text" name="keyword1" maxlength="30">
           <select name="orand">
               <option value="or">or</option>
               <option value="and">and</option>
           </select>
           <input type="text" name="keyword2" maxlength="30"></td>
            <td colspan="2"><input type="button" value="비움" name="reset"></td>
        </tr>
     </table>
     <table>
        <input type="button" onClick="searchData();"name="Search" value="검색">
        &nbsp;&nbsp;&nbsp;

        <input type="button" name="reset_allSearch" value="초기화 후 전부검색">
    </table>   
     <tr>
        <td colspan="13"></td>
        <td>검색개수->~개</td>

         <td>
           <select name="rowCntPerPage">
               <option value="10행보기">10행보기</option>
               <option value="15행보기">15행보기</option>
               <option value="20행보기">20행보기</option>
           </select></td>
    </tr>
     <table border="1" cellpadding="5" cellspacing="0" style="border-collapse:collapse">
        <tr>
            <td>프로젝트명</td>
            <td>접수일</td>
            <td>시작일</td>
            <td>종료일</td>
            <td>기간(개월)</td>
            <td>역할</td>
            
        </tr>
        <tr>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        </table>

        <div class="pageNos" align="center">
            <span style="cursor:pointer" onClick="pageNoClick(1)">[처음]</span>
            <span style="cursor:pointer" onClick="pageNoClick(${requestScope.boardMap.selectPageNo}-1)">
            [이전]</span>&nbsp;&nbsp;
             <c:forEach var="pageNo" begin="${requestScope.boardMap.begin_pageNo}" end="${requestScope.boardMap.end_pageNo}">
               <c:if test="${requestScope.boardMap.selectPageNo==pageNo}">
               ${pageNo}
               </c:if>
               <c:if test="${requestScope.boardMap.selectPageNo!=pageNo}">
                  <span style="cursor:pointer" onClick="pageNoClick(${pageNo})">[${pageNo}]</span>
               </c:if>  
            </c:forEach> 
            <span style="cursor:pointer" onClick="pageNoClick(${requestScope.boardMap.selectPageNo}+1)">[다음]</span>
            <span style="cursor:pointer" onClick="pageNoClick(${requestScope.boardMap.last_pageNo})">[마지막]</span>
            
            </div>        
    </form>
 </body>
 </html>