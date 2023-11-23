<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/common.jsp"%>

<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>[개발자] / [프리랜서] 입력화면</title>
  <script src="js/registFreeDev.js"></script>
  <link href="css/registFreeDev.css" rel="stylesheet">

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" integrity="sha512-5A8nwdMOWrSz20fDsjczgUidUBR8liPYU+WymTZP1lmY9G6Oc7HlZv156XqnsgNUzTyMefFTcsFH/tnJE/+xBg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<script>
  $(function(){init();});
  
  function checkRadio(e) {
    $(e).siblings('input').prop('checked', false);
  }

  function checkMax(e, max) {
    var getName = $(e).attr('name');

    if ($(e).val().length > max){
      $(e).val($(e).val().slice(0, max));
    }    
  }

  function dateEmpty(e, type) {
      var getVal = $(e).siblings('input');

      if(type=='date' || type=='text') {
         getVal.val('');
      }
      if(type=='checkbox' || type=='radio') {
         getVal.prop('checked', false);
      }
      if(type=='select') {
         $(e).siblings('select').val('');
      }
      $('.search').val('검색');
   }
   
  function dateNow() {
	  var now = new Date(),
	      offset = now.getTimezoneOffset() * 60000,
	      adjustedDate = new Date(now.getTime() - offset),
	      formattedDate = adjustedDate.toISOString().substring(0,16);

	  $('.consultation_time').val(formattedDate)
	};

  function goFreelancerSearchForm(){
      document.freelancerSearchForm.submit();
  }

  function checkSpace(obj){ 
    var a = $(obj),             
        b = a.val().replace(/ /gi, ''); 
    a.val(b); 
    if(a.attr('type') == 'number') {
      var maxLength = Number(a.attr('maxlength')),
            orgLength = a.val().length;

      if (orgLength > maxLength){
          var c = a.val().slice(0, maxLength);
          a.val(c);
      } 
    };
  };
   
    
function init(){
  var formObj = $("[name='freelancerRegForm']");   
}

