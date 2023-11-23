<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/common.jsp"%>


<!doctype html>
<html>
<head>
	<meta charset="UTF-8">
	<title>프로젝트 입력</title>
  <link href="css/registPrj.css" rel="stylesheet">
 
  <script src="common.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" integrity="sha512-5A8nwdMOWrSz20fDsjczgUidUBR8liPYU+WymTZP1lmY9G6Oc7HlZv156XqnsgNUzTyMefFTcsFH/tnJE/+xBg==" crossorigin="anonymous" referrerpolicy="no-referrer" />

  <script type="text/javascript">
  

    function setMaxDate(e, minMax){
      var getMax = $(e).siblings('input');
      getMax.attr(minMax, $(e).val());
    }
    function dateEmpty(e) {
      var getVal = $(e).siblings('input');
      getVal.val('');
    }

   function setToday(e) {
      var 
          getDate = new Date(),
          getY = getDate.getFullYear(),
          getM = getDate.getMonth() +1,
          getD = getDate.getDate(),
          returnD = getY+'-'+getM+'-'+ '0' +getD.toString();
      
      var formObj = $("[name='registPrjForm']");	

      formObj.find("[name='reg_date']").val(returnD);  
    }

    function goPrjSearchForm(){
      document.prjSearchForm.submit();
    }

    $(function(){init();});
    function init(){
    }
    
    function saveData(){
      var formObj = $("[name='registPrjForm']");								     
      var checkObj_regDate = formObj.find("[name='reg_date']");											
      var checkObj_minPrjPer = formObj.find("[name='min_prj_period']");				
      var checkObj_maxPrjPer = formObj.find("[name='max_prj_period']");				 
      var checkObj_prjName = formObj.find("[name='prj_name']");							   
      var checkObj_client_company = formObj.find("[name='client_company']");	  
      var checkObj_year_dev = formObj.find("[name='year_dev']");			         
      var checkObj_person_num_dev = formObj.find("[name='person_num_dev']");		
      var checkObj_year_ope = formObj.find("[name='year_ope']");			         
      var checkObj_person_num_ope = formObj.find("[name='person_num_ope']");		
      var checkObj_year_perb = formObj.find("[name='year_perb']");			        
      var checkObj_person_num_perb = formObj.find("[name='person_num_perb']");	
      var checkObj_year_desi = formObj.find("[name='year_desi']");			       
      var checkObj_person_num_desi = formObj.find("[name='person_num_desi']");	
      var checkObj_work_content = formObj.find("[name='work_content']");	       
      var checkObj_work_space = formObj.find("[name='work_space']");	          
      var checkObj_go_work_hours = formObj.find("[name='go_work_hours']");	     
      var checkObj_go_work_minute = formObj.find("[name='go_work_minute']");	    
      var checkObj_coperator_name = formObj.find("[name='coperator_name']");   
      var checkObj_prj_etc= formObj.find("[name='prj_etc']");	                
     
      if(checkObj_regDate.val()==null || checkObj_regDate.val()=='') {
        alert("접수일자는 필수 입력해야합니다.");
        checkObj_regDate.focus();
        return;
      }

      if(checkObj_minPrjPer.val()==null || checkObj_minPrjPer.val()=='') {
        alert("기간 시작일은 필수 입력해야합니다.");
        checkObj_minPrjPer.focus();
        return;
      }

      if(checkVal(
         checkObj_prjName
          ,"프로젝트명은 2~30자여야합니다."
          ,/^[^ ].{0,27}[^ ]$/
        )==false){
          checkObj_prjName.focus();
          return;
      }
    
      if(checkVal(
        checkObj_client_company
          ,"고객사는 2~30자여야합니다."
          ,/^[^ ].{0,27}[^ ]$/
        )==false){
          checkObj_client_company.focus();
          return;
      }

      if(
          checkObj_year_dev.val()=='' 
          && checkObj_year_ope.val()==''
          && checkObj_year_perb.val()==''
          && checkObj_year_desi.val()==''
        ){
          alert("인력 중 하나는 반드시 입력해야합니다.");
          checkObj_year_dev.focus();
        return;
      }

    if(checkObj_year_dev.val()!='' && checkObj_person_num_dev.val()==''){
          alert("개발인력 명을 선택해 주세요.");
          checkObj_person_num_dev.focus();
        return;
      }

    if(checkObj_year_ope.val()!='' && checkObj_person_num_ope.val()==''){
          alert("운영인력 명을 선택해 주세요.");
          checkObj_person_num_ope.focus();
        return;
      }
      if(checkObj_year_perb.val()!='' && checkObj_person_num_perb.val()==''){
          alert("퍼블리셔인력 명을 선택해 주세요.");
          checkObj_person_num_perb.focus();
        return;
      }
      if(checkObj_year_desi.val()!='' && checkObj_person_num_desi.val()==''){
          alert("디자이너인력 명을 선택해 주세요.");
          checkObj_person_num_desi.focus();
        return;
      }
      
      if(checkVal(
        checkObj_work_content
          ,"업무내용은 2~50자여야합니다."
          ,/^[^ ].{0,50}[^ ]$/
        )==false){
          checkObj_work_content.focus();
          return;
      }

      if(checkVal(
        checkObj_work_space
          ,"업무장소는 2~50자여야합니다."
          ,/^[^ ].{0,48}[^ ]$/
        )==false){
          checkObj_work_space.focus();
          return;
      }

      if(checkObj_go_work_hours.val()=='' || checkObj_go_work_hours.val()==null){
        alert("출근시간은 필수 선택사항입니다.");
        checkObj_go_work_hours.focus();
        return;
      }

      if(checkObj_go_work_minute.val()=='' || checkObj_go_work_minute.val()==null){
        alert("출근시간은 필수 선택사항입니다.");
        checkObj_go_work_minute.focus();
        return;
      }

      if(checkVal(
        checkObj_coperator_name
  					,"협력업체는 필수 선택사항입니다."
  					,/^[^ ]{1,}$/
  				)==false){
            checkObj_coperator_name.focus()
  					return;
  			}


    ajax(
      "/registPrjProc.do"
      ,"post"
      ,formObj
      ,function(responseJson){
        var prjRegCnt = responseJson["prjRegCnt"];
        var prj_dev_person_infoCnt = responseJson["prj_dev_person_infoCnt"];
        var prj_dev_license_infoCnt = responseJson["prj_dev_license_infoCnt"];
        var prj_oper_person_infoCnt = responseJson["prj_oper_person_infoCnt"];
        var prj_oper_license_infoCnt = responseJson["prj_oper_license_infoCnt"];
        var prj_publ_person_infoCnt = responseJson["prj_publ_person_infoCnt"];
        var prj_publ_license_infoCnt = responseJson["prj_publ_license_infoCnt"];
        var prj_desi_person_infoCnt = responseJson["prj_desi_person_infoCnt"];
        var prj_desi_license_infoCnt = responseJson["prj_desi_license_infoCnt"];
        console.log(prjRegCnt);
             	
       	if(prjRegCnt>=1){
          alert("프로젝트 정보가 등록되었습니다.");
          location.replace('/searchPrj.do');
        } else{
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
              <td class="main_cate" onclick="location.replace('/searchFreeDev.do')">프리랜서 개발자</td>
              <td class="main_cate" onclick="location.replace('/searchDev.do')">정규직 개발자</td>
              <td class="main_cate active" onclick="location.replace('/searchPrj.do')">프로젝트</td>
              <td class="main_cate" onclick="location.replace('/searchDispatch.do')">파견현황</td>
	          <td class="main_cate" onclick="location.replace('/gyeoljaeList.do')">결재</td>
	          <td class="main_cate" onclick="location.replace('/boardList.do')">공지사항</td>
            </tr>
        </table>
        <div class="welcome_user">
          <div>
            
          <div class="welcome_name">Logout</div>
               </div>
          <div class="logout_btn" onclick="location.replace('/loginForm.do')"><i class="fa fa-sign-out" aria-hidden="true"></i></div>
        </div>
        <br>
      </div>
  </form>
  <form name="registPrjForm" class="boardForm">
    <header>
      <div>프로젝트 정보 입력 </div>
      <small>프로젝트 입력 시 <small>최소치</small> 입력과  <small>최대치</small> 입력에 유의하여 검색해 주세요.</small>
    </header>
      <div>    
        <div class="title">프로젝트 정보</div>
        <div class="dev_user">
            <td>접수일자</td>
            <td>
							<input type="date" name="reg_date">
							<input type="button" onclick="setToday(this)" class="today_btn" value="오늘 날짜로">
            </td>
        </div>
        <div> 
            <td>기간</td>
						<td>
							<input type="date" name="min_prj_period" id="" onchange="setMaxDate(this, 'min')"> ~
							<input type="date" name="max_prj_period" id="" onchange="setMaxDate(this, 'max')"> 
            </td>
        </div>
				<div>
					<tr>
							<td>프로젝트명</td>
							<input type="text" name="prj_name" maxlength="30">
							<span onclick="dateEmpty(this)" style="cursor: pointer;" class="empty_btn">비움</span>
					</tr>
				</div>
				<div>
					<tr>
						<td>고객사</td>
						<input type="text" name="client_company" maxlength="30">
						<span onclick="dateEmpty(this)" style="cursor: pointer;" class="empty_btn">비움</span>
					</tr>
				</div>
				<line class="line"></line>
				<div>
					<tr>
						<td>개발인력</td>
						<select name="year_dev" onchange="setNextInput(this)">
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
              </select> 년차
						<select name="person_num_dev">
							<option value=""></option>
              <c:forEach var="person_num" begin="0" end="99">
                <c:choose>
                  <c:when test="${person_num lt 10 }">
                    <option value="0${person_num}">0${person_num}</option>
                  </c:when>
                  <c:otherwise>
                    <option value="${person_num}">${person_num}</option>
                  </c:otherwise>
                </c:choose>
              </c:forEach>
              </select> 명
						<input type="checkbox" name="dev_essential_license" value="1"> 정보처리기사필수
						<input type="checkbox" name="dev_essential_license" value="2"> 정보처리산업기사필수
					</tr>
				</div>
				<div>
					<tr>
						<td>운영인력</td>
						<select name="year_ope" onchange="setNextInput(this)">
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
                </select> 년차
						<select name="person_num_ope" >
							<option value=""></option>
                    <c:forEach var="person_num" begin="0" end="99">
                    <c:choose>
                        <c:when test="${person_num lt 10 }">
                            <option value="0${person_num}">0${person_num}</option>
                        </c:when>
                        <c:otherwise>
                            <option value="${person_num}">${person_num}</option>
                        </c:otherwise>
                    </c:choose>
                    </c:forEach>
                </select> 명
						<input type="checkbox" name="ope_essential_license" value="1"> 정보처리기사필수
						<input type="checkbox" name="ope_essential_license" value="2"> 정보처리산업기사필수
					</tr>
				</div>
				<div>
					<tr>
						<td>퍼블리셔인력</td>
						<select name="year_perb" id="" onchange="setNextInput(this)">
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
                </select> 년차
						<select name="person_num_perb">
							<option value=""></option>
                    <c:forEach var="person_num" begin="0" end="99">
                    <c:choose>
                        <c:when test="${person_num lt 10 }">
                            <option value="0${person_num}">0${person_num}</option>
                        </c:when>
                        <c:otherwise>
                            <option value="${person_num}">${person_num}</option>
                        </c:otherwise>
                    </c:choose>
                    </c:forEach>
                </select> 명
						<input type="checkbox" name="perb_essential_license" value="1"> 정보처리기사필수
						<input type="checkbox" name="perb_essential_license" value="2"> 정보처리산업기사필수
					</tr>
				</div>
				<div>
					<tr>
						<td>디자이너인력</td>
						<select name="year_desi" id="" onchange="setNextInput(this)">
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
                </select> 년차
						<select name="person_num_desi">
							<option value=""></option>
                    <c:forEach var="person_num" begin="0" end="99">
                    <c:choose>
                        <c:when test="${person_num lt 10 }">
                            <option value="0${person_num}">0${person_num}</option>
                        </c:when>
                        <c:otherwise>
                            <option value="${person_num}">${person_num}</option>
                        </c:otherwise>
                    </c:choose>
                    </c:forEach>
                </select> 명
						<input type="checkbox" name="desi_essential_license" value="1"> 정보처리기사필수
						<input type="checkbox" name="desi_essential_license" value="2"> 정보처리산업기사필수
					</tr>
				</div>
				<line class="line"></line>
				<div>
					<tr>
						<td>업무내용</td>
						<input type="text" name="work_content">
            <span onclick="dateEmpty(this)" style="cursor: pointer;" class="empty_btn">비움</span>
				</div>
				<div>
					<tr>
						<td>업무장소</td>
						<input type="text" name="work_space">
						<span onclick="dateEmpty(this)" style="cursor: pointer;" class="empty_btn">비움</span>
				</div>
				<div>
					<tr>
						<td>출근시간</td>
						<select name="go_work_hours" id="">
							<option value=""></option>
                    <c:forEach var="nYear" begin="0" end="24">
                    <c:choose>
                        <c:when test="${nYear lt 10 }">
                            <option value="0${nYear}">0${nYear}</option>
                        </c:when>
                        <c:otherwise>
                            <option value="${nYear}">${nYear}</option>
                        </c:otherwise>
                    </c:choose>
                    </c:forEach>
                </select> 시
						<select name="go_work_minute" id="">
							<option value=""></option>
							<option value="00">00</option>
							<option value="30">30</option>
						</select> 분
				</div>
				<div>
					<tr>
						<td>협력업체</td>
            <select name="coperator_name" id="">
              <option value=""></option>
              <option value="1">네이버</option>
              <option value="2">카카오</option>
              <option value="3">라인</option>
              <option value="4">쿠팡</option>
              <option value="5">Apple</option>
              <option value="6">Microsoft</option>
              <option value="7">Tesla</option>
              <option value="8">TSMC</option>
              <option value="9">삼성전자</option>
              <option value="10">현대자동차</option>
              <option value="11">Meta</option>
              <option value="12">Amazon</option>
           </select>
				</div>
				<div>
					<tr>
						<td>기타</td>
						<input type="text" name="prj_etc" id="">
						<span onclick="dateEmpty(this)" style="cursor: pointer;" class="empty_btn">비움</span>
				</div>
    </div>
    <span onclick="location.replace('/searchPrj.do')" name="cancel" class="cancel">취소</span>
    <input type="button" onclick="saveData()" class="save" value="저장">
  </form>
</body>
</html>