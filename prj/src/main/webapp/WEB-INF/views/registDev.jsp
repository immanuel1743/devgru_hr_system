<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/common.jsp"%>

<!doctype html>
<html>
<head>
  <meta charset="UTF-8">
  <title>정규직 입력</title>
  <link href="css/registDev.css" rel="stylesheet">

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" integrity="sha512-5A8nwdMOWrSz20fDsjczgUidUBR8liPYU+WymTZP1lmY9G6Oc7HlZv156XqnsgNUzTyMefFTcsFH/tnJE/+xBg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<script>
   $(function(){init();});

   function empty_emp(e){
    $('[name="server_computer1"]').prop('checked', false);
    $('[name="OS1"]').prop('checked', false);
    $('[name="it_language1"]').prop('checked', false);
    $('[name="server_computer1"]').prop('checked', false);
    $('[name="DBMS1"]').prop('checked', false);
    $('[name="tool1"]').prop('checked', false);
   };
  	
  function showList(e) {
    $(e).toggleClass('active');
    $(e).siblings('.scroll_box').slideToggle();
    $(e).siblings('.scroll_box').css('z-index', '999');
    $(e).parent('.desc_option').parent('.cur_desc').siblings().children('.desc_option').children().removeClass('active');
    $(e).parent('.desc_option').parent('.cur_desc').siblings().children('.desc_option').children('.scroll_box').slideUp();
  }

  function fam_empty(e) {
    $("[name='family_relation1']").val('');		 
    $("[name='family_name1']").val('');		 
    $("[name='family_job1']").val('');		 
    $("[name='family_birth_year1']").val('');		 
    $("[name='is_live_together1']").prop('checked', false);
  }
	function init(){
		var obj = $(".family_div").children();
		obj.eq(3).hide();
		obj.eq(4).hide();
		obj.eq(5).hide();
		obj.eq(6).hide();
	}
	
	
  function setMaxDate(e, minMax){
  var getMax = $(e).siblings('input');
  getMax.attr(minMax, $(e).val());
}
  function setToday(e) {
  var getVal = $(e).siblings('input'),
      getDate = new Date(),
      getY = getDate.getFullYear(),
      getM = getDate.getMonth() +1,
      getD = getDate.getDate(),
      returnD = getY+'-'+getM+'-'+getD.toString();
      
  getVal.val(returnD);
}
  		
  		function saveData(){
  			var formObj = $("[name='registDevForm']");									 
  			var checkVal_id = $("[name='id']");									 
  			var checkPwd = $("[name='pwd']");											 
  			var checkPwd_confirm = $("[name='rePwd']");									 
  			var checkVal_dName = $("[name='dName']");								 
  			var checkObj_jumin_num1 = $("[name='jumin_num1']");						 
  			var checkObj_jumin_num2 = $("[name='jumin_num2']");							 
  			var checkObj_phone = $("[name='phone']");									 
  			var checkObj_email = $("[name='email']");								 
  			var checkObj_go_army = $("[name='go_army']");							 
  			var checkObj_address = $("[name='address']");								 
  			
  			var checkObj_emergency_name = $("[name='emergency_name']");					 
  			var checkObj_emergency_relation = $("[name='emergency_relation']");		 
  			var checkObj_emergency_phone = $("[name='emergency_phone']");			 
  			
  			var checkObj_salary_bank = $("[name='salary_bank']");						 
  			var checkObj_account_num = $("[name='account_num']");						 
  			
  			var checkObj_highSchool_name = $("[name='highSchool_name']");				 
  			var checkObj_juniorCollege_name = $("[name='juniorCollege_name']");		 
  			var checkObj_university_name = $("[name='university_name']");				  
  			var checkObj_master_name = $("[name='master_name']");						 
  			var checkObj_doctor_name = $("[name='doctor_name']");						 

  			var checkObj_juniorCollege_hakbu = $("[name='juniorCollege_hakbu']");		 
  			var checkObj_university_hakbu = $("[name='university_hakbu']");				 
  			var checkObj_master_hakbu = $("[name='master_hakbu']");						 
  			var checkObj_doctor_hakbu = $("[name='doctor_hakbu']");						 

  			var checkObj_juniorCollege_major = $("[name='juniorCollege_major']");		 
  			var checkObj_university_major = $("[name='university_major']");				 
  			var checkObj_master_major = $("[name='master_major']");						 
  			var checkObj_doctor_major = $("[name='doctor_major']");						 
  			
  			var checkObj_juniorCollege_minor = $("[name='juniorCollege_minor']");		 
  			var checkObj_university_minor = $("[name='university_minor']");				 
  			var checkObj_master_minor = $("[name='master_minor']");						 
  			var checkObj_doctor_minor = $("[name='doctor_minor']");					 

      	  var checkObj_highSchool_graduate_date = $("[name='highSchool_graduate_date']");				 
  			var checkObj_juniorCollege_graduate_date = $("[name='juniorCollege_graduate_date']");		 
  			var checkObj_university_graduate_date = $("[name='university_graduate_date']");				 
  			var checkObj_master_graduate_date = $("[name='master_graduate_date']");						 
  			var checkObj_doctor_graduate_date = $("[name='doctor_graduate_date']");						 
  			
  			var checkObj_family_relation1 = $("[name='family_relation1']");				 
  			var checkObj_family_name1 = $("[name='family_name1']");						 
  			var checkObj_family_job1 = $("[name='family_job1']");							 
  			var checkObj_family_birth_year1 = $("[name='family_birth_year1']");			 
  			var checkObj_is_live_together1 = $("[name='is_live_together1']");				 
  			
  			var checkObj_family_relation2 = $("[name='family_relation2']");				 
  			var checkObj_family_name2 = $("[name='family_name2']");						 
  			var checkObj_family_job2 = $("[name='family_job2']");							 
  			var checkObj_family_birth_year2 = $("[name='family_birth_year2']");			 
  			var checkObj_is_live_together2 = $("[name='is_live_together2']");	
  			
  			var checkObj_family_relation3 = $("[name='family_relation3']");				 
  			var checkObj_family_name3 = $("[name='family_name3']");						 
  			var checkObj_family_job3 = $("[name='family_job3']");							 
  			var checkObj_family_birth_year3 = $("[name='family_birth_year3']");			 
  			var checkObj_is_live_together3 = $("[name='is_live_together3']");	
  			
  			var checkObj_family_relation4 = $("[name='family_relation4']");				 
  			var checkObj_family_name4 = $("[name='family_name4']");						 
  			var checkObj_family_job4 = $("[name='family_job4']");							 
  			var checkObj_family_birth_year4 = $("[name='family_birth_year4']");			 
  			var checkObj_is_live_together4 = $("[name='is_live_together4']");	
  			
  			var checkObj_family_relation5 = $("[name='family_relation5']");				 
  			var checkObj_family_name5 = $("[name='family_name5']");						 
  			var checkObj_family_job5 = $("[name='family_job5']");							 
  			var checkObj_family_birth_year5 = $("[name='family_birth_year5']");			 
  			var checkObj_is_live_together5 = $("[name='is_live_together5']");	
  			
  			
  			var checkObj_past_company_name = $("[name='past_company_name1']");		 
  			var checkObj_duty = $("[name='duty1']");								 
  			var checkObj_part = $("[name='part1']");									 
  			var checkObj_dep = $("[name='dep1']");										 
  			var checkObj_position = $("[name='position1']");								 
  			var checkObj_hire_type = $("[name='hire_type1']");						 
  			var checkObj_salary = $("[name='salary1']");								 
  			var checkObj_hired_date = $("[name='hired_date1']");						 
  			var checkObj_resign_date = $("[name='resign_date1']");					 
  			
  			var checkObj_itCenter_name = $("[name='itCenter_name']");				 
  			var checkObj_edu_period = $("[name='edu_period']");							 
  			var checkObj_eduFinish_date = $("[name='eduFinish_date']");					 
  			var checkObj_eduFinish_subject = $("[name='eduFinish_subject']");		 
  			
  			var checkObj_smoke = $("[name='smoke']");									 
  			var checkObj_soju = $("[name='soju']");									 
  			var checkObj_beer = $("[name='beer']");									 
  			var checkObj_interest = $("[name='interest']");						 
 
  			var checkObj_prj_name = $("[name='past_prj_name']");							 
  			var checkObj_start_date = $("[name='prj_start_date']");							
  			var checkObj_finish_date = $("[name='prj_finish_date']");					 
  			var checkObj_dispatch_level = $("[name='dispatch_level']");					 
  			var checkObj_client_company_name = $("[name='client_company_name']");		 
  			var checkObj_work_company_name = $("[name='work_company_name']");			 
  			var checkObj_dispatch_role = $("[name='dispatch_role']");					 
  			var checkObj_server_computer = $("[name='server_computer1']:checked");				 
  			var checkObj_OS = $("[name='OS1']:checked");											 
  			var checkObj_it_language = $("[name='it_language1']:checked");						 
  			var checkObj_DBMS = $("[name='DBMS1']:checked");										 
  			var checkObj_tool = $("[name='tool1']:checked");								 
  			var checkObj_license = $("[name='license']:checked");


             if(checkVal(
                 checkVal_id
                 ,"아이디는 영어 소문자로 시작해야 하며, 영어 소문자, 숫자, _만 포함한 4~20자여야 합니다."
                 ,/^[a-z][a-z0-9_]{3,19}$/
              )==false){
                 checkVal_id.focus()
                 return;
           }

           if (checkVal(
                 checkPwd
                 ,"암호는 영어 소문자, 또는 숫자로 4~20자여야 합니다."
                    ,/^[0-9a-z]{4,20}$/
                 )==false){
                 checkPwd.focus()
                 return;
              }


        if (checkPwd_confirm.val() != checkPwd.val()) {
          alert("암호가 맞지 않습니다.");
              checkPwd_confirm.focus();
              return;
          }


           if(checkVal(
                 checkVal_dName
                 ,"이름은 2~15자리 한글 또는 영어이어야합니다."
                 ,/^[가-힣a-z]{2,15}$/
              )==false){
                 checkVal_dName.focus()
                 return;
           }


           if(checkVal(
                 checkObj_jumin_num1
                 ,"주민등록번호 앞자리는 숫자 6자리로 구성되어야 합니다."
                 ,/^[0-9]{6}$/
              )==false){
                 checkObj_jumin_num1.focus()
                 return;
           }


           if(checkVal(
                 checkObj_jumin_num2
                 ,"주민등록번호 뒷자리는 숫자 7자리로 구성되어야 합니다."
                 ,/^[1-4][0-9]{6}$/
              )==false){
                 checkObj_jumin_num2.focus()
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
                 checkObj_email
                 , "이메일 형식에 맞지 않습니다. 재입력 바랍니다."
                 , /^([0-9a-zA-Z_-]+)@([0-9a-zA-Z_-]+)(\.[0-9a-zA-Z_-]+){1,2}$/
              )==false){
                 checkObj_email.focus()
                 return;
              }


           if(checkObj_go_army.val()==""){
              alert("병역 여부는 필수 선택 사항입니다.")
              checkObj_go_army.focus()
                 return;
           }


           if(checkObj_address.val()==null || checkObj_address.val()=='') {
             alert("주소는 필수 입력 사항입니다.")
              checkObj_go_army.focus()
              return;
           }

           if(checkVal(
                 checkObj_emergency_name
                 ,"긴급 연락처 > 이름은 2~15자리 한글 또는 영어이어야합니다."
                 ,/^[가-힣a-z]{2,15}$/
              )==false){
                 checkVal_emergency_name.focus()
                 return;
           }


           if(checkObj_emergency_relation.val()==""){
              alert("긴급 연락처 > 관계는 필수 선택 사항입니다.")
              checkObj_emergency_relation.focus()
                 return;
           }


           if(checkVal(
                 checkObj_emergency_phone
                 ,"긴급 연락처 > 핸드폰은 010으로 시작하는 11자리 숫자이어야합니다."
                 ,/^010[0-9]{8}$/
              )==false){
                checkObj_emergency_phone.focus()
                 return;
           }

           if(checkObj_salary_bank.val()==""){
              alert("월급 통장 은행은 필수 선택 사항입니다.")
              checkObj_salary_bank.focus()
                 return;
           }

           if(checkVal(
                 checkObj_account_num
                 ,"계좌번호는 숫자로만 이루어질 수 있습니다."
                 ,/[0-9]$/
              )==false){
                 checkObj_account_num.focus()
                 return;
           }

            var hakbuNotice = '학부를 입력해 주세요.',
                majorNotice = '전공을 입력해 주세요.',
                dateNotice = '졸업일을 입력해 주세요.';

            if(
              checkObj_highSchool_name.val()=='' 
              && checkObj_juniorCollege_name.val()==''
              && checkObj_university_name.val()==''
              && checkObj_master_name.val()==''
              && checkObj_doctor_name.val()==''
            ){
              alert("학력 5개 항목 중 1개는 필수로 입력해야 합니다.");
              checkObj_highSchool_name.focus();
              return;
            }


              if(checkObj_highSchool_name.val()!=''){
               if(checkObj_highSchool_graduate_date.val()=='') {
                 alert(dateNotice);
                 checkObj_highSchool_graduate_date.focus();
                 return;
               }
             }

             if(checkObj_juniorCollege_name.val()!=''){
               if(checkObj_juniorCollege_hakbu.val()=='') {
                 alert(hakbuNotice);
                 checkObj_juniorCollege_hakbu.focus();
                 return;
               }
               if(checkObj_juniorCollege_major.val()=='') {
                 alert(majorNotice);
                 checkObj_juniorCollege_major.focus();
                 return;
               }
               if(checkObj_juniorCollege_graduate_date.val()=='') {
                 alert(dateNotice);
                 checkObj_juniorCollege_graduate_date.focus();
                 return;
               }
             }


             if(checkObj_university_name.val()!=''){
               if(checkObj_university_hakbu.val()=='') {
                 alert(hakbuNotice);
                 checkObj_university_hakbu.focus();
                 return;
               }
               if(checkObj_university_major.val()=='') {
                 alert(majorNotice);
                 checkObj_university_major.focus();
                 return;
               }
               if(checkObj_university_graduate_date.val()=='') {
                 alert(dateNotice);
                 checkObj_university_graduate_date.focus();
                 return;
               }
             }


             if(checkObj_master_name.val()!=''){
               if(checkObj_master_hakbu.val()=='') {
                 alert(hakbuNotice);
                 checkObj_master_hakbu.focus();
                 return;
               }
               if(checkObj_master_major.val()=='') {
                 alert(majorNotice);
                 checkObj_master_major.focus();
                 return;
               }
               if(checkObj_master_graduate_date.val()=='') {
                 alert(dateNotice);
                 checkObj_master_graduate_date.focus();
                 return;
               }
             }


             if(checkObj_doctor_name.val()!=''){
               if(checkObj_doctor_hakbu.val()=='') {
                 alert(hakbuNotice);
                 checkObj_doctor_hakbu.focus();
                 return;
               }
               if(checkObj_doctor_major.val()=='') {
                 majorNotice;
                 checkObj_doctor_major.focus();
                 return;
               }
               if(checkObj_doctor_graduate_date.val()=='') {
                 alert(dateNotice);
                 checkObj_doctor_graduate_date.focus();
                 return;
               }
             }


           if(checkVal(
               checkObj_highSchool_name
               , "학력 > 고등학교 > 학교명에는 특수 문자가 포함될 수 없습니다."
               , /^[ 0-9A-Za-z가-힣]{0,20}$/
            )==false){
            checkObj_highSchool_name.focus()
               return;
            }
         
         if(checkVal(
               checkObj_juniorCollege_name
               , "학력 > 전문대 > 학교명에는 특수 문자가 포함될 수 없습니다."
               , /^[ 0-9A-Za-z가-힣]{0,20}$/
            )==false){
            checkObj_juniorCollege_name.focus()
               return;
            }
         if(checkVal(
               checkObj_university_name
               , "학력 > 대학교 > 학교명에는 특수 문자가 포함될 수 없습니다."
               , /^[ 0-9A-Za-z가-힣]{0,20}$/
            )==false){
            checkObj_university_name.focus()
               return;
            }

         if(checkVal(
               checkObj_master_name
               , "학력 > 석사 > 학교명에는 특수 문자가 포함될 수 없습니다."
               , /^[ 0-9A-Za-z가-힣]{0,20}$/
            )==false){
            checkObj_master_name.focus()
               return;
            }
         if(checkVal(
               checkObj_doctor_name
               , "학력 > 박사 > 학교명에는 특수 문자가 포함될 수 없습니다."
               , /^[ 0-9A-Za-z가-힣]{0,20}$/
            )==false){
            checkObj_doctor_name.focus()
               return;
            }

         if(checkVal(
               checkObj_juniorCollege_major
               , "학력 > 전문대 > 전공 과목에는 특수 문자가 포함될 수 없습니다."
               , /^[ 0-9A-Za-z가-힣]{0,20}$/
            )==false){
            checkObj_juniorCollege_major.focus()
               return;
            }
         
         if(checkVal(
               checkObj_university_major
               , "학력 > 대학교 > 전공 과목에는 특수 문자가 포함될 수 없습니다."
               , /^[ 0-9A-Za-z가-힣]{0,20}$/
            )==false){
            checkObj_university_major.focus()
               return;
            }
         if(checkVal(
               checkObj_master_major
               , "학력 > 석사 > 전공 과목에는 특수 문자가 포함될 수 없습니다."
               , /^[ 0-9A-Za-z가-힣]{0,20}$/
            )==false){
            checkObj_master_major.focus()
               return;
            }

         if(checkVal(
               checkObj_doctor_major
               , "학력 > 박사 > 전공 과목에는 특수 문자가 포함될 수 없습니다."
               , /^[ 0-9A-Za-z가-힣]{0,20}$/
            )==false){
            checkObj_doctor_major.focus()
               return;
            }


         if(checkVal(
               checkObj_juniorCollege_minor
               , "학력 > 전문대 > 부전공 과목에는 특수 문자가 포함될 수 없습니다."
               , /^[ 0-9A-Za-z가-힣]{0,20}$/
            )==false){
            checkObj_juniorCollege_minor.focus()
               return;
            } 
         if(checkVal(
               checkObj_university_minor
               , "학력 > 대학교 > 부전공 과목에는 특수 문자가 포함될 수 없습니다."
               , /^[ 0-9A-Za-z가-힣]{0,20}$/
            )==false){
            checkObj_university_minor.focus()
               return;
            }
         if(checkVal(
               checkObj_master_minor
               , "학력 > 석사 > 부전공 과목에는 특수 문자가 포함될 수 없습니다."
               , /^[ 0-9A-Za-z가-힣]{0,20}$/
            )==false){
            checkObj_master_minor.focus()
               return;
            }
         if(checkVal(
               checkObj_doctor_minor
               , "학력 > 박사 > 부전공 과목에는 특수 문자가 포함될 수 없습니다."
               , /^[ 0-9A-Za-z가-힣]{0,20}$/
            )==false){
            checkObj_doctor_minor.focus()
               return;
            }


         if(checkObj_family_name1.val()=='' 
                    && checkObj_family_job1.val()==''
                    && checkObj_family_birth_year1.val()==''
                    && checkObj_family_relation1.val()==''){''}
         else if(checkObj_family_relation1.val()==''){
                    alert("가족 > 관계 > 1 행을 입력해 주세요.");
                checkObj_family_relation1.focus();
                    return;
                  }

              if(checkObj_family_relation1.val()!=''){
               if(checkObj_family_name1.val()=='') {
                 alert("가족 > 1 행 > 이름을 입력해 주세요.");
                 checkObj_family_name1.focus();
                 return;
               }
             if(checkVal(
                   checkObj_family_name1
               , "가족 > 1 행 > 이름에는 특수문자가 들어갈 수 없습니다."
               , /^[^ ][a-z가-힣]{0,20}$/
            )==false){
                checkObj_family_name1.focus()
               return;
            }
         
               if(checkObj_family_job1.val()=='') {
                 alert("가족 > 1 행 > 직업을 입력해 주세요.");
               checkObj_family_job1.focus();
                 return;
               }
             if(checkVal(
                   checkObj_family_job1
               , "가족 > 1 행 > 직업에는 특수문자가 들어갈 수 없습니다."
               , /^[^ ][A-Za-z가-힣]{0,20}$/
            )==false){
                checkObj_family_job1.focus();
               return;
            }
               if(checkObj_family_birth_year1.val()=='') {
                 alert("가족 > 1 행 > 출생년도를 선택해 주세요.");
               checkObj_family_birth_year1.focus();
                 return;
               }
             }
              
              if(checkObj_family_name2.val()=='' 
                  && checkObj_family_job2.val()==''
                  && checkObj_family_birth_year2.val()==''
                  && checkObj_family_relation2.val()==''){''}
       else if(checkObj_family_relation2.val()==''){
                  alert("가족 > 관계 > 2 행을 입력해 주세요.");
              checkObj_family_relation2.focus();
                  return;
                }

            if(checkObj_family_relation2.val()!=''){
             if(checkObj_family_name2.val()=='') {
               alert("가족 > 2 행 > 이름을 입력해 주세요.");
               checkObj_family_name2.focus();
               return;
             }
           if(checkVal(
                 checkObj_family_name2
             , "가족 > 2 행 > 이름에는 특수문자가 들어갈 수 없습니다."
             , /^[^ ][a-z가-힣]{0,20}$/
          )==false){
              checkObj_family_name2.focus()
             return;
          }
       
             if(checkObj_family_job2.val()=='') {
               alert("가족 > 2 행 > 직업을 입력해 주세요.");
             checkObj_family_job2.focus();
               return;
             }
           if(checkVal(
                 checkObj_family_job2
             , "가족 > 2 행 > 직업에는 특수문자가 들어갈 수 없습니다."
             , /^[^ ][A-Za-z가-힣]{0,20}$/
          )==false){
              checkObj_family_job2.focus();
             return;
          }
             if(checkObj_family_birth_year2.val()=='') {
               alert("가족 > 2 행 > 출생년도를 선택해 주세요.");
             checkObj_family_birth_year2.focus();
               return;
             }
           }
			
            if(checkObj_family_name3.val()=='' 
                && checkObj_family_job3.val()==''
                && checkObj_family_birth_year3.val()==''
                && checkObj_family_relation3.val()==''){''}
     else if(checkObj_family_relation3.val()==''){
                alert("가족 > 관계 > 3 행을 입력해 주세요.");
            checkObj_family_relation3.focus();
                return;
              }

          if(checkObj_family_relation3.val()!=''){
           if(checkObj_family_name3.val()=='') {
             alert("가족 > 3 행 > 이름을 입력해 주세요.");
             checkObj_family_name3.focus();
             return;
           }
         if(checkVal(
               checkObj_family_name3
           , "가족 > 3 행 > 이름에는 특수문자가 들어갈 수 없습니다."
           , /^[^ ][a-z가-힣]{0,20}$/
        )==false){
            checkObj_family_name3.focus()
           return;
        }
     
           if(checkObj_family_job3.val()=='') {
             alert("가족 > 3 행 > 직업을 입력해 주세요.");
           checkObj_family_job3.focus();
             return;
           }
         if(checkVal(
               checkObj_family_job3
           , "가족 > 3 행 > 직업에는 특수문자가 들어갈 수 없습니다."
           , /^[^ ][A-Za-z가-힣]{0,20}$/
        )==false){
            checkObj_family_job3.focus();
           return;
        }
           if(checkObj_family_birth_year3.val()=='') {
             alert("가족 > 3 행 > 출생년도를 선택해 주세요.");
           checkObj_family_birth_year3.focus();
             return;
           }
         }
          
          if(checkObj_family_name4.val()=='' 
              && checkObj_family_job4.val()==''
              && checkObj_family_birth_year4.val()==''
              && checkObj_family_relation4.val()==''){''}
   else if(checkObj_family_relation4.val()==''){
              alert("가족 > 관계 > 4 행을 입력해 주세요.");
          checkObj_family_relation4.focus();
              return;
            }

        if(checkObj_family_relation4.val()!=''){
         if(checkObj_family_name4.val()=='') {
           alert("가족 > 4 행 > 이름을 입력해 주세요.");
           checkObj_family_name4.focus();
           return;
         }
       if(checkVal(
             checkObj_family_name4
         , "가족 > 4 행 > 이름에는 특수문자가 들어갈 수 없습니다."
         , /^[^ ][a-z가-힣]{0,20}$/
      )==false){
          checkObj_family_name4.focus()
         return;
      }
   
         if(checkObj_family_job4.val()=='') {
           alert("가족 > 4 행 > 직업을 입력해 주세요.");
         checkObj_family_job4.focus();
           return;
         }
       if(checkVal(
             checkObj_family_job4
         , "가족 > 4 행 > 직업에는 특수문자가 들어갈 수 없습니다."
         , /^[^ ][A-Za-z가-힣]{0,20}$/
      )==false){
          checkObj_family_job4.focus();
         return;
      }
         if(checkObj_family_birth_year4.val()=='') {
           alert("가족 > 4 행 > 출생년도를 선택해 주세요.");
         checkObj_family_birth_year4.focus();
           return;
         }
       }
        
        if(checkObj_family_name5.val()=='' 
            && checkObj_family_job5.val()==''
            && checkObj_family_birth_year5.val()==''
            && checkObj_family_relation5.val()==''){''}
 else if(checkObj_family_relation5.val()==''){
            alert("가족 > 관계 > 5 행을 입력해 주세요.");
        checkObj_family_relation5.focus();
            return;
          }

      if(checkObj_family_relation5.val()!=''){
       if(checkObj_family_name5.val()=='') {
         alert("가족 > 5 행 > 이름을 입력해 주세요.");
         checkObj_family_name5.focus();
         return;
       }
     if(checkVal(
           checkObj_family_name5
       , "가족 > 5 행 > 이름에는 특수문자가 들어갈 수 없습니다."
       , /^[^ ][a-z가-힣]{0,20}$/
    )==false){
        checkObj_family_name5.focus()
       return;
    }
 
       if(checkObj_family_job5.val()=='') {
         alert("가족 > 5 행 > 직업을 입력해 주세요.");
       checkObj_family_job5.focus();
         return;
       }
     if(checkVal(
           checkObj_family_job5
       , "가족 > 5 행 > 직업에는 특수문자가 들어갈 수 없습니다."
       , /^[^ ][A-Za-z가-힣]{0,20}$/
    )==false){
        checkObj_family_job5.focus();
       return;
    }
       if(checkObj_family_birth_year5.val()=='') {
         alert("가족 > 5 행 > 출생년도를 선택해 주세요.");
       checkObj_family_birth_year5.focus();
         return;
       }
     }
              

             if(checkObj_dep.val()=='' 
                           && checkObj_part.val()==''
                           && checkObj_duty.val()==''
                           && checkObj_position.val()==''
                           && checkObj_hire_type.val()==''
                           && checkObj_salary.val()==''
                           && checkObj_hired_date.val()==''
                           && checkObj_resign_date.val()==''
                           && checkObj_past_company_name.val()==''){''}
             else if(checkObj_past_company_name.val()==''
                       ){
                         alert("회사명을 입력해 주세요.");
                   checkObj_past_company_name.focus();
                         return;
                       }
           
             else if(checkObj_past_company_name.val()==''){
                if(checkVal(      
                   checkObj_past_company_name
               , "회사명을 정확히 입력해 주세요."
               , /^[^ |ㄱ-ㅎㅏ-ㅣ]{2,30}$/
            )==false){
                checkObj_past_company_name.focus();
               return;
            }
             }


              if(checkObj_past_company_name.val()!=''){
                if(checkObj_duty.val()=='') {
                  alert("이전 회사 업무를 입력해 주세요.");
                checkObj_duty.focus();
                  return;
                }
                if(checkObj_part.val()=='') {
                  alert("이전 회사 분야를 입력해 주세요.");
                checkObj_part.focus();
                  return;
                }
                if(checkObj_dep.val()=='') {
                  alert("이전 회사 부서를 입력해 주세요.");
                checkObj_dep.focus();
                  return;
                }
              if(checkObj_position.val()=='') {
                  alert("이전 회사 직위를 입력해 주세요.");
                checkObj_position.focus();
                  return;
                }
              if(checkObj_hire_type.val()=='') {
                  alert("이전 회사 고용 형태를 선택해 주세요.");
                checkObj_hire_type.focus();
                  return;
                }
            if(checkObj_salary.val()=='') {
                  alert("이전 회사 연봉을 입력해 주세요.");
                checkObj_salary.focus();
                  return;
                }
            if(checkObj_hired_date.val()=='') {
                alert("이전 회사 입사일을 입력해 주세요.");
                checkObj_hired_date.focus();
                return;
              }
            if(checkObj_resign_date.val()=='') {
                alert("이전 회사 퇴사일을 입력해 주세요.");
                checkObj_resign_date.focus();
                return;
              }
            if(checkObj_hired_date.val()>checkObj_resign_date.val()){
                alert("입사일은 퇴사일보다 클 수 없습니다.");
                checkObj_hired_date.focus();
                return;
            }
         
           
             
            if(checkVal(
                  checkObj_salary
                      , "연봉은 숫자로만 이루어질 수 있습니다."
                      , /^[0-9]{0,20}$/
                    )==false){
                checkObj_salary.focus();
                      return;
                    }
                  }


           if(checkObj_edu_period.val()=='' 
                      && checkObj_eduFinish_date.val()==''
                      && checkObj_eduFinish_subject.val()==''
                      && checkObj_itCenter_name.val()==''
                    ){''}
           else if(checkObj_itCenter_name.val()=='')
                  {  
                      alert("교육 센터명을 입력해 주세요.");
                    checkObj_itCenter_name.focus();
                      return;
                    }
           
           else if(checkObj_itCenter_name.val()!=''){
              if(checkVal(
                 checkObj_itCenter_name
            , "교육센터명을 정확히 입력해 주세요."
            , /^[^ |ㄱ-ㅎㅏ-ㅣ]{2,30}$/)==false){
               checkObj_itCenter_name.focus();
            return;
         }}


           if(checkObj_itCenter_name.val()!=''){
             if(checkObj_edu_period.val()=='') {
               alert("교육 기간을 입력해 주세요.");
               checkObj_edu_period.focus();
               return;
             }
             if(checkObj_eduFinish_date.val()=='') {
               alert("교육 수료일을 입력해 주세요.");
               checkObj_eduFinish_date.focus();
               return;
             }
             if(checkObj_eduFinish_subject.val()=='') {
               alert("수료 과목을 입력해 주세요.");
               checkObj_eduFinish_subject.focus();
               return;
             }
           }

          if(checkObj_smoke.val()=="" || checkObj_smoke.val()==null){
              alert("하루 흡연량은 필수 선택 사항입니다.")
              checkObj_smoke.focus()
                 return;
           }


           if(checkObj_soju.val()==""){
              alert("소주 주량은 필수 선택 사항입니다.")
              checkObj_soju.focus()
                 return;
           }

           
           if(checkObj_beer.val()==""){
              alert("맥주 주량은 필수 선택 사항입니다.")
              checkObj_beer.focus()
                 return;
           }

           if(checkChecked(
              checkObj_interest
              ,"관심 분야는 필수 체크사항입니다.")==false){
                 return;
           }

           if(checkObj_beer.val()==""){
              alert("맥주 주량은 필수 선택 사항입니다.")
              checkObj_beer.focus()
                 return;
           }

           if(checkObj_prj_name.val()=='' &&
              checkObj_start_date.val()=='' &&
              checkObj_finish_date.val()==''&&
              checkObj_dispatch_level.val()==''&&
              checkObj_client_company_name.val()==''&&
              checkObj_work_company_name.val()==''&&
              checkObj_dispatch_role.val()== '' &&
              checkObj_server_computer.val()== undefined &&
              checkObj_OS.val()== undefined &&
              checkObj_it_language.val()== undefined &&
              checkObj_DBMS.val() == undefined &&
              checkObj_tool.val() == undefined
               ){''}
                else {       
                      if(checkObj_prj_name.val()==''){
                        alert("개발경력 > 프로젝트명을 입력해주세요");
                        return;
                      }
                  
                    if(checkObj_prj_name.val()!=''){
                        
                          if(checkVal(
                              checkObj_prj_name
                                    , "개발경력 > 프로젝트명을 정확히 입력해 주세요."
                                    , /[^ ][^ㄱ-ㅎㅏ-ㅣ]{1,29}$/
                                  )==false){
                                    checkObj_prj_name.focus()
                                    return;
                                  }
                        
                          
                          if(checkObj_start_date.val()==''){
                              alert("개발경력 > 프로젝트 시작일을 입력해 주세요");
                              checkObj_start_date.focus();
                              return;
                          }
                          if(checkObj_finish_date.val()==''){
                              alert("개발경력 > 프로젝트 종료일을 입력해 주세요");
                              checkObj_finish_date.focus();
                              return;
                          }

                          else if(checkObj_dispatch_level.val()==''){
                              alert("개발경력 > 파견 단계를 입력해 주세요");
                              checkObj_dispatch_level.focus();
                              return;
                          }
                          else if(checkObj_client_company_name.val()==''){
                              alert("개발경력 > 고객사명을 입력해주세요");
                              checkObj_client_company_name.focus();
                              return;
                          }
                          else if(checkObj_work_company_name.val()==''){
                              alert("개발경력 > 근무사명을 입력해주세요");
                              checkObj_work_company_name.focus();
                              return;
                          }
                          
                          else if( checkObj_dispatch_role.val()==null || checkObj_dispatch_role.val()=='' ) {
                            alert("개발경력 > 역할을 선택해 주세요.");
                            checkObj_dispatch_role.focus();
                            return;
                          }

                          else if(
                            checkObj_DBMS.length==0
                            &&
                            checkObj_server_computer.length==0
                            &&
                            checkObj_OS.length==0
                            &&
                            checkObj_it_language.length==0
                            &&
                            checkObj_tool.length==0) {
                            alert("개발경력 > 개발환경 5가지 중 1개는 필수 선택입니다.");
                            checkObj_server_computer.focus();
                            return;
                          }
                        }
                    if(checkObj_start_date.val()>checkObj_finish_date.val()){
                      alert("개발경력 > 프로젝트 시작일은 종료일보다 클 수 없습니다.");
                      checkObj_start_date.focus();
                      return;
                    }
                  } 
				
           ajax(
            "/registDevProc.do"
            ,"post"
            ,formObj
            ,function(responseJson){
              var devRegCnt = responseJson["devRegCnt"];
              
                if(devRegCnt==11){
                  alert("아이디가 중복되었습니다.");
                  return;
                }
                if(devRegCnt >=1){
                  alert("정규직 개발자 정보가 등록되었습니다.");
                    location.replace('/searchDev.do');

                }
              else{
                alert("정보 등록 중 오류가 발생했습니다. 다시 시도해주십시오.")
              }
          });
        }
  		
  	    function fam_del(e){
          $(e).parent('div').parent('.fam_desc').hide();
  	  	}
  	    
  	    function fam_add(){
  	    	var obj = $(".family_div").children();

  	        if(obj.eq(3).is(':visible')==false){
  	        	obj.eq(3).show();
  	    		return;
  	    	}
  	        if(obj.eq(4).is(':visible')==false){
  	        	obj.eq(4).show();
  	    		return;
  	    	}
  	        if(obj.eq(5).is(':visible')==false){
  	        	obj.eq(5).show();
  	    		return;
  	    	}
  	        if(obj.eq(6).is(':visible')==false){
  	        	obj.eq(6).show();
  	    		return;
  	    	}
  	  	}
 
        
        </script>
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
              <td class="main_cate active" onclick="location.replace('/searchDev.do')">정규직 개발자</td>
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
          <form name="registDevForm" class="boardForm">
            <header>
              <div>정규직 개발자 입력</div>
              <small>개발자 입력 시 <small>최소치</small> 입력과  <small>최대치</small> 입력에 유의하여 검색해 주세요.</small>
            </header>
               <div class="dev_user">
                    <td>아이디</td>
                    <td>
                        <input type="text" name="id" maxlength="20">
                    </td>
               <td>암호</td>
                    <td>
                        <input type="password" name="pwd" maxlength="20"> 
                    </td>
                    <td>암호확인</td>
                    <td colspan="2">
                        <input type="password" name="rePwd" maxlength="20">
                    </td>
                    </div>
             <div> 
                    <td>이름</td>
                    <td>
                        <input type="text" name="dName"> 
                    </td>
                    <td>주민번호</td>
                    <td>
                        <input type="text" name="jumin_num1" maxlength="6">-
                        <input type="text" name="jumin_num2" maxlength="7">
                    </td>
                    <td>핸드폰</td>
                    <td colspan="2">
                        <input type="text" name="phone" maxlength="11"> (-없이 입력)
                    </td>
                </div>
               <div>
                    <td>이메일</td>
                    <td>
                        <input type="email" name="email">
                    </td>
                    <td>병역</td>
                    <td>
                        
                        <select name="go_army">
                            <option value=""></option>
                            <option value="1">군필</option>
                            <option value="2">의가사제대</option>
                            <option value="3">면제</option>
                        </select>&nbsp;(여성은 면제로 입력해 주세요.)<br><td colspan="4"></td>
                    </td>
                </div>
            <br>
                <div>
                <td>[주소] : </td>
                <td colspan="6">
                    <input type="text" name="address" maxlength="100" size="70"> <br>
                </td>
                </div>
                <br>
                <div>
                    <td>긴급연락처(사고 대비)</td>
                    <td>[연락 받을 사람 이름] :&nbsp;
                        <input type="text" name="emergency_name" size="10"> <br><br>
                    </td>
                    <td>
                        [관계] :
                    </td>
                    <td>
                        <select name="emergency_relation">
                            <option value=""></option>
                            <option value="1">부모</option>
                            <option value="2">자식</option>
                            <option value="3">형제</option>
                            <option value="4">친척</option>
                            <option value="5">지인</option>
                        </select> (부모,자식,형제,친척,지인)<br>
                    </td>
                    <td>[전화번호] :</td>
                    <td>
                        <input type="tel" name="emergency_phone"  maxlength="11"> <br>
                    </td>
                </div>  
                <div>
                    <td>급여통장번호</td>
                        <td>
                        <select name="salary_bank">
                            <option value="">--은행선택--</option>
                            <option value="1">하나은행</option>
                            <option value="2">국민은행</option>
                            <option value="3">카카오뱅크</option>
                            <option value="4">신한은행</option></select> 
                            <input type="text" name="account_num" maxlength="14">
                            <td colspan="5">
                            
                    	(-없이 입력)
                       </td>
                </div> 
            </div>
            <div>
              <div class="title">학력</div>   
                <div class="school">
                  <div>학교명</div>
                  <div>학부</div>
                  <div>전공과목</div>
                  <div>부전공과목</div>
                  <div>졸업일</div>
                </div>
                <div class="school_desc">
                  <div>
                    <input type="text" name="highSchool_name">고등학교 졸
                    <br>
                    <input type="text" name="juniorCollege_name">전문대 졸(대학 졸)
                    <br>
                    <input type="text" name="university_name">대학교 학사 졸 
                    <br>
                    <input type="text" name="master_name">대학교 석사 졸
                    <br>
                    <input type="text" name="doctor_name">대학교 박사 졸
                    <br>
                  </div>
                  <div>
                    <br>
                    <select name="juniorCollege_hakbu">
                    <option value=""></option>
                    <option value="1">컴퓨터공학</option>
                    <option value="2">공과대</option>
                    <option value="3">자연대</option>
                    <option value="4">경상대</option>
                    <option value="5">사회대</option>
                    <option value="6">인문대</option>
                    <option value="7">법대</option>
                    <option value="8">기타</option>
                    </select>
                    <br>
                    <select name="university_hakbu">
                    <option value=""></option>
                    <option value="1">컴퓨터공학</option>
                    <option value="2">공과대</option>
                    <option value="3">자연대</option>
                    <option value="4">경상대</option>
                    <option value="5">사회대</option>
                    <option value="6">인문대</option>
                    <option value="7">법대</option>
                    <option value="8">기타</option>
                    </select>
                    <br>
                    <select name="master_hakbu">
                    <option value=""></option>
                    <option value="1">컴퓨터공학</option>
                    <option value="2">공과대</option>
                    <option value="3">자연대</option>
                    <option value="4">경상대</option>
                    <option value="5">사회대</option>
                    <option value="6">인문대</option>
                    <option value="7">법대</option>
                    <option value="8">기타</option>
                    </select>
                    <br>
                    <select name="doctor_hakbu">
                    <option value=""></option>
                    <option value="1">컴퓨터공학</option>
                    <option value="2">공과대</option>
                    <option value="3">자연대</option>
                    <option value="4">경상대</option>
                    <option value="5">사회대</option>
                    <option value="6">인문대</option>
                    <option value="7">법대</option>
                    <option value="8">기타</option>
                    </select>
                    <br>
                  </div>
                  <div>
                    <br>
                    <input type="text" name="juniorCollege_major">
                    <br>
                    <input type="text" name="university_major">
                    <br>
                    <input type="text" name="master_major">
                    <br>
                    <input type="text" name="doctor_major">
                    <br>
                  </div>
                  <div>
                    
                    <br>
                    <input type="text" name="juniorCollege_minor">
                    <br>
                    <input type="text" name="university_minor">
                    <br>
                    <input type="text" name="master_minor">
                    <br>
                    <input type="text" name="doctor_minor">
                    <br>
                  </div>
                  <div>
                    <input type="date" name="highSchool_graduate_date">
                    <br>
                    <input type="date" name="juniorCollege_graduate_date">
                    <br>
                    <input type="date" name="university_graduate_date">
                    <br>
                    <input type="date" name="master_graduate_date">
                    <br>
                    <input type="date" name="doctor_graduate_date">
                    <br>
                  </div>
                </div>
            </div>

            <div class="family_div">
              <div class="title">가족
              		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <input type="button" value="행 추가" class="btn" onclick="fam_add()">
              </div>
              <div class="fam">
                <div>관계</div>
                <div>이름</div>
                <div>직업(미성년자는 무직 입력)</div>
                <div>출생년도</div>
                <div>동거여부</div>
                <div>행 삭제</div>
              </div>
              
            <!-- 가족관계 복붙 ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ-->
              <div class="fam_desc desc_f">
                <div>
                  <select name="family_relation1" id="family_relation">
                    <option value=""></option>
                    <option value="1">부</option>
                    <option value="2">모</option>
                    <option value="3">자녀</option>
                    <option value="4">형제자매</option>
                    <option value="5">배우자</option>
                  </select>
                </div>
                <div>
                  <input type="text" name="family_name1" maxlength="30">
                </div>
                <div>
                  <input type="text" name="family_job1" maxlength="30">
                </div>
                <div>
                  <select name="family_birth_year1">
                        <option value=""></option>
                        <c:forEach var="i" begin="1910" end="2023">
                          <option value="${i}">${i}</option>
                        </c:forEach>
                      </select>년
                </div>
                <div>
                   <td><input type="checkbox" name="is_live_together1" value="동거">동거</td>
                </div>
                <div>
                  <input type="button" value="초기화" class="btn" onclick="fam_empty(this)">
                </div>
              </div>
  
              <div class="fam_desc">
                <div>
                  <select name="family_relation2" id="family_relation">
                    <option value=""></option>
                    <option value="1">부</option>
                    <option value="2">모</option>
                    <option value="3">자녀</option>
                    <option value="4">형제자매</option>
                    <option value="5">배우자</option>
                  </select>
                </div>
                <div>
                  <input type="text" name="family_name2" maxlength="30">
                </div>
                <div>
                  <input type="text" name="family_job2" maxlength="30">
                </div>
                <div>
                  <select name="family_birth_year2">
                        <option value=""></option>
                        <c:forEach var="i" begin="1910" end="2023">
                          <option value="${i}">${i}</option>
                        </c:forEach>
                      </select>년
                </div>
                <div>
                   <td><input type="checkbox" name="is_live_together2" value="동거">동거</td>
                </div>
                <div>
                  <input type="button" value="행삭제" class="btn" onclick="fam_del(this)">
                </div>
              </div>
              
              <div class="fam_desc">
                <div>
                  <select name="family_relation3" id="family_relation">
                    <option value=""></option>
                    <option value="1">부</option>
                    <option value="2">모</option>
                    <option value="3">자녀</option>
                    <option value="4">형제자매</option>
                    <option value="5">배우자</option>
                  </select>
                </div>
                <div>
                  <input type="text" name="family_name3" maxlength="30">
                </div>
                <div>
                  <input type="text" name="family_job3" maxlength="30">
                </div>
                <div>
                  <select name="family_birth_year3">
                        <option value=""></option>
                        <c:forEach var="i" begin="1910" end="2023">
                          <option value="${i}">${i}</option>
                        </c:forEach>
                      </select>년
                </div>
                <div>
                   <td><input type="checkbox" name="is_live_together3" value="동거">동거</td>
                </div>
                <div>
                  <input type="button" value="행삭제" class="btn" onclick="fam_del(this)">
                </div>
              </div>
              
              <div class="fam_desc">
                <div>
                  <select name="family_relation4" id="family_relation">
                    <option value=""></option>
                    <option value="1">부</option>
                    <option value="2">모</option>
                    <option value="3">자녀</option>
                    <option value="4">형제자매</option>
                    <option value="5">배우자</option>
                  </select>
                </div>
                <div>
                  <input type="text" name="family_name4" maxlength="30">
                </div>
                <div>
                  <input type="text" name="family_job4" maxlength="30">
                </div>
                <div>
                  <select name="family_birth_year4">
                        <option value=""></option>
                        <c:forEach var="i" begin="1910" end="2023">
                          <option value="${i}">${i}</option>
                        </c:forEach>
                      </select>년
                </div>
                <div>
                   <td><input type="checkbox" name="is_live_together4" value="동거">동거</td>
                </div>
                <div>
                  <input type="button" value="행삭제" class="btn" onclick="fam_del(this)">
                </div>
              </div>
              
              <div class="fam_desc" >
                <div>
                  <select name="family_relation5" id="family_relation">
                    <option value=""></option>
                    <option value="1">부</option>
                    <option value="2">모</option>
                    <option value="3">자녀</option>
                    <option value="4">형제자매</option>
                    <option value="5">배우자</option>
                  </select>
                </div>
                <div>
                  <input type="text" name="family_name5" maxlength="30">
                </div>
                <div>
                  <input type="text" name="family_job5" maxlength="30">
                </div>
                <div>
                  <select name="family_birth_year5">
                        <option value=""></option>
                        <c:forEach var="i" begin="1910" end="2023">
                          <option value="${i}">${i}</option>
                        </c:forEach>
                      </select>년
                </div>
                <div>
                   <td><input type="checkbox" name="is_live_together5" value="동거">동거</td>
                </div>
                <div>
                  <input type="button" value="행삭제" class="btn" onclick="fam_del(this)">
                </div>
              </div>
            </div>
            
            

            <div class="compan_div">
              <div class="title">회사 경력 (개발 관련 최근 1건만 입력)
              </div>
              <div class="compan">
                <div>회사명/업무</div>
                <div>분야</div>
                <div>부서</div>
                <div>직위</div>
                <div>고용형태</div>
                <div>연봉</div>
                <div>입사일/퇴사일</div>
              </div>
              
              
              	<div class="compan_desc">
                <div class="compan_name">
                  <input type="text" name="past_company_name1" placeholder="회사명">
                  <br>
                  <select name="duty1">
                  <option value=""></option>
                  <option value="1">개발</option>
                  <option value="2">운영</option>
                  <option value="3">분석설계</option>
                  <option value="4">PL</option>
                  <option value="5">PM</option>
                  <option value="6">웹디</option></select>
                </div>
                <div>
                <select name="part1">
                <option value=""></option>
                <option value="1">교육</option>
                <option value="2">대부</option>
                <option value="3">대학</option>
                <option value="4">보험</option>
                <option value="5">쇼핑</option>
                <option value="6">언론</option>
                <option value="7">유통</option>
                <option value="8">은행</option>
                <option value="9">의료</option>
                <option value="10">전자/전기</option>
                <option value="11">정부기관</option>
                <option value="12">증권</option>
                <option value="13">카드</option>
                <option value="14">통신</option>
                <option value="15">기타</option>
                </select>
                </div>
                <div>
                <select name="dep1">
                <option value=""></option>
                <option value="1">개발부</option>
                <option value="2">운영부</option>
                <option value="3">사업부</option>
                </select>
                </div>
                <div>
                <select name="position1">
                <option value=""></option>
                <option value="1">사원</option>
                <option value="2">주임</option>
                <option value="3">대리</option>
                <option value="4">과장</option>
                <option value="5">차장</option>
                <option value="6">부장</option>
                <option value="7">상무</option>
                <option value="8">전무</option>
                <option value="9">부사장</option>
                <option value="10">사장</option>
                </select>
                </div>
                <div>
                  <select name="hire_type1">
                        <option value=""></option>
                        <option value="1">정규직</option>
                        <option value="2">비정규직</option>
                        <option value="3">인턴</option></select>
                </div>
                <div>
                  <input type="text" name="salary1">
                </div>
                <div>
                  <div>
                    <span>입사일 : </span>
                    <input type="month" name="hired_date1">
                  </div>
                  <div>
                    <span>퇴사일 : </span>
                    <input type="month" name="resign_date1">
                  </div>
                </div>
              </div>


              
            </div>
            
            <div>
              <div class="title">자격증</div>

                  <tr>
                          <td>
                          <input type="checkbox" name="license" value="1">정보처리기사
                          <input type="checkbox" name="license" value="2">정보처리산업기사
                          
                      </td>
                  </tr>
                 </div> 


            <div>
              <div class="title">외국어 (중급 이상만 입력)</div>
                  <tr>
                      <td>독해 가능 외국어</td>
                      <td>
                          <input type="checkbox" name="can_reading_language" value="1">영어
                          <input type="checkbox" name="can_reading_language" value="2">일어
                          <input type="checkbox" name="can_reading_language" value="3">중국어
                          <input type="checkbox" name="can_reading_language" value="4">불어
                          <input type="checkbox" name="can_reading_language" value="5">독일어
                      </td> <br><br>
                      <td>회화 가능 외국어</td>
                      <td>
                          <input type="checkbox" name="can_speaking_language" value="1">영어
                          <input type="checkbox" name="can_speaking_language" value="2">일어
                          <input type="checkbox" name="can_speaking_language" value="3">중국어
                          <input type="checkbox" name="can_speaking_language" value="4">불어
                          <input type="checkbox" name="can_speaking_language" value="5">독일어
                      </td>
                  </tr>
            </div>
            <div>
              <div class="title">IT 교육센터</div>
                <div class="center">
                  <div>교육센터명</div>
                  <div>교육기간</div>
                  <div>교육수료일</div>
                  <div>수료과목</div>
                </div>
                <div class="center_desc">
                  <div>
                    <input type="text" name="itCenter_name" maxlength="30">
                  </div>
                  <div>
                    <select name="edu_period">
                            <option value=""></option>
                            <c:forEach var="i" begin="01" end="12">
                              <option value="${i}">${i}</option>
                            </c:forEach>
                          </select>개월
                  </div>
                  <div>
                    <input type="date" name="eduFinish_date">
                  </div>
                  <div>
                    <input type="text" name="eduFinish_subject">
                  </div>
                </div>
            </div>
           <div>
              <div class="title">기호</div>
              <div class="like_title">
                <div>
                  <div>하루 흡연량</div>
                  <div>
                    <select name="smoke" id="smoke">
                      <option value=""></option>
                      <option value="1">0</option>
                      <option value="2">1</option>
                      <option value="3">2</option>
                      <option value="4">3</option>
                    </select>갑
                  </div>
                </div>
                <div>
                  <div>소주 주량</div>
                  <div>
                    <select name="soju" id="soju">
                      <option value=""></option>
                      <option value="1">0</option>
                      <option value="2">1</option>
                      <option value="3">2</option>
                      <option value="4">3</option>
                    </select>병
                  </div>
                </div>
                <div>
                  <div>맥주 주량 (500CC 기준)</div>
                  <div>
                    <select name="beer" id="beer">
                      <option value=""></option>
                      <option value="1">0</option>
                      <option value="2">1</option>
                      <option value="3">2</option>
                      <option value="4">3</option>
                    </select>잔
                  </div>
                </div>
                <div>
                  <div>관심분야</div>
                  <div>
                    <td><input type="checkbox" name="interest" value="1">정치</td>
                    <td><input type="checkbox" name="interest" value="2">경제</td>
                    <td><input type="checkbox" name="interest" value="3">사회</td>
                    <td><input type="checkbox" name="interest" value="4">문화</td>
                 </div>
                </div>
              </div>
            </div>
            

            <div class="curr_div">
              <div class="title">개발경력 (최근 1건만 입력)
              </div>
              <div class="cur">
                <div>프로젝트명 / 기간</div>
                <div>고객사 / 근무사 / 역할</div>
                <div>개발환경<span class="emm_btn" onclick="empty_emp(this)">모두 비우기</span></div>
              </div>

              <div class="curr">
                <div>
                  <div class="dept_1">
                    <div>프로젝트명</div>
                    <input type="text" name="past_prj_name" maxlength="30">
                  </div>
                  <div class="dept_1">
                    <div>시작일</div>
                    <input type="month" name="prj_start_date">
                  </div>
                  <div class="dept_1">
                    <div>종료일</div>
                     <input type="month" name="prj_finish_date">
                  </div>
                  <div class="dept_1">
                    <div>파견단계</div>
                    <select name="dispatch_level">
                            <option value=""></option>
                            <option value="1">파견확정</option>
                            <option value="2">파견중</option>
                            <option value="3">파견종료</option></select>
                  </div>
                </div>
                
                
                <div>
                  <div class="dept_1">
                    <div>고객사</div>
                    <input type="text" name="client_company_name" maxlength="30">
                  </div>
                  <div class="dept_1">
                    <div>근무사</div>
                    <input type="text" name="work_company_name" maxlength="30">
                  </div>
                  <div class="dept_1 roll">
                    <div>역할</div>
                    <select name="dispatch_role" id="">
                      <option></option>
                      <option value="1">개발</option>
                      <option value="2">운영</option>
                      <option value="3">분석설계</option>
                      <option value="4">PL</option>
                      <option value="5">PM</option>
                      <option value="6">웹디</option>
                      <option value="7">publisher</option>
                      <option value="8">기타</option>
                    </select>
                  </div>
                </div>
                <div>
                  <div class="cur_desc">
                    <div>기종</div>
                    <div class="desc_option">
                      <div onclick="showList(this)">옵션 <i class="fa fa-angle-down" aria-hidden="true"></i></div>
                      <div class="scroll_box">
                        <div><input type="checkbox" name="server_computer1" value="1"> ASUS</div>
                        <div><input type="checkbox" name="server_computer1" value="2"> DELL</div>
                        <div><input type="checkbox" name="server_computer1" value="3"> DELL EMC</div>
                        <div><input type="checkbox" name="server_computer1" value="4"> HP</div>
                        <div><input type="checkbox" name="server_computer1" value="5"> HPE</div>
                        <div><input type="checkbox" name="server_computer1" value="6"> IBM</div>
                        <div><input type="checkbox" name="server_computer1" value="7"> INTEL</div>
                        <div><input type="checkbox" name="server_computer1" value="8"> Lenovo</div>
                        <div><input type="checkbox" name="server_computer1" value="9"> MSI</div>
                        <div><input type="checkbox" name="server_computer1" value="10"> Supermicro</div>
                        <div><input type="checkbox" name="server_computer1" value="11"> TYAN</div>
                      </div>
                    </div>
                  </div>
                  <div class="cur_desc">
                    <div>OS</div>
                    <div class="desc_option">
                      <div onclick="showList(this)">옵션 <i class="fa fa-angle-down" aria-hidden="true"></i></div>
                      <div class="scroll_box">
                        <div><input type="checkbox" name="OS1" value="1"> Linux</div>
                        <div><input type="checkbox" name="OS1" value="2"> Mac</div>
                        <div><input type="checkbox" name="OS1" value="3"> Ubuntu</div>
                        <div><input type="checkbox" name="OS1" value="4"> Unix</div>
                        <div><input type="checkbox" name="OS1" value="5"> Windows server</div>
                      </div>
                    </div>
                  </div>
                  <div class="cur_desc">
                    <div>언어</div>
                    <div class="desc_option">
                      <div onclick="showList(this)">옵션 <i class="fa fa-angle-down" aria-hidden="true"></i></div>
                      <div class="scroll_box">
                        <div><input type="checkbox" name="it_language1" value="1"> Augular</div>
                        <div><input type="checkbox" name="it_language1" value="2"> Android</div>
                        <div><input type="checkbox" name="it_language1" value="3"> ASP</div>
                        <div><input type="checkbox" name="it_language1" value="4"> Assembly Language(ASM)</div>
                        <div><input type="checkbox" name="it_language1" value="5"> Atom</div>
                        <div><input type="checkbox" name="it_language1" value="6"> Brackets</div>
                        <div><input type="checkbox" name="it_language1" value="7"> C</div>
                        <div><input type="checkbox" name="it_language1" value="8"> C#</div>
                        <div><input type="checkbox" name="it_language1" value="9"> C++</div>
                        <div><input type="checkbox" name="it_language1" value="10"> Cobol</div>
                        <div><input type="checkbox" name="it_language1" value="11"> Delphi</div>
                        <div><input type="checkbox" name="it_language1" value="12"> Fortran</div>
                        <div><input type="checkbox" name="it_language1" value="13"> go</div>
                        <div><input type="checkbox" name="it_language1" value="14"> groovy</div>
                        <div><input type="checkbox" name="it_language1" value="15"> HTML/CSS</div>
                        <div><input type="checkbox" name="it_language1" value="16"> Java</div>
                        <div><input type="checkbox" name="it_language1" value="17"> Javascript</div>
                        <div><input type="checkbox" name="it_language1" value="18"> Kotlin</div>
                        <div><input type="checkbox" name="it_language1" value="19"> MATLAB</div>
                        <div><input type="checkbox" name="it_language1" value="20"> Nexacro</div>
                        <div><input type="checkbox" name="it_language1" value="21"> PHP</div>
                        <div><input type="checkbox" name="it_language1" value="22"> PowerBulider</div>
                        <div><input type="checkbox" name="it_language1" value="23"> Python</div>
                        <div><input type="checkbox" name="it_language1" value="24"> R</div>
                        <div><input type="checkbox" name="it_language1" value="25"> React</div>
                        <div><input type="checkbox" name="it_language1" value="26"> ruby</div>
                        <div><input type="checkbox" name="it_language1" value="27"> SQL</div>
                        <div><input type="checkbox" name="it_language1" value="28"> Sublime Text</div>
                        <div><input type="checkbox" name="it_language1" value="29"> Swift</div>
                        <div><input type="checkbox" name="it_language1" value="30"> TypeScript</div>
                        <div><input type="checkbox" name="it_language1" value="31"> Visual Basic</div>
                        <div><input type="checkbox" name="it_language1" value="32"> Vue</div>
                      </div>
                    </div>
                  </div>
                  <div class="cur_desc">
                    <div>DBMS</div>
                    <div class="desc_option">

                      <div onclick="showList(this)">옵션 <i class="fa fa-angle-down" aria-hidden="true"></i></div>
                      <div class="scroll_box">
                        <div><input type="checkbox" name="DBMS1" value="1"> Access</div>
                        <div><input type="checkbox" name="DBMS1" value="2"> Cassandra</div>
                        <div><input type="checkbox" name="DBMS1" value="3"> DB2</div>
                        <div><input type="checkbox" name="DBMS1" value="4"> Elasticsearch</div>
                        <div><input type="checkbox" name="DBMS1" value="5"> IBM Db2</div>
                        <div><input type="checkbox" name="DBMS1" value="6"> MariaDB</div>
                        <div><input type="checkbox" name="DBMS1" value="7"> Microsoft Access</div>
                        <div><input type="checkbox" name="DBMS1" value="8"> MongoDB</div>
                        <div><input type="checkbox" name="DBMS1" value="9"> MSSQL</div>
                        <div><input type="checkbox" name="DBMS1" value="10"> MySQL</div>
                        <div><input type="checkbox" name="DBMS1" value="11"> NoSQL</div>
                        <div><input type="checkbox" name="DBMS1" value="12"> Oracle</div>
                        <div><input type="checkbox" name="DBMS1" value="13"> PostgreSQL</div>
                        <div><input type="checkbox" name="DBMS1" value="14"> Redis</div>
                        <div><input type="checkbox" name="DBMS1" value="15"> SQL Server</div>
                        <div><input type="checkbox" name="DBMS1" value="16"> SQLite</div>
                      </div>
                    </div>
                  </div>
                  <div class="cur_desc">
                    <div>tool</div>
                    <div class="desc_option">

                      <div onclick="showList(this)">옵션 <i class="fa fa-angle-down" aria-hidden="true"></i></div>
                      <div class="scroll_box">
                        <div><input type="checkbox" name="tool1" value="1"> .Net</div>
                        <div><input type="checkbox" name="tool1" value="2"> Android Studio</div>
                        <div><input type="checkbox" name="tool1" value="3"> Ecilpse</div>
                        <div><input type="checkbox" name="tool1" value="4"> Finereport</div>
                        <div><input type="checkbox" name="tool1" value="5"> Flask</div>
                        <div><input type="checkbox" name="tool1" value="6"> GDB</div>
                        <div><input type="checkbox" name="tool1" value="7"> Git</div>
                        <div><input type="checkbox" name="tool1" value="8"> Intellij</div>
                        <div><input type="checkbox" name="tool1" value="9"> Jquery</div>
                        <div><input type="checkbox" name="tool1" value="10"> Jupyter</div>
                        <div><input type="checkbox" name="tool1" value="11"> Notepad++</div>
                        <div><input type="checkbox" name="tool1" value="12"> PyCharm</div>
                        <div><input type="checkbox" name="tool1" value="13"> SVN</div>
                        <div><input type="checkbox" name="tool1" value="14"> Thymeleaf</div>
                        <div><input type="checkbox" name="tool1" value="15"> Unity</div>
                        <div><input type="checkbox" name="tool1" value="16"> Vim</div>
                        <div><input type="checkbox" name="tool1" value="17"> Visual Studio</div>
                        <div><input type="checkbox" name="tool1" value="18"> vscode</div>
                        <div><input type="checkbox" name="tool1" value="19"> Xcode</div>
                      </div>
                    </div>
                  </div>
                </div>
            </div>
            
            
            
            </div>

            <span style="cursor:pointer" onclick="location.replace('/searchDev.do')" name="cancel" class="cancel">취소</span>
            <span style="cursor:pointer" onclick="saveData();" name="save" class="save">저장</span>
          </form>
<form name="devSearchForm" method="post" action="searchDev.do"></form>
</body>
</html>