function saveData(){
    var formObj = $("[name='freelancerRegForm']");                        
    var checkVal_fName = $("[name='fName']");                           
    var checkObj_gender = $("[name='gender']");                          
    var checkObj_phone = $("[name='phone']");                           
    var checkObj_email = $("[name='email']");                           
    var checkObj_birth_year = $("[name='birth_year']");                     
    var checkObj_highestLevel_edu = $("[name='highestLevel_edu']");            
    var checkObj_graduate_date = $("[name='graduate_date']");               
    var checkObj_resume_dev_year = $("[name='resume_dev_year']");            
    var checkObj_resume_dev_month = $("[name='resume_dev_month']");          
    var checkObj_dev_year_standard_date = $("[name='dev_year_standard_date']");   
    var checkObj_consultation_time = $("[name='consultation_time']");         
    var checkObj_job = $("[name='job']");                              
    var checkObj_skill = $("[name='skill_category_code']:checked");           
    var checkObj_role = $("[name='dispatch_role_code']");                 
    var checkObj_can_date = $("[name='can_dispatch_date']");               
    var checkObj_min_dev_cost = $("[name='min_dev_cost']");                  
    var checkObj_max_dev_cost = $("[name='max_dev_cost']");                 
    var checkObj_min_operate_cost = $("[name='min_operate_cost']");            
    var checkObj_max_operate_cost = $("[name='max_operate_cost']");          
    var checkObj_work_location = $("[name='free_can_work_location']:checked");   
    var checkObj_favorite_part = $("[name='favorite_part_code']:checked");     
    var checkObj_abode = $("[name='abode']");                           
          
    if(checkVal(
          checkVal_fName
          ,"이름은 2~15자리 한글 또는 영어이어야합니다."
          ,/^[가-힣a-z]{2,15}$/
      )==false){
          checkVal_fName.focus()
          return;
    }
    
    
    if(checkChecked(
      checkObj_gender
      ,"성별은 필수 체크사항입니다.")==false){
          return;
    }

    var pattern = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;

    if(pattern.test(checkObj_email.val()) == false) {
              alert('이메일 형식에 맞지 않습니다.');
        checkObj_email.focus();
        return;
    }
   
    if(checkVal(
          checkObj_phone
          ,"핸드폰은 010으로 시작하는 11자리 숫자이어야합니다."
          ,/^010[0-9]{8}$/
      )==false){
          checkObj_phone.focus()
          return;
    }
           
    if(checkVal(
          checkObj_birth_year
          ,"출생년도는 4자리 숫자이어야합니다."
          ,/^[0-9]{4}$/
      )==false){
      checkObj_birth_year.focus()
          return;
    }

    if(checkVal(
          checkObj_highestLevel_edu
          ,"최종학력은 필수 선택사항입니다."
          ,/^[^ ]{1}$/
      )==false){
      checkObj_highestLevel_edu.focus()
          return;
    }

    if($('.graduate_date').val()==null || $('.graduate_date').val()==''){
      alert("졸업년도 필수 입력 사항입니다.");
      $('.graduate_date').focus();
      return;
    }

    if(checkObj_resume_dev_year.val()==""){
      alert("이력서 상 개발년차>년 항목은 필수 선택사항입니다.")
      checkObj_resume_dev_year.focus()
          return;
    }
           
    if(checkObj_resume_dev_month.val()==""){
      alert("이력서 상 개발년차>월 항목은 필수 선택사항입니다.")
      checkObj_resume_dev_month.focus()
          return;
    }

    if(checkObj_dev_year_standard_date.val()==""){
      alert("이력서 상 개발년차 이력 확인일은 필수 입력 사항입니다.")
      checkObj_dev_year_standard_date.focus()
          return;
    }
        
    if(checkChecked(
     checkObj_job
      ,"현재 직업은 필수 체크사항입니다.")==false){
      return;
    }
  
    if(checkObj_skill.length==0) {
      alert("스킬 분야는 필수 체크사항입니다.");
      return;
    }

    if(checkChecked(
    checkObj_role
    ,"파견 역할은 필수 체크사항입니다.")==false){
       return;
  }
  

    if($('.can_dispatch_date').val()==null || $('.can_dispatch_date').val()=='') {
      alert("파견가능일은 필수 입력사항입니다..");
      $('.can_dispatch_date').focus();
      return;
    }

  
  if(checkObj_min_dev_cost.val()==""&&checkObj_max_dev_cost.val()==""
        &&checkObj_min_operate_cost.val()==""&&checkObj_max_operate_cost.val()==""){
    alert("개발단가와 운영단가 중 반드시 하나는 입력해야합니다.");
    checkObj_min_dev_cost.focus();
    return;
  }
           
  if(checkObj_min_dev_cost.val()!=""||checkObj_max_dev_cost.val()!=""){
    if(checkVal(
          checkObj_min_dev_cost
          ,"개발단가는 3자리 이상 숫자이어야합니다."
          ,/^[0-9]{3,}$/
        )==false){
        checkObj_min_dev_cost.focus()
        return;
    }
    else if(checkVal(
            checkObj_max_dev_cost
            ,"개발단가는 3자리 이상 숫자이어야합니다."
            ,/^[0-9]{3,}$/
          )==false){
          checkObj_max_dev_cost.focus()
          return;
        }
    if(checkObj_min_dev_cost.val()>checkObj_max_dev_cost.val()){
          alert("최소 개발 단가는 최대 개발 단가를 초과할 수 없습니다.");
    checkObj_min_dev_cost.focus();
          return;
    }
  }

  if(checkObj_min_dev_cost.val()!='' &&  checkObj_max_dev_cost.val()!='') {
    if($("[name='how_dev_cost']:checked").length==0) {
        alert("개발 단가 고정, 협의 여부를 선택해 주세요");
        return;
    }
  }


  if(checkObj_min_operate_cost.val()!=""||checkObj_min_operate_cost.val()!=""){
    if(checkVal(
          checkObj_min_operate_cost
          ,"운영단가는 3자리 이상 숫자이어야합니다."
          ,/^[0-9]{3,}$/
      )==false){
      checkObj_min_operate_cost.focus()
      return;
    }
    else if(checkVal(
          checkObj_max_operate_cost
            ,"운영단가는 3자리 이상 숫자이어야합니다."
            ,/^[0-9]{3,}$/
        )==false){
      checkObj_max_operate_cost.focus()
          return;
      }
    if(checkObj_min_operate_cost.val()>checkObj_max_operate_cost.val()){
          alert("최소 운영 단가는 최대 운영 단가를 초과할 수 없습니다.");
    checkObj_min_operate_cost.focus();
          return;
    }
  }

  if(checkObj_min_operate_cost.val()!='' || checkObj_max_operate_cost.val()!='') {
    if($("[name='how_operate_cost']:checked").length==0) {
        alert("운영 단가 고정, 협의 여부를 선택해 주세요");
        return;
    }
  }

  if(checkObj_work_location.length==0) {
    alert("근무 가능 지역은 필수 체크사항입니다.");
    return;
  }
     
  if(checkObj_favorite_part.length==0) {
    alert("선호 분야는 필수 체크사항입니다.");
    return;
  }
     
  if(checkObj_abode.val()==null || checkObj_abode.val()=='') {
    alert("거주지는 필수 선택 사항입니다.");
    checkObj_abode.focus();
    return;
  }
     
   ajax(
      "/registFreeDevProc.do"
      ,"post"
      ,formObj
      ,function(responseJson){
       
         var freelancerRegCnt = responseJson["freelancerRegCnt"];
         var free_can_work_location_infoCnt = responseJson["free_can_work_location_infoCnt"];
         var free_favorite_part_codeCnt = responseJson["free_favorite_part_codeCnt"];
         var free_licenseCnt = responseJson["free_licenseCnt"];
         var free_skill_categoryCnt = responseJson["free_skill_categoryCnt"];
         var free_year_infoCnt = responseJson["free_year_infoCnt"];
         var is_black_infoCnt = responseJson["is_black_infoCnt"]; 
         
         if(freelancerRegCnt>=1) {
            alert("프리랜서 정보가 등록되었습니다.");
            goFreelancerSearchForm();
         }
         else{
            alert("정보 등록 중 오류가 발생했습니다. 다시 시도해주십시오.")
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
              <td class="main_cate active" onclick="location.replace('/searchFreeDev.do')">프리랜서 개발자</td>
              <td class="main_cate" onclick="location.replace('/searchDev.do')">정규직 개발자</td>
              <td class="main_cate" onclick="location.replace('/searchPrj.do')">프로젝트</td>
              <td class="main_cate" onclick="location.replace('/searchDispatch.do')">파견현황</td>
             <td class="main_cate" onclick="location.replace('/gyeoljaeList.do')">결재</td>
             <td class="main_cate" onclick="location.replace('/boardList.do')">공지사항</td>
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
   <form name="freelancerRegForm" class="boardForm">
    <header>
      <div>프리랜서 개발자 입력</div>
      <small>개발자 입력 시 <small>최소치</small> 입력과  <small>최대치</small> 입력에 유의하여 검색해 주세요.</small>
    </header>
      <div class="inform">
      <div class="title">프리랜서 기본 정보</div>
      <div>
        <tr>
          <th>이름</th>
          <input type="text" name="fName" class="fName" size="10" maxlength="30" onkeyup="checkSpace(this)">
        </tr>
        <tr>
          <th>성별</th>
          <input type="radio" name="gender" value="1">남
          <input type="radio" name="gender" value="2">여
        </tr>
        <tr>
          <th>이메일</th>
          <input type="email" name="email" class="email" size="10" maxlength="30" onkeyup="checkSpace(this)">
        </tr>
        <tr>
          <th>핸드폰</th>
          <input type="text" name="phone" class="phone" size="10" maxlength="11" onkeyup="checkSpace(this)">
        </tr>
        <tr>
          <input type="checkbox" name="wrong_phone" value="1">전화번호 틀림
        </tr>
      </div>
      <div>
        <tr>
          <th>
            출생년도
          </th>
          <input type="number" name="birth_year" class="birth_year" size="10" maxlength="4" onkeyup="checkSpace(this)"> 년생
        </tr>
        <tr>
          <th>
            최종학력
          </th>
          <select name="highestLevel_edu" id="highestLevel_edu">
            <option value=""></option>
            <option value="1">고졸</option>
            <option value="2">전문대졸</option>
            <option value="3">일반대학사졸</option>
            <option value="4">일반대석사졸</option>
            <option value="5">일반대박사졸</option>
          </select>
        </tr>
        <tr>
          <th>
            졸업년도
          </th>
          <input type="month" name="graduate_date" class="graduate_date" min="1930-01" max="2023-12">
        </tr>
      </div>
    </div>
      <div class="career">
      <div class="title">프리랜서 기본 년차</div>
      <div>
        <tr>
          <th>추정 개발년차</th>
          <span name="presume_year" onkeyup="checkSpace(this)">0년</span>
          <span name="presume_month" onkeyup="checkSpace(this)">0개월</span>
          <span>(<span name="yeoncha">0</span>) 년차</span>
        </tr>
       </div>
       <div>
        <tr>
          <th>이력서 상 개발년차</th>
          <select name="resume_dev_year" class="resume_dev_year">
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
          </select> 년
          <select name="resume_dev_month" class="resume_dev_month">
            <option value=""></option>
            <c:forEach var="nYear" begin="0" end="11">
              <c:choose>
                <c:when test="${nYear lt 10 }">
                    <option value="0${nYear}">0${nYear}</option>
                </c:when>
                <c:otherwise>
                    <option value="${nYear}">${nYear}</option>
                </c:otherwise>
              </c:choose>
            </c:forEach>
          </select>개월
        </tr>
        <tr>
          ( <input type="date" name="dev_year_standard_date" class="dev_year_standard_date"> 날짜 기준 )
        </tr>
       </div>
    </div>
      <div class="eval">
      <div class="title">프리랜서 평가</div>
      <div>
        <tr>
          <th>블랙개발자</th>
          <input type="checkbox" name="black_reason_name" value="1"> 실력부족
          <input type="checkbox" name="black_reason_name" value="2"> 파견지부적응
          <input type="checkbox" name="black_reason_name" value="3"> 근태불성실
          <input type="checkbox" name="black_reason_name" value="4"> 무단이탈
          <input type="checkbox" name="black_reason_name" value="5"> 전화통화원치않음
          <input type="checkbox" name="black_reason_name" value="6"> 기타
        </tr>
      </div>
      <div>
        <th>기타 평가</th>
        <textarea name="etc_opinion" cols="30" rows="10" maxlength="300" placeholder="최대 300자 입력"></textarea>
      </div>
    </div>
      <div class="dispatch">
      <div class="title">프리랜서 파견 정보</div>
      <div>
        <tr>
          <th>상담시각</th>
          <input type="datetime-local" name="consultation_time" class="consultation_time"> 
          <span onclick="dateNow()" style="cursor: pointer;">[지금]</span>
          <span onclick="dateEmpty(this, 'date')" style="cursor: pointer;">[비움]</span>
        </tr>
      </div>
      <div>
        <tr>
          <th>현재직업</th>
         <input type="radio" name="job" value="1"> 프리랜서 개발자
          <input type="radio" name="job" value="2"> 정규직 개발자
          <input type="radio" name="job" value="3"> 기타직업
        </tr>
      </div>

      <div>
        <tr>
          <th>스킬분야</th>
          <input type="checkbox" name="skill_category_code" value="1"> JAVA>JSP
          <input type="checkbox" name="skill_category_code" value="2"> .NET
          <input type="checkbox" name="skill_category_code" value="3"> PHP
          <input type="checkbox" name="skill_category_code" value="4"> ASP
          <input type="checkbox" name="skill_category_code" value="5"> ABAP
          <input type="checkbox" name="skill_category_code" value="6"> Delphi
          <input type="checkbox" name="skill_category_code" value="7"> PB
          <input type="checkbox" name="skill_category_code" value="8"> VC++
          <input type="checkbox" name="skill_category_code" value="9"> 웹디
          <input type="checkbox" name="skill_category_code" value="10"> 기타
        </tr>
      </div>
      <div>
        <tr>
          <th>파견역할</th>
          <input type="radio" name="dispatch_role_code" value="1"> 개발
          <input type="radio" name="dispatch_role_code" value="2"> 운영
          <input type="radio" name="dispatch_role_code" value="3"> 분석설계
          <input type="radio" name="dispatch_role_code" value="4"> PL
          <input type="radio" name="dispatch_role_code" value="5"> PM
          <input type="radio" name="dispatch_role_code" value="6"> 웹디
          <input type="radio" name="dispatch_role_code" value="7"> publisher
          <input type="radio" name="dispatch_role_code" value="8"> 기타
        </tr>
      </div>
      <div>
        <tr>
          <th>
            파견가능일
          </th>
          <input type="date" name="can_dispatch_date" class="can_dispatch_date">
          <input type="checkbox" name="fix_dispatch_date" value="1"> 확정
        </tr>
      </div>
      <div>
        <tr>
          <th>
            개발 단가
          </th>
          
          <input type="number" onkeydown="checkMax(this, 10)" name="min_dev_cost" class="min_dev_cost" >
          만원 ~
          <input type="number" onkeydown="checkMax(this, 10)" name="max_dev_cost" class="max_dev_cost"> 만원
        </tr>
        <span>
          <input type="checkbox" name="how_dev_cost" value="1" onchange="checkRadio(this)"> 단가고정
          <input type="checkbox" name="how_dev_cost" value="2" onchange="checkRadio(this)"> 협상후결정
        </span>
      </div>
      <div>
        <tr>
          <th>
            운영 단가
          </th>
          <input type="number" onkeydown="checkMax(this, 10)" name="min_operate_cost" class="min_operate_cost">
          만원 ~
          <input type="number" onkeydown="checkMax(this, 10)" name="max_operate_cost" class="max_operate_cost" > 만원
        </tr>
        <span>
          <input type="checkbox" name="how_operate_cost" value="1" onchange="checkRadio(this)"> 단가고정
          <input type="checkbox" name="how_operate_cost" value="2" onchange="checkRadio(this)"> 협상후결정
        </span>
      </div>
      <div>
        <tr>
          <th>기사자격증</th>
          <input type="checkbox" name="license_code" value="1"> 정보처리기사
          <input type="checkbox" name="license_code" value="2"> 정보처리산업기사
        </tr>
      </div>
      <div>
        <tr>
          <th>노트북 소유</th>
          <input type="checkbox" name="have_notebook" value="1"> 노트북대여희망
        </tr>
      </div>
      <div>
        <tr>
          <th>선호지역</th>
          <input type="checkbox" name="free_can_work_location" value="1"> 서울
          <input type="checkbox" name="free_can_work_location" value="2"> 인천
          <input type="checkbox" name="free_can_work_location" value="3"> 경기
          <input type="checkbox" name="free_can_work_location" value="4"> 강원
          <input type="checkbox" name="free_can_work_location" value="5"> 충북
          <input type="checkbox" name="free_can_work_location" value="6"> 충남
          <input type="checkbox" name="free_can_work_location" value="7"> 전북
          <input type="checkbox" name="free_can_work_location" value="8"> 전남
          <input type="checkbox" name="free_can_work_location" value="9"> 경북
          <input type="checkbox" name="free_can_work_location" value="10"> 경남
          <input type="checkbox" name="free_can_work_location" value="11"> 제주
          <input type="checkbox" name="free_can_work_location" value="12"> 국외
        </tr>
      </div>
      <div>
        <tr>
          <th>선호분야</th> <!-- 비워도 되지않을까 -->
          <input type="checkbox" name="favorite_part_code" value="1"> 교육
          <input type="checkbox" name="favorite_part_code" value="2"> 대부
          <input type="checkbox" name="favorite_part_code" value="3"> 대학
          <input type="checkbox" name="favorite_part_code" value="4"> 보험
          <input type="checkbox" name="favorite_part_code" value="5"> 쇼핑
          <input type="checkbox" name="favorite_part_code" value="6"> 언론
          <input type="checkbox" name="favorite_part_code" value="7"> 유통
          <input type="checkbox" name="favorite_part_code" value="8"> 은행
          <input type="checkbox" name="favorite_part_code" value="9"> 의료
          <input type="checkbox" name="favorite_part_code" value="10"> 전자/전기
          <input type="checkbox" name="favorite_part_code" value="11"> 정부기관
          <input type="checkbox" name="favorite_part_code" value="12"> 증권
          <input type="checkbox" name="favorite_part_code" value="13"> 카드
          <input type="checkbox" name="favorite_part_code" value="14"> 통신
          <input type="checkbox" name="favorite_part_code" value="15"> 기타
        </tr>
      </div>
      <div>
        <tr>
          <th>거주지</th>
          <select name="abode">
             <option value=""></option>
             <option value="1">서울</option>
             <option value="2">인천</option>
             <option value="3">경기</option>
             <option value="4">강원</option>
             <option value="5">충북</option>
             <option value="6">전북</option>
             <option value="7">전남</option>
             <option value="8">경북</option>
             <option value="9">경남</option>
             <option value="10">국외</option>
          </select>시(도)
          
        </tr>
      </div>
      <div>
        <div>기타요구</div>
        <textarea name="etc_want" cols="30" rows="10" maxlength="300" placeholder="최대 300자 입력"></textarea>
      </div>
      <div>
        <div>전화상담시 주의사항</div>
        <textarea name="call_notice" cols="30" rows="10" maxlength="300" placeholder="최대 300자 입력"></textarea>
      </div>
    </div>   
    <span onclick="location.replace('/searchFreeDev.do')" name="cancel" class="cancel">취소</span>
    <span onclick="saveData();" name="save" class="save">저장</span>
   </form>
  <form name="freelancerSearchForm" class="no dumP_form" method="post" action="/searchFreeDev.do"></form>
</body>
</html>