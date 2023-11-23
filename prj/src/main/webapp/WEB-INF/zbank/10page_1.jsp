<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/common.jsp"%>

<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>10페이지 팝업</title>


<script>   
    $(function(){ init(); });
    function init(){
    }
    
 </script>
 </head>
 <body>
    <form>
    <table border="1" cellpadding="5" cellspacing="0" style="border-collapse:collapse">
         <tr>[프로젝트]/[프로젝트 현황] 입력 화면
         
         <tr>
             <td colspan="6">파견 개발자 검색</td>
         </tr>
             <td>파견시작일</td><td><input type="date" name="min_start_dispatch_date">~<input type="date" name="max_start_dispatch_date"></td>
             <td><input type="button" value="비움"></td>
         <tr>
            <td>파견시작일</td><td><input type="date" name="min_end_dispatch_date">~<input type="date" name="max_end_dispatch_date"></td>
            <td><input type="checkbox" value="파견종료일확정">파견종료일확정</td>
            <td><input type="button" name="reset" value="비움"></td>
         </tr>
         <tr>
             <td>파견단계</td>
             <td><input type="checkbox" name="dispatch_level" value="1">이력서제출
                <input type="checkbox" name="dispatch_level" value="2">면접예정
                <input type="checkbox" name="dispatch_level" value="3">면접합격
                <input type="checkbox" name="dispatch_level" value="4">면접불합격
                <input type="checkbox" name="dispatch_level" value="5">파견확정
                <input type="checkbox" name="dispatch_level" value="6">파견중
                <input type="checkbox" name="dispatch_level" value="7">종료</td>
                <td><input type="button" name="reset" value="비움"></td>
         </tr>
         <tr>
             <td>년차</td>
             <td>
                <select name="min_worked_year">
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
                <select name="max_worked_year">
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
            <td><input type="button" name="reset" value="비움"></td>
         </tr>
         <tr>
             <td>소유기술</td><td>
                <select>
                    <option value=""></option>
                    <option value="데이터얻기">데이터얻기</option>
                </select>
                and
                <select>
                    <option value=""></option>
                    <option value="데이터얻기">데이터얻기</option>
                </select>
                and
                <select>
                    <option value=""></option>
                    <option value="데이터얻기">데이터얻기</option>
                </select>
                and
                <select>
                    <option value=""></option>
                    <option value="데이터얻기">데이터얻기</option>
                </select>
             </td>
             <td><input type="button" value="비움"></td>
         </tr>
         <tr>
             <td>소유자격증</td>
             <td>
                <input type="checkbox" value="1">정보처리기사
                <input type="checkbox" value="2">정보처리산업기사
             </td>
             <td><input type="button" value="비움"></td>
             
         </tr>
         <tr>
             <td>역할</td>
             <td>
                <input type="checkbox" value="1">개발
                <input type="checkbox" value="2">운영
                <input type="checkbox" value="3">분석설계
                <input type="checkbox" value="4">PL
                <input type="checkbox" value="5">PM
                <input type="checkbox" value="6">웹디
                <input type="checkbox" value="7">publisher
             </td>
             <td><input type="button" value="비움"></td>
         </tr>
         <tr>
             <td>학력</td>
             <td>
                <input type="checkbox" value="1">고졸
                <input type="checkbox" value="2">전문대졸
                <input type="checkbox" value="3">일반대학사졸
                <input type="checkbox" value="4">일반대석사졸
                <input type="checkbox" value="5">일반대박사졸
             </td>
             <td><input type="button" value="비움"></td>
         </tr>
         <tr>
             <td>키워드</td><td><input type="text" maxlength="30">
            <select>
                <option value="or">or</option>
                <option value="and">and</option>
            </select>
            <input type="text" maxlength="30"></td>
             <td><input type="button" value="비움"></td>
         </tr>

     </table>
     <table border="1" cellpadding="5" cellspacing="0" style="border-collapse:collapse">
     <tr>
         <td colspan="10"></td>
        <td>검색개수->~개</td>
         <td>
            <select>
                <option value="10행보기">10행보기</option>
                <option value="15행보기">15행보기</option>
                <option value="20행보기">20행보기</option>
            </select></td>
     </tr>
     <tr>
         <td>개발자명</td>
         <td>년차</td>
         <td>전화</td>
         <td>이메일</td>
         <td>파견단계</td>
         <td>역할</td>
         <td>파견시작일</td>
         <td>파견종료일</td>
         <td>파견종료일확정</td>
         <td>파견단가(만원)</td>
         <td>기타</td>
         <td rowspan="2"><input type="button" value="추가"></td>
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
     </tr>
     </table>
    </form>
 </body>
 </html>