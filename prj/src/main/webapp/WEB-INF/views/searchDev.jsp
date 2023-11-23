<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/common.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="css/registDev.css" rel="stylesheet">
<link href="css/searchDev.css" rel="stylesheet">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" integrity="sha512-5A8nwdMOWrSz20fDsjczgUidUBR8liPYU+WymTZP1lmY9G6Oc7HlZv156XqnsgNUzTyMefFTcsFH/tnJE/+xBg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<script>

$(function(){});


function empty_emp(e){
    $('[name="skill1"]').prop('checked', false);
    $('[name="skill2"]').prop('checked', false);
    $('[name="skill3"]').prop('checked', false);
    $('[name="skill4"]').prop('checked', false);
    $('[name="skill5"]').prop('checked', false);
   };

   function empty_emp_detail(e){
    $('[name="server_computer1"]').prop('checked', false);
    $('[name="OS1"]').prop('checked', false);
    $('[name="it_language1"]').prop('checked', false);
    $('[name="server_computer1"]').prop('checked', false);
    $('[name="DBMS1"]').prop('checked', false);
    $('[name="tool1"]').prop('checked', false);
   };


function fam_empty(e) {
    $("[name='family_relation1']").val('');		 
    $("[name='family_name1']").val('');		 
    $("[name='family_job1']").val('');		 
    $("[name='family_birth_year1']").val('');		 
    $("[name='is_live_together1']").prop('checked', false);
  }

  
function fam_del(e){
  $(e).parent('div').parent('.hide').hide();
  if($(e).parent('div').parent('.hide').hasClass('fam_desc2')) {
    $("[name='family_relation2']").val('');		 
    $("[name='family_name2']").val('');		 
    $("[name='family_job2']").val('');		 
    $("[name='family_birth_year2']").val('');		 
    $("[name='is_live_together2']").prop('checked', false);
  }
  if($(e).parent('div').parent('.hide').hasClass('fam_desc3')) {
    $("[name='family_relation3']").val('');		 
    $("[name='family_name3']").val('');		 
    $("[name='family_job3']").val('');		 
    $("[name='family_birth_year3']").val('');		 
    $("[name='is_live_together3']").prop('checked', false);
  }
  if($(e).parent('div').parent('.hide').hasClass('fam_desc4')) {
    $("[name='family_relation4']").val('');		 
    $("[name='family_name4']").val('');		 
    $("[name='family_job4']").val('');		 
    $("[name='family_birth_year4']").val('');		 
    $("[name='is_live_together4']").prop('checked', false);
  }
  if($(e).parent('div').parent('.hide').hasClass('fam_desc5')) {
    $("[name='family_relation5']").val('');		 
    $("[name='family_name5']").val('');		 
    $("[name='family_job5']").val('');		 
    $("[name='family_birth_year5']").val('');		 
    $("[name='is_live_together5']").prop('checked', false);
  }
}
  
  	    
  	    function fam_add(){
  	    	var obj = $(".family_div").children();

  	        if(obj.eq(3).is(':visible')==false){
  	        	obj.eq(3).css('display', 'flex');
  	    		return;
  	    	}
  	        if(obj.eq(4).is(':visible')==false){
  	        	obj.eq(4).css('display', 'flex');
  	    		return;
  	    	}
  	        if(obj.eq(5).is(':visible')==false){
  	        	obj.eq(5).css('display', 'flex');
  	    		return;
  	    	}
  	        if(obj.eq(6).is(':visible')==false){
  	        	obj.eq(6).css('display', 'flex');
  	    		return;
  	    	}
  	  	}
        
function setMaxDate(e, minMax){
  var getMax = $(e).parent().siblings('.limitDate').children('input');
  getMax.attr(minMax, $(e).val());
}

function showList(e) {
    $(e).toggleClass('active');
    $(e).siblings('.scroll_box').slideToggle();
    $(e).siblings('.scroll_box').css('z-index', '999');
    $(e).parent('.desc_option').parent('.cur_desc').siblings().children('.desc_option').children().removeClass('active');
    $(e).parent('.desc_option').parent('.cur_desc').siblings().children('.desc_option').children('.scroll_box').slideUp();
  }

function showDesc(e) {
  $('.desc_box').slideToggle();
  $('.filter').toggleClass('active');
}

function init(){
	obj = $(".compan_div").children();
    obj.eq(3).hide();
    obj.eq(4).hide();
    obj.eq(5).hide();
    obj.eq(6).hide();
}

function reSearch1(){
	 location.reload();
}

function sortDevSelect1(){
	  var ascDesc =$("[name='devSort1']").val();
	  if(ascDesc=='dName asc' || ascDesc=='dName desc'){
		  $("[name='devSortTag1']").val('dName')
	  }
	  if(ascDesc=="birth_year asc" || ascDesc=="birth_year desc"){
		  $("[name='devSortTag1']").val('birth_year')
	  }
	  if(ascDesc=="age asc" || ascDesc=="age desc"){
		  $("[name='devSortTag1']").val('age')
	  }
	  if(ascDesc=="jumin_num asc" || ascDesc=="jumin_num desc"){
		  $("[name='devSortTag1']").val('jumin_num')
	  }
	  if(ascDesc=="highest_edu asc" || ascDesc=="highest_edu desc"){
		  $("[name='devSortTag1']").val('highest_edu')
	  }
	  if(ascDesc=="graduate_date asc" || ascDesc=="graduate_date desc"){
		  $("[name='devSortTag1']").val('graduate_date')
	  }
	  if(ascDesc=="reg_date asc" || ascDesc=="reg_date desc"){
		  $("[name='devSortTag1']").val('reg_date')
	  }
	  searchDev();
}

function sortDevSelect2(){
	  var ascDesc =$("[name='devSort2']").val();
	  if(ascDesc=='dName asc' || ascDesc=='dName desc'){
		  $("[name='devSortTag2']").val('dName')
	  }
	  if(ascDesc=="birth_year asc" || ascDesc=="birth_year desc"){
		  $("[name='devSortTag2']").val('birth_year')
	  }
	  if(ascDesc=="age asc" || ascDesc=="age desc"){
		  $("[name='devSortTag2']").val('age')
	  }
	  if(ascDesc=="jumin_num asc" || ascDesc=="jumin_num desc"){
		  $("[name='devSortTag2']").val('jumin_num')
	  }
	  if(ascDesc=="highest_edu asc" || ascDesc=="highest_edu desc"){
		  $("[name='devSortTag2']").val('highest_edu')
	  }
	  if(ascDesc=="graduate_date asc" || ascDesc=="graduate_date desc"){
		  $("[name='devSortTag2']").val('graduate_date')
	  }
	  if(ascDesc=="reg_date asc" || ascDesc=="reg_date desc"){
		  $("[name='devSortTag2']").val('reg_date')
	  }
	  searchDev();
}

function sortDevSelect3(){
	  var ascDesc =$("[name='devSort3']").val();
	  if(ascDesc=='dName asc' || ascDesc=='dName desc'){
		  $("[name='devSortTag3']").val('dName')
	  }
	  if(ascDesc=="birth_year asc" || ascDesc=="birth_year desc"){
		  $("[name='devSortTag3']").val('birth_year')
	  }
	  if(ascDesc=="age asc" || ascDesc=="age desc"){
		  $("[name='devSortTag3']").val('age')
	  }
	  if(ascDesc=="jumin_num asc" || ascDesc=="jumin_num desc"){
		  $("[name='devSortTag3']").val('jumin_num')
	  }
	  if(ascDesc=="highest_edu asc" || ascDesc=="highest_edu desc"){
		  $("[name='devSortTag3']").val('highest_edu')
	  }
	  if(ascDesc=="graduate_date asc" || ascDesc=="graduate_date desc"){
		  $("[name='devSortTag3']").val('graduate_date')
	  }
	  if(ascDesc=="reg_date asc" || ascDesc=="reg_date desc"){
		  $("[name='devSortTag3']").val('reg_date')
	  }
	  searchDev();
}
function sortDevSelect4(){
	  var ascDesc =$("[name='devSort4']").val();
	  if(ascDesc=='dName asc' || ascDesc=='dName desc'){
		  $("[name='devSortTag4']").val('dName')
	  }
	  if(ascDesc=="birth_year asc" || ascDesc=="birth_year desc"){
		  $("[name='devSortTag4']").val('birth_year')
	  }
	  if(ascDesc=="age asc" || ascDesc=="age desc"){
		  $("[name='devSortTag4']").val('age')
	  }
	  if(ascDesc=="jumin_num asc" || ascDesc=="jumin_num desc"){
		  $("[name='devSortTag4']").val('jumin_num')
	  }
	  if(ascDesc=="highest_edu asc" || ascDesc=="highest_edu desc"){
		  $("[name='devSortTag4']").val('highest_edu')
	  }
	  if(ascDesc=="graduate_date asc" || ascDesc=="graduate_date desc"){
		  $("[name='devSortTag4']").val('graduate_date')
	  }
	  if(ascDesc=="reg_date asc" || ascDesc=="reg_date desc"){
		  $("[name='devSortTag4']").val('reg_date')
	  }
	  searchDev();
}
function sortDevSelect5(){
	  var ascDesc =$("[name='devSort5']").val();
	  if(ascDesc=='dName asc' || ascDesc=='dName desc'){
		  $("[name='devSortTag5']").val('dName')
	  }
	  if(ascDesc=="birth_year asc" || ascDesc=="birth_year desc"){
		  $("[name='devSortTag5']").val('birth_year')
	  }
	  if(ascDesc=="age asc" || ascDesc=="age desc"){
		  $("[name='devSortTag5']").val('age')
	  }
	  if(ascDesc=="jumin_num asc" || ascDesc=="jumin_num desc"){
		  $("[name='devSortTag5']").val('jumin_num')
	  }
	  if(ascDesc=="highest_edu asc" || ascDesc=="highest_edu desc"){
		  $("[name='devSortTag5']").val('highest_edu')
	  }
	  if(ascDesc=="graduate_date asc" || ascDesc=="graduate_date desc"){
		  $("[name='devSortTag5']").val('graduate_date')
	  }
	  if(ascDesc=="reg_date asc" || ascDesc=="reg_date desc"){
		  $("[name='devSortTag5']").val('reg_date')
	  }
	  searchDev();
}
function sortDevSelect6(){
	  var ascDesc =$("[name='devSort6']").val();
	  if(ascDesc=='dName asc' || ascDesc=='dName desc'){
		  $("[name='devSortTag6']").val('dName')
	  }
	  if(ascDesc=="birth_year asc" || ascDesc=="birth_year desc"){
		  $("[name='devSortTag6']").val('birth_year')
	  }
	  if(ascDesc=="age asc" || ascDesc=="age desc"){
		  $("[name='devSortTag6']").val('age')
	  }
	  if(ascDesc=="jumin_num asc" || ascDesc=="jumin_num desc"){
		  $("[name='devSortTag6']").val('jumin_num')
	  }
	  if(ascDesc=="highest_edu asc" || ascDesc=="highest_edu desc"){
		  $("[name='devSortTag6']").val('highest_edu')
	  }
	  if(ascDesc=="graduate_date asc" || ascDesc=="graduate_date desc"){
		  $("[name='devSortTag6']").val('graduate_date')
	  }
	  if(ascDesc=="reg_date asc" || ascDesc=="reg_date desc"){
		  $("[name='devSortTag6']").val('reg_date')
	  }
	  searchDev();
}
function sortDevSelect7(){
	  var ascDesc =$("[name='devSort7']").val();
	  if(ascDesc=='dName asc' || ascDesc=='dName desc'){
		  $("[name='devSortTag7']").val('dName')
	  }
	  if(ascDesc=="birth_year asc" || ascDesc=="birth_year desc"){
		  $("[name='devSortTag7']").val('birth_year')
	  }
	  if(ascDesc=="age asc" || ascDesc=="age desc"){
		  $("[name='devSortTag7']").val('age')
	  }
	  if(ascDesc=="jumin_num asc" || ascDesc=="jumin_num desc"){
		  $("[name='devSortTag7']").val('jumin_num')
	  }
	  if(ascDesc=="highest_edu asc" || ascDesc=="highest_edu desc"){
		  $("[name='devSortTag7']").val('highest_edu')
	  }
	  if(ascDesc=="graduate_date asc" || ascDesc=="graduate_date desc"){
		  $("[name='devSortTag7']").val('graduate_date')
	  }
	  if(ascDesc=="reg_date asc" || ascDesc=="reg_date desc"){
		  $("[name='devSortTag7']").val('reg_date')
	  }
	  searchDev();
}







function compan_del(){
    var obj = $(".compan_div").children();

     if(obj.eq(6).is(':visible')!=false){
        obj.eq(6).hide();
       return;
    }
     if(obj.eq(5).is(':visible')!=false){
        obj.eq(5).hide();
       return;
    }
     if(obj.eq(4).is(':visible')!=false){
        obj.eq(4).hide();
       return;
    }
     if(obj.eq(3).is(':visible')!=false){
        obj.eq(3).hide();
       return;
    }
  }
 
 function compan_add(){
    var obj = $(".compan_div").children();

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

	  $('.consulTime').val(formattedDate)
	};

function deleteInfo(){
	var formObj = $("[name='deleteDevInFo']")
	if( confirm("정말 삭제하시겠습니까?")==false ) { return; }
	ajax(
			"/deleteDevInfo.do"
			,"post"
			,formObj
			,function( boardDelCnt ){
				if( boardDelCnt>=1 ){
					alert("개발자 정보가 삭제되었습니다.");
          closePopup();
          reSearch1();
				} else alert("WAS 접속 실패입니다. 관리자에게 문의 바랍니다.");
			}
	);
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

function addQuote(e){
    $(e).val($(e).val().replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1'));

   var setNumber = $(e).val();
         changeNum = Number(setNumber.replaceAll(/,/g, '')),
         quoteNum = changeNum.toLocaleString('ko-KR');

   $(e).val(quoteNum); 
}

function closePopup(){
   var getHead = $('.devRegForm').find('header');
   
    getHead.text('정규직 개발자 상세 정보');
    $('.save').text('수정');
    $('.save').attr('onclick', 'alterInfo(this)');
    $('.popup').find('textarea').val('');
    $('.popup').find('input').prop('checked', false);
    
    $("[name='family_relation2']").val('');       
    $("[name='family_name2']").val('');       
    $("[name='family_job2']").val('');       
    $("[name='family_birth_year2']").val('');       
    $("[name='is_live_together2']").prop('checked', false);
    $("[name='family_relation3']").val('');       
    $("[name='family_name3']").val('');       
    $("[name='family_job3']").val('');       
    $("[name='family_birth_year3']").val('');       
    $("[name='is_live_together3']").prop('checked', false);
    $("[name='family_relation4']").val('');       
    $("[name='family_name4']").val('');       
    $("[name='family_job4']").val('');       
    $("[name='family_birth_year4']").val('');       
    $("[name='is_live_together4']").prop('checked', false);
    $("[name='family_relation5']").val('');       
    $("[name='family_name5']").val('');       
    $("[name='family_job5']").val('');       
    $("[name='family_birth_year5']").val('');       
    $("[name='is_live_together5']").prop('checked', false);
    
    $('.fam_desc2 ').hide()
    $('.fam_desc3 ').hide()
    $('.fam_desc4 ').hide()
    $('.fam_desc5 ').hide()
    
    $('.popup').hide();
    $('.scroll_box ').slideUp();
    $('.option_bnt  ').removeClass('active');
}

function showPopup(dev_num){
    $('.devRegForm').find('input').css('pointer-events', 'none');
    $('.devRegForm').find('textarea').css('pointer-events', 'none');
    $('.devRegForm').find('select').css('pointer-events', 'none');
    $('input[type=radio]').prop('checked', false);
    $(".popup_main").animate({ scrollTop: 0 }, "fast");
    $('.dev_uid').val(dev_num);
    $('.del_dev_uid, .upd_dev_uid').val(dev_num.replace('D',''));
    $('.option_bnt').attr('onclick', '');

    ajax(
           "/searchDevDetail.do"
           ,"post"
           ,$("[name='searchDevDetailForm']")
           ,function(json){
            var data = json.devList[0];

            if(data.is_retire == '퇴사자') $('[name="delete"], [name="save"]').hide();
            else $('[name="delete"], [name="save"]').show();

            $('.devRegForm').find('[name="dName"]').val(data.dName);
            $('.devRegForm').find('[name="email"]').val(data.email);
            $('.devRegForm').find('[name="go_army"]').val(data.go_army);
            $('.devRegForm').find('[name="id"]').val(data.id);
            $('.devRegForm').find('[name="pwd"]').val(data.pwd);
            $('.devRegForm').find('[name="rePwd"]').val(data.pwd);
            $('.devRegForm').find('[name="jumin_num1"]').val(data.jumin_num1);
            $('.devRegForm').find('[name="jumin_num2"]').val(data.jumin_num2);
            $('.devRegForm').find('[name="phone"]').val(data.phone);
            $('.devRegForm').find('[name="address"]').val(data.address);
            $('.devRegForm').find('[name="emergency_name"]').val(data.emergency_name);
            $('.devRegForm').find('[name="emergency_relation"]').val(data.emergency_relation);
            $('.devRegForm').find('[name="emergency_phone"]').val(data.emergency_phone);
            $('.devRegForm').find('[name="salary_bank"]').val(data.salary_bank);
            $('.devRegForm').find('[name="account_num"]').val(data.account_num);
            $('.devRegForm').find('[name="highSchool_name"]').val(data.highschool_name);
            $('.devRegForm').find('[name="juniorCollege_name"]').val(data.juniorCollege_name);
            $('.devRegForm').find('[name="juniorCollege_hakbu"]').val(data.juniorcollege_hakbu)
            $('.devRegForm').find('[name="university_name"]').val(data.university_name);
           
            if(data.transfer==1)  $('[name="transfer"]:nth-child(1)').prop('checked', true);
            $('.devRegForm').find('[name="master_name"]').val(data.master_name);
            $('.devRegForm').find('[name="doctor_name"]').val(data.doctor_name);
            $('.devRegForm').find('[name="doctor_hakbu"]').val(data.doctor_hakbu);
            $('.devRegForm').find('[name="master_hakbu"]').val(data.master_hakbu);
            $('.devRegForm').find('[name="university_hakbu"]').val(data.university_hakbu);
            $('.devRegForm').find('[name="juniorCollege_major"]').val(data.juniorCollege_major);
            $('.devRegForm').find('[name="university_major"]').val(data.university_major);
            $('.devRegForm').find('[name="master_major"]').val(data.master_major);
            $('.devRegForm').find('[name="doctor_major"]').val(data.doctor_major);
            $('.devRegForm').find('[name="juniorCollege_minor"]').val(data.juniorCollege_minor);
            $('.devRegForm').find('[name="university_minor"]').val(data.university_minor);
            $('.devRegForm').find('[name="master_minor"]').val(data.master_minor);
            $('.devRegForm').find('[name="doctor_minor"]').val(data.doctor_minor);
            $('.devRegForm').find('[name="highSchool_graduate_date"]').val(data.highSchool_graduate_date);
            $('.devRegForm').find('[name="juniorCollege_graduate_date"]').val(data.juniorCollege_graduate_date);
            $('.devRegForm').find('[name="university_graduate_date"]').val(data.university_graduate_date);
            $('.devRegForm').find('[name="master_graduate_date"]').val(data.master_graduate_date);
            $('.devRegForm').find('[name="doctor_graduate_date"]').val(data.doctor_graduate_date);

            if(data.FAMILY_RELATION != null) {
                var relation = data.FAMILY_RELATION.split(','),
                    fjob = data.FAMILY_JOB.split(','),
                    fname = data.FAMILY_NAME.split(','),
                    fbirth = data.FAMILY_BIRTH_YEAR.split(','),
                    blive = data.IS_LIVE_TOGETHER.split(',');

                if(relation.length==1) {
                  $('[name="family_relation1"]').val(relation[0]);
                  $('[name="family_name1"]').val(fname[0]);
                  $('[name="family_job1"]').val(fjob[0]);
                  $('[name="family_birth_year1"]').val(fbirth[0]);
                  if(blive[0]=='동거')$('[name="is_live_together1"]').prop('checked', true);
                }
                if(relation.length==2) {
                  $('[name="family_relation1"]').val(relation[0]);
                  $('[name="family_name1"]').val(fname[0]);
                  $('[name="family_job1"]').val(fjob[0]);
                  $('[name="family_birth_year1"]').val(fbirth[0]);
                  if(blive[0]=='동거')$('[name="is_live_together1"]').prop('checked', true);

                  $('.fam_desc2').css('display', 'flex');
                  $('[name="family_relation2"]').val(relation[1]);
                  $('[name="family_name2"]').val(fname[1]);
                  $('[name="family_job2"]').val(fjob[1]);
                  $('[name="family_birth_year2"]').val(fbirth[1]);
                  if(blive[1]=='동거')$('[name="is_live_together2"]').prop('checked', true);
                }
                if(relation.length==3) {
                  $('[name="family_relation1"]').val(relation[0]);
                  $('[name="family_name1"]').val(fname[0]);
                  $('[name="family_job1"]').val(fjob[0]);
                  $('[name="family_birth_year1"]').val(fbirth[0]);
                  if(blive[0]=='동거')$('[name="is_live_together1"]').prop('checked', true);

                  $('.fam_desc2').css('display', 'flex');
                  $('[name="family_relation2"]').val(relation[1]);
                  $('[name="family_name2"]').val(fname[1]);
                  $('[name="family_job2"]').val(fjob[1]);
                  $('[name="family_birth_year2"]').val(fbirth[1]);
                  if(blive[1]=='동거')$('[name="is_live_together2"]').prop('checked', true);

                  $('.fam_desc3').css('display', 'flex');
                  $('[name="family_relation3"]').val(relation[2]);
                  $('[name="family_name3"]').val(fname[2]);
                  $('[name="family_job3"]').val(fjob[2]);
                  $('[name="family_birth_year3"]').val(fbirth[2]);
                  if(blive[2]=='동거')$('[name="is_live_together3"]').prop('checked', true);
                }
                if(relation.length==4) {
                  $('[name="family_relation1"]').val(relation[0]);
                  $('[name="family_name1"]').val(fname[0]);
                  $('[name="family_job1"]').val(fjob[0]);
                  $('[name="family_birth_year1"]').val(fbirth[0]);
                  if(blive[0]=='동거')$('[name="is_live_together1"]').prop('checked', true);

                  $('.fam_desc2').css('display', 'flex');
                  $('[name="family_relation2"]').val(relation[1]);
                  $('[name="family_name2"]').val(fname[1]);
                  $('[name="family_job2"]').val(fjob[1]);
                  $('[name="family_birth_year2"]').val(fbirth[1]);
                  if(blive[1]=='동거')$('[name="is_live_together2"]').prop('checked', true);

                  $('.fam_desc3').css('display', 'flex');
                  $('[name="family_relation3"]').val(relation[2]);
                  $('[name="family_name3"]').val(fname[2]);
                  $('[name="family_job3"]').val(fjob[2]);
                  $('[name="family_birth_year3"]').val(fbirth[2]);
                  if(blive[2]=='동거')$('[name="is_live_together3"]').prop('checked', true);

                  $('.fam_desc4').css('display', 'flex');
                  $('[name="family_relation4"]').val(relation[3]);
                  $('[name="family_name4"]').val(fname[3]);
                  $('[name="family_job4"]').val(fjob[3]);
                  $('[name="family_birth_year4"]').val(fbirth[3]);
                  if(blive[3]=='동거')$('[name="is_live_together4"]').prop('checked', true);
                }
                if(relation.length==5) {
                  $('[name="family_relation1"]').val(relation[0]);
                  $('[name="family_name1"]').val(fname[0]);
                  $('[name="family_job1"]').val(fjob[0]);
                  $('[name="family_birth_year1"]').val(fbirth[0]);
                  if(blive[0]=='동거')$('[name="is_live_together1"]').prop('checked', true);

                  $('.fam_desc2').css('display', 'flex');
                  $('[name="family_relation2"]').val(relation[1]);
                  $('[name="family_name2"]').val(fname[1]);
                  $('[name="family_job2"]').val(fjob[1]);
                  $('[name="family_birth_year2"]').val(fbirth[1]);
                  if(blive[1]=='동거')$('[name="is_live_together2"]').prop('checked', true);

                  $('.fam_desc3').css('display', 'flex');
                  $('[name="family_relation3"]').val(relation[2]);
                  $('[name="family_name3"]').val(fname[2]);
                  $('[name="family_job3"]').val(fjob[2]);
                  $('[name="family_birth_year3"]').val(fbirth[2]);
                  if(blive[2]=='동거')$('[name="is_live_together3"]').prop('checked', true);

                  $('.fam_desc4').css('display', 'flex');
                  $('[name="family_relation4"]').val(relation[3]);
                  $('[name="family_name4"]').val(fname[3]);
                  $('[name="family_job4"]').val(fjob[3]);
                  $('[name="family_birth_year4"]').val(fbirth[3]);
                  if(blive[3]=='동거')$('[name="is_live_together4"]').prop('checked', true);

                  $('.fam_desc5').css('display', 'flex');
                  $('[name="family_relation5"]').val(relation[4]);
                  $('[name="family_name5"]').val(fname[4]);
                  $('[name="family_job5"]').val(fjob[4]);
                  $('[name="family_birth_year5"]').val(fbirth[4]);
                  if(blive[4]=='동거')$('[name="is_live_together5"]').prop('checked', true);
                }
              }  
            
            if(data.license != null) {
                var license = data.license.split(',');
                for(var i=0; i<license.length; i++) {
                 if(license[i]==1) $('.devRegForm').find('[name="license"]:nth-child(1)').prop('checked', true); 
                 if(license[i]==2) $('.devRegForm').find('[name="license"]:nth-child(2)').prop('checked', true); 
                }
              }  
            
            $('.devRegForm').find('[name="past_company_name1"]').val(data.past_company_name);
            $('.devRegForm').find('[name="duty1"]').val(data.duty);
            $('.devRegForm').find('[name="part1"]').val(data.part);
            $('.devRegForm').find('[name="dep1"]').val(data.dep);
            $('.devRegForm').find('[name="position1"]').val(data.position);
            $('.devRegForm').find('[name="hire_type1"]').val(data.hire_type);
            $('.devRegForm').find('[name="salary1"]').val(data.salary);
            $('.devRegForm').find('[name="hired_date1"]').val(data.hired_date);
            $('.devRegForm').find('[name="resign_date1"]').val(data.resign_date);
          

            
            if(data.reading_language != null) {
                var reading_languages = data.reading_language.split(',');
                for(var i=0; i<reading_languages.length; i++) {
                 if(reading_languages[i]==1) $('.devRegForm').find('[name="can_reading_language"]:nth-child(1)').prop('checked', true); 
                 if(reading_languages[i]==2) $('.devRegForm').find('[name="can_reading_language"]:nth-child(2)').prop('checked', true); 
                 if(reading_languages[i]==3) $('.devRegForm').find('[name="can_reading_language"]:nth-child(3)').prop('checked', true);
                 if(reading_languages[i]==4) $('.devRegForm').find('[name="can_reading_language"]:nth-child(4)').prop('checked', true);
                 if(reading_languages[i]==5) $('.devRegForm').find('[name="can_reading_language"]:nth-child(5)').prop('checked', true);
   
                }
            }
            

              if(data.speaking_language!=null) {
                var speaking_languages = data.speaking_language.split(',');
                for(var i=0; i<speaking_languages.length; i++) {
                 if(speaking_languages[i]==1) $('.devRegForm').find('[name="can_speaking_language"]:nth-child(1)').prop('checked', true); 
                 if(speaking_languages[i]==2) $('.devRegForm').find('[name="can_speaking_language"]:nth-child(2)').prop('checked', true);
                 if(speaking_languages[i]==3) $('.devRegForm').find('[name="can_speaking_language"]:nth-child(3)').prop('checked', true); 
                 if(speaking_languages[i]==4) $('.devRegForm').find('[name="can_speaking_language"]:nth-child(4)').prop('checked', true);
                 if(speaking_languages[i]==5) $('.devRegForm').find('[name="can_speaking_language"]:nth-child(5)').prop('checked', true);
                }
              }
              
              if(data.is_live_together==1)  $('.devRegForm').find('.devRegForm').find('[name="is_live_together1"]').prop('checked', true);

              
              
            $('.devRegForm').find('[name="itCenter_name"]').val(data.itCenter_name);
            $('.devRegForm').find('[name="edu_period"]').val(data.edu_period);
            $('.devRegForm').find('[name="eduFinish_date"]').val(data.eduFinish_date);
            $('.devRegForm').find('[name="eduFinish_subject"]').val(data.eduFinish_subject);
            $('.devRegForm').find('[name=smoke]').val(data.smoke);
            $('.devRegForm').find('[name=soju]').val(data.soju);
            $('.devRegForm').find('[name=beer]').val(data.beer);


          
          if(data.interest!=null) {
              var interest = data.interest.split(',');
              for(var i=0; i<interest.length; i++) {
               if(interest[i]==1) $('.devRegForm').find('[name="interest"]:first-child').prop('checked', true); 
               if(interest[i]==2) $('.devRegForm').find('[name="interest"]:nth-child(2)').prop('checked', true); 
               if(interest[i]==3) $('.devRegForm').find('[name="interest"]:nth-child(3)').prop('checked', true); 
               if(interest[i]==4) $('.devRegForm').find('[name="interest"]:last-child').prop('checked', true); 
              }
            }    
          
            $('.devRegForm').find('[name="past_prj_name"]').val(data.dev_past_prj_name);
            $('.devRegForm').find('[name="prj_start_date"]').val(data.prj_start_date);
            $('.devRegForm').find('[name="prj_finish_date"]').val(data.dev_past_prj_finish_date);
            $('.devRegForm').find('[name="dispatch_level"]').val(data.dev_past_dispatch_level);
            $('.devRegForm').find('[name="client_company_name"]').val(data.dev_past_client_company_name);
            $('.devRegForm').find('[name="work_company_name"]').val(data.dev_past_work_company_name);
            $('.devRegForm').find('[name="dispatch_role"]').val(data.dev_past_work_dispatch_role)
            
            if(data.server_computer!=null) {
                var server_computer = data.server_computer.split(',');
                for(var i=0; i<server_computer.length; i++) {
                 if(server_computer[i]==1) $('.devRegForm').find('.server_computer div:nth-child(1) input').prop('checked', true); 
                 if(server_computer[i]==2) $('.devRegForm').find('.server_computer div:nth-child(2) input').prop('checked', true);
                 if(server_computer[i]==3) $('.devRegForm').find('.server_computer div:nth-child(3) input').prop('checked', true); 
                 if(server_computer[i]==4) $('.devRegForm').find('.server_computer div:nth-child(4) input').prop('checked', true); 
                 if(server_computer[i]==5) $('.devRegForm').find('.server_computer div:nth-child(5) input').prop('checked', true); 
                 if(server_computer[i]==6) $('.devRegForm').find('.server_computer div:nth-child(6) input').prop('checked', true);
                 if(server_computer[i]==7) $('.devRegForm').find('.server_computer div:nth-child(7) input').prop('checked', true); 
                 if(server_computer[i]==8) $('.devRegForm').find('.server_computer div:nth-child(8) input').prop('checked', true); 
                 if(server_computer[i]==9) $('.devRegForm').find('.server_computer div:nth-child(9) input').prop('checked', true); 
                 if(server_computer[i]==11) $('.devRegForm').find('.server_computer div:nth-child(11) input').prop('checked', true); 
                 if(server_computer[i]==10) $('.devRegForm').find('.server_computer div:nth-child(10) input').prop('checked', true);
                }
              }
              

              if(data.os!=null) {
                var os = data.os.split(',');
                for(var i=0; i<os.length; i++) {
                 if(os[i]==1) $('.devRegForm').find('.os div:nth-child(1) input').prop('checked', true); 
                 if(os[i]==2) $('.devRegForm').find('.os div:nth-child(2) input').prop('checked', true);
                 if(os[i]==3) $('.devRegForm').find('.os div:nth-child(3) input').prop('checked', true); 
                 if(os[i]==4) $('.devRegForm').find('.os div:nth-child(4) input').prop('checked', true); 
                 if(os[i]==5) $('.devRegForm').find('.os div:nth-child(5) input').prop('checked', true);
                }
              }
              
              if(data.it_language!=null) {
                   var it_language = data.it_language.split(',');
                   for(var i=0; i<it_language.length; i++) {
                    if(it_language[i]==1) $('.devRegForm').find('.it_language div:nth-child(1)input').prop('checked', true); 
                    if(it_language[i]==2) $('.devRegForm').find('.devRegForm').find('.it_language div:nth-child(2) input').prop('checked', true);
                    if(it_language[i]==3) $('.devRegForm').find('.devRegForm').find('.it_language div:nth-child(3) input').prop('checked', true); 
                    if(it_language[i]==4) $('.devRegForm').find('.devRegForm').find('.it_language div:nth-child(4) input').prop('checked', true); 
                    if(it_language[i]==5) $('.devRegForm').find('.devRegForm').find('.it_language div:nth-child(5) input').prop('checked', true); 
                    if(it_language[i]==6) $('.devRegForm').find('.devRegForm').find('.it_language div:nth-child(6) input').prop('checked', true); 
                    if(it_language[i]==7) $('.devRegForm').find('.devRegForm').find('.it_language div:nth-child(7) input').prop('checked', true);
                    if(it_language[i]==8) $('.devRegForm').find('.devRegForm').find('.it_language div:nth-child(8) input').prop('checked', true); 
                    if(it_language[i]==9) $('.devRegForm').find('.devRegForm').find('.it_language div:nth-child(9) input').prop('checked', true); 
                    if(it_language[i]==10) $('.devRegForm').find('.it_language div:nth-child(10) input').prop('checked', true); 
                    if(it_language[i]==11) $('.devRegForm').find('.it_language div:nth-child(11) input').prop('checked', true); 
                    if(it_language[i]==12) $('.devRegForm').find('.it_language div:nth-child(12) input').prop('checked', true);
                    if(it_language[i]==13) $('.devRegForm').find('.it_language div:nth-child(13) input').prop('checked', true); 
                    if(it_language[i]==14) $('.devRegForm').find('.it_language div:nth-child(14) input').prop('checked', true); 
                    if(it_language[i]==15) $('.devRegForm').find('.it_language div:nth-child(15) input').prop('checked', true); 
                    if(it_language[i]==16) $('.devRegForm').find('.it_language div:nth-child(16) input').prop('checked', true); 
                    if(it_language[i]==17) $('.devRegForm').find('.it_language div:nth-child(17) input').prop('checked', true);
                    if(it_language[i]==18) $('.devRegForm').find('.it_language div:nth-child(18) input').prop('checked', true); 
                    if(it_language[i]==19) $('.devRegForm').find('.it_language div:nth-child(19) input').prop('checked', true); 
                    if(it_language[i]==20) $('.devRegForm').find('.it_language div:nth-child(20) input').prop('checked', true); 
                    if(it_language[i]==21) $('.devRegForm').find('.it_language div:nth-child(21) input').prop('checked', true); 
                    if(it_language[i]==22) $('.devRegForm').find('.it_language div:nth-child(22) input').prop('checked', true);
                    if(it_language[i]==23) $('.devRegForm').find('.it_language div:nth-child(23) input').prop('checked', true); 
                    if(it_language[i]==24) $('.devRegForm').find('.it_language div:nth-child(24) input').prop('checked', true); 
                    if(it_language[i]==25) $('.devRegForm').find('.it_language div:nth-child(25) input').prop('checked', true); 
                    if(it_language[i]==26) $('.devRegForm').find('.it_language div:nth-child(26) input').prop('checked', true); 
                    if(it_language[i]==27) $('.devRegForm').find('.it_language div:nth-child(27) input').prop('checked', true);
                    if(it_language[i]==28) $('.devRegForm').find('.it_language div:nth-child(28) input').prop('checked', true); 
                    if(it_language[i]==29) $('.devRegForm').find('.it_language div:nth-child(29) input').prop('checked', true); 
                    if(it_language[i]==30) $('.devRegForm').find('.it_language div:nth-child(30) input').prop('checked', true); 
                    if(it_language[i]==31) $('.devRegForm').find('.it_language div:nth-child(31) input').prop('checked', true); 
                    if(it_language[i]==32) $('.devRegForm').find('.it_language div:nth-child(32) input').prop('checked', true); 
                   }
                 }
              if(data.dbms!=null) {
                   var dbms = data.dbms.split(',');
                   for(var i=0; i<dbms.length; i++) {
                    if(dbms[i]==1) $('.devRegForm').find('.DBMS div:nth-child(1) input').prop('checked', true);
                    if(dbms[i]==2) $('.devRegForm').find('.DBMS div:nth-child(2) input').prop('checked', true);
                    if(dbms[i]==3) $('.devRegForm').find('.DBMS div:nth-child(3) input').prop('checked', true);
                    if(dbms[i]==4) $('.devRegForm').find('.DBMS div:nth-child(4) input').prop('checked', true);
                    if(dbms[i]==5) $('.devRegForm').find('.DBMS div:nth-child(5) input').prop('checked', true);
                    if(dbms[i]==6) $('.devRegForm').find('.DBMS div:nth-child(6) input').prop('checked', true);
                    if(dbms[i]==7) $('.devRegForm').find('.DBMS div:nth-child(7) input').prop('checked', true);
                    if(dbms[i]==8) $('.devRegForm').find('.DBMS div:nth-child(8) input').prop('checked', true);
                    if(dbms[i]==9) $('.devRegForm').find('.DBMS div:nth-child(9) input').prop('checked', true);
                    if(dbms[i]==10) $('.devRegForm').find('.DBMS div:nth-child(10) input').prop('checked', true);
                    if(dbms[i]==11) $('.devRegForm').find('.DBMS div:nth-child(11) input').prop('checked', true);
                    if(dbms[i]==12) $('.devRegForm').find('.DBMS div:nth-child(12) input').prop('checked', true);
                    if(dbms[i]==13) $('.devRegForm').find('.DBMS div:nth-child(13) input').prop('checked', true);
                    if(dbms[i]==14) $('.devRegForm').find('.DBMS div:nth-child(14) input').prop('checked', true);
                    if(dbms[i]==15) $('.devRegForm').find('.DBMS div:nth-child(15) input').prop('checked', true);
                    if(dbms[i]==16) $('.devRegForm').find('.DBMS div:nth-child(16) input').prop('checked', true);
                   }
              } 

              
              if(data.tool!=null) {
                   var tool = data.tool.split(',');
                   for(var i=0; i<tool.length; i++) {
                    if(tool[i]==1) $('.devRegForm').find('.tool div:nth-child(1) input').prop('checked', true);
                    if(tool[i]==2) $('.devRegForm').find('.tool div:nth-child(2) input').prop('checked', true);
                    if(tool[i]==3) $('.devRegForm').find('.tool div:nth-child(3) input').prop('checked', true);
                    if(tool[i]==4) $('.devRegForm').find('.tool div:nth-child(4) input').prop('checked', true);
                    if(tool[i]==5) $('.devRegForm').find('.tool div:nth-child(5) input').prop('checked', true);
                    if(tool[i]==6) $('.devRegForm').find('.tool div:nth-child(6) input').prop('checked', true);
                    if(tool[i]==7) $('.devRegForm').find('.tool div:nth-child(7) input').prop('checked', true);
                    if(tool[i]==8) $('.devRegForm').find('.tool div:nth-child(8) input').prop('checked', true);
                    if(tool[i]==9) $('.devRegForm').find('.tool div:nth-child(9) input').prop('checked', true);
                    if(tool[i]==10) $('.devRegForm').find('.tool div:nth-child(10) input').prop('checked', true);
                    if(tool[i]==11) $('.devRegForm').find('.tool div:nth-child(11) input').prop('checked', true);
                    if(tool[i]==12) $('.devRegForm').find('.tool div:nth-child(12) input').prop('checked', true);
                    if(tool[i]==13) $('.devRegForm').find('.tool div:nth-child(13) input').prop('checked', true);
                    if(tool[i]==14) $('.devRegForm').find('.tool div:nth-child(14) input').prop('checked', true);
                    if(tool[i]==15) $('.devRegForm').find('.tool div:nth-child(15) input').prop('checked', true);
                    if(tool[i]==16) $('.devRegForm').find('.tool div:nth-child(16) input').prop('checked', true);
                    if(tool[i]==17) $('.devRegForm').find('.tool div:nth-child(17) input').prop('checked', true);
                    if(tool[i]==18) $('.devRegForm').find('.tool div:nth-child(18) input').prop('checked', true);
                    if(tool[i]==19) $('.devRegForm').find('.tool div:nth-child(19) input').prop('checked', true);
                   }
              } 

              $('.devRegForm').find('[name="prj_finish_date"]').attr('min', $('[name="prj_start_date"]').val());
              $('.devRegForm').find('[name="prj_start_date"]').attr('max', $('[name="prj_finish_date"]').val());
           }
    );
    $('.popup').show(); 

     
     
  }




function alterInfo(e) {
   var getHead = $('.devRegForm').find('header'),
        value = $('.alter_name').val();
   
   $(".popup_main").animate({ scrollTop: 0 }, "fast");
   getHead.text('정규직 개발자 정보 수정');
  $('.devRegForm').find('input').css('pointer-events', 'all');
  $('.devRegForm').find('textarea').css('pointer-events', 'all');
  $('.devRegForm').find('select').css('pointer-events', 'all');
   $('.alter_name').focus();
   $('.alter_name').val('');
   $('.alter_name').val(value);
   $('.option_bnt').attr('onclick', 'showList(this)');
   $(e).text('완료');
   $(e).attr('onclick', 'update()');
}


function update() {
  	var formObj = $("[name='devRegForm']");
    var checkVal_id = formObj.find("[name='id']");									 
    var checkPwd = formObj.find("[name='pwd']");											 
    var checkPwd_confirm = formObj.find("[name='rePwd']");									 
    var checkVal_dName = formObj.find("[name='dName']");								 
    var checkObj_jumin_num1 = formObj.find("[name='jumin_num1']");						 
    var checkObj_jumin_num2 = formObj.find("[name='jumin_num2']");							 
    var checkObj_phone =formObj.find("[name='phone']");									 
    var checkObj_email = formObj.find("[name='email']");								 
    var checkObj_go_army = formObj.find("[name='go_army']");							 
    var checkObj_address = formObj.find("[name='address']");								 
    
    var checkObj_emergency_name = formObj.find("[name='emergency_name']");                
    var checkObj_emergency_relation = formObj.find("[name='emergency_relation']");       
    var checkObj_emergency_phone = formObj.find("[name='emergency_phone']");          
    
    var checkObj_salary_bank = formObj.find("[name='salary_bank']");                   
    var checkObj_account_num = formObj.find("[name='account_num']");                   
    
    var checkObj_highSchool_name = formObj.find("[name='highSchool_name']");             
    var checkObj_juniorCollege_name = formObj.find("[name='juniorCollege_name']");       
    var checkObj_university_name = formObj.find("[name='university_name']");              
    var checkObj_master_name = formObj.find("[name='master_name']");                   
    var checkObj_doctor_name = formObj.find("[name='doctor_name']");                   

    var checkObj_juniorCollege_hakbu = formObj.find("[name='juniorCollege_hakbu']");       
    var checkObj_university_hakbu = formObj.find("[name='university_hakbu']");             
    var checkObj_master_hakbu = formObj.find("[name='master_hakbu']");                   
    var checkObj_doctor_hakbu = formObj.find("[name='doctor_hakbu']");                   

    var checkObj_juniorCollege_major = formObj.find("[name='juniorCollege_major']");       
    var checkObj_university_major = formObj.find("[name='university_major']");             
    var checkObj_master_major = formObj.find("[name='master_major']");                   
    var checkObj_doctor_major = formObj.find("[name='doctor_major']");                   
    
    var checkObj_juniorCollege_minor = formObj.find("[name='juniorCollege_minor']");       
    var checkObj_university_minor = formObj.find("[name='university_minor']");             
    var checkObj_master_minor = formObj.find("[name='master_minor']");                   
    var checkObj_doctor_minor = formObj.find("[name='doctor_minor']");                

      var checkObj_highSchool_graduate_date = formObj.find("[name='highSchool_graduate_date']");             
    var checkObj_juniorCollege_graduate_date = formObj.find("[name='juniorCollege_graduate_date']");       
    var checkObj_university_graduate_date = formObj.find("[name='university_graduate_date']");             
    var checkObj_master_graduate_date = formObj.find("[name='master_graduate_date']");                   
    var checkObj_doctor_graduate_date = formObj.find("[name='doctor_graduate_date']");                   
    
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
    
    
    var checkObj_past_company_name = formObj.find("[name='past_company_name1']");       
    var checkObj_duty = formObj.find("[name='duty1']");                         
    var checkObj_part = formObj.find("[name='part1']");                            
    var checkObj_dep = formObj.find("[name='dep1']");                               
    var checkObj_position = formObj.find("[name='position1']");                         
    var checkObj_hire_type = formObj.find("[name='hire_type1']");                   
    var checkObj_salary = formObj.find("[name='salary1']");                         
    var checkObj_hired_date = formObj.find("[name='hired_date1']");                   
    var checkObj_resign_date = formObj.find("[name='resign_date1']");                
    
    var checkObj_itCenter_name = formObj.find("[name='itCenter_name']");             
    var checkObj_edu_period = formObj.find("[name='edu_period']");                      
    var checkObj_eduFinish_date = formObj.find("[name='eduFinish_date']");                
    var checkObj_eduFinish_subject = formObj.find("[name='eduFinish_subject']");       
    
    var checkObj_smoke = formObj.find("[name='smoke']");                            
    var checkObj_soju = formObj.find("[name='soju']");                            
    var checkObj_beer = formObj.find("[name='beer']");                            
    var checkObj_interest = formObj.find("[name='interest']");                   

    var checkObj_prj_name = formObj.find("[name='past_prj_name']");                      
    var checkObj_start_date = formObj.find("[name='prj_start_date']");                     
    var checkObj_finish_date = formObj.find("[name='prj_finish_date']");                
    var checkObj_dispatch_level = formObj.find("[name='dispatch_level']");                
    var checkObj_client_company_name = formObj.find("[name='client_company_name']");       
    var checkObj_work_company_name = formObj.find("[name='work_company_name']");          
    var checkObj_dispatch_role = formObj.find("[name='dispatch_role']");                
    var checkObj_server_computer = formObj.find("[name='server_computer1']:checked");             
    var checkObj_OS = formObj.find("[name='OS1']:checked");                                  
    var checkObj_it_language = formObj.find("[name='it_language1']:checked");                   
    var checkObj_DBMS = formObj.find("[name='DBMS1']:checked");                               
    var checkObj_tool = formObj.find("[name='tool1']:checked");                         
    var checkObj_license = formObj.find("[name='license']:checked");



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
				"/updateDevInfo.do"
				,"post"
				,formObj
				,function( boardDelCnt ){

					if( boardDelCnt>=1 ){
            alert('정규직 정보가 수정되었습니다.');
            closePopup();
            reSearch1();
					} else alert("WAS 접속 실패입니다. 관리자에게 문의 바랍니다.");
				}
		);
}

function pageNoClick(clickPageNo){
	   var formObj = $("[name='searchDevForm']");
	   formObj.find("[name='selectPageNo']").val(clickPageNo);
	   searchDev();
	}

function searchDev(){
	   var formObj 							= $("[name='devSearch']");
	   var checkObj_keyword1 				= $("[name='keyword1']");
	   var checkObj_keyword2 				= $("[name='keyword2']");
	   var checkObj_age1                    = $("[name='age1']");
	   var checkObj_age2                    = $("[name='age2']");
	   var checkObj_birth_year1             = $("[name='birth_year1']");
	   var checkObj_birth_year2             = $("[name='birth_year2']")
	   var checkObj_birthday_start          = $("[name='birthday_start']");
	   var checkObj_birthday_end            = $("[name='birthday_end']");
	   var checkObj_dev_start_year          = $("[name='dev_start_year']");
	   var checkObj_dev_end_year            = $("[name='dev_end_year']");
	   var checkObj_grad_year1              = $("[name='grad_year1']");
	   var checkObj_grad_year2              = $("[name='grad_year2']");
	   
	   
	   if(checkObj_age1.val()=="" && checkObj_age2.val()!=""){
           alert("최소 나이를 설정해주세요.")
	       return;
       }
       else{
		   if(checkObj_age1.val() > checkObj_age2.val()&& checkObj_age2.val()!=""){
		      alert("최대 나이는 최소 나이보다 작을 수 없습니다.");
		      return;
		   }
       }
	   if(checkObj_birthday_start.val()=="" && checkObj_birthday_end.val()!=""){
           alert("최소 생일 날짜를 설정해주세요.")
	       return;
       }
       else{
		   if(checkObj_birthday_start.val() > checkObj_birthday_end.val()&& checkObj_birthday_end.val()!=""){
		      alert("생일의 최소날짜가 최대날짜보다 클 수 없습니다.");
		      return;
		   }
       }
	   if(checkObj_dev_start_year.val()=="" && checkObj_dev_end_year.val()!=""){
           alert("최소 개발 년차를 설정해주세요.")
	       return;
       }
       else{
		   if(checkObj_dev_start_year.val() > checkObj_dev_end_year.val()&& checkObj_dev_end_year.val()!=""){
		      alert("최소 개발 년차는 최대 개발 년차보다 클 수 없습니다.");
		      return
		   }
       }
	   if(checkObj_birth_year1.val()=="" && checkObj_birth_year2.val()!=""){
           alert("최소 출생년도를 설정해주세요.")
	       return;
       }
       else{
		   if(checkObj_birth_year1.val() > checkObj_birth_year2.val()&& checkObj_birth_year2.val()!=""){
		      alert("최소 출생년도는 최대 출생년도보다 클 수 없습니다.");
		      return;
		   }
       }
	   if(checkObj_grad_year1.val()=="" && checkObj_grad_year2.val()!=""){
           alert("최소 졸업년도를 설정해주세요.")
	       return;
       }
       else{
		   if(checkObj_grad_year1.val() > checkObj_grad_year2.val()&& checkObj_grad_year2.val()!=""){
		      alert("최소 졸업년도는 최대 졸업년도보다 클 수 없습니다.");
		      return;
		   }
       }

	  if(checkObj_keyword1.val()!=""){
	      var a = checkObj_keyword1.val().trim();
	      checkObj_keyword1.val(a);
	  }

	  if(checkObj_keyword2.val()!=""){
	      var a = checkObj_keyword2.val().trim();
	      checkObj_keyword2.val(a);
	  }

  ajax(
        "/searchDev.do"
        ,"post"
        ,$("[name='searchDevForm']")
        ,function(responseHtml){
           var obj = $(responseHtml);
           var sort = obj.find(".sort").html();
           var searchResultCnt = obj.find(".searchResultCnt").html();
           var searchResult = obj.find(".searchResult").html();
           var pageNos = obj.find(".pageNos").html();
           var ascDesc1 =$("[name='devSort1']").val();
           var ascDesc2 =$("[name='devSort2']").val();
           var ascDesc3 =$("[name='devSort3']").val();
           var ascDesc4 =$("[name='devSort4']").val();
           var ascDesc5 =$("[name='devSort5']").val();
           var ascDesc6 =$("[name='devSort6']").val();
           var ascDesc7 =$("[name='devSort7']").val();
           $(".sort").html(sort);
           $(".searchResultCnt").html(searchResultCnt);
          $(".searchResult").html(searchResult);
          $(".pageNos").html(pageNos);
          $(".resultCate").show();
          $('.pageNos').show();

           var html = 
					'<div class="isEmpty"><i class="fa fa-search" aria-hidden="true"></i>검색 결과가 없습니다.</div>';

					if($('.impect').text() == 0 || $('.impect').text() == '0') {
						$(".SearchResult_box").html( html );
						$(".resultCate").hide();
            $('.pageNos').hide();
					}

		      	$("[name='devSort1']").val(ascDesc1);
            $("[name='devSort2']").val(ascDesc2);
            $("[name='devSort3']").val(ascDesc3);
            $("[name='devSort4']").val(ascDesc4);
            $("[name='devSort5']").val(ascDesc5);
            $("[name='devSort6']").val(ascDesc6);
            $("[name='devSort7']").val(ascDesc7);
        }
  );
}


   
</script>
<title>정규직 검색</title>
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
  <div class="b">
    <form name="searchDevForm" class="boardForm">
      <header>
        <div>정규직 개발자 검색</div>
        <small>개발자 검색 시 <small>최소치</small> 입력과  <small>최대치</small> 입력에 유의하여 검색해 주세요.</small>
      </header>

        <div class="search_bar_box">
          <tr>
            <td>
              <input type="text" name="keyword1" maxlength="30"  value="">
              <select name="orand">
                    <option value="or">or
                    <option value="and">and
              </select>
              <input type="text" name="keyword2" >
              <input onclick="dateEmpty(this, 'text')" type="button" name="grad_reset" value="비움">
              <input type="button" onClick="searchDev()" name="earch" class="search" value="검색">
            </td>
          </tr>
          <div class="button_box">
            <input type="button" onclick="reSearch1()"  name="reSearch" class="desc_btn" value="초기화 후 전부검색">
            <input type="button" name="freeSearch devSearch" class="freeSearch desc_btn"  onclick="location.replace('/registDev.do')" value="[정규직] 입력">
            <span class='filter' onclick="showDesc(this)"><i class="fa fa-angle-down" aria-hidden="true"></i></span>
          </div>
        </div>
        <div class="desc_box">
          <div>
            <div class="title">
            근무자/퇴사자
            </div> 
            <input type="checkbox" name="is_retire" value="1">근무자
            <input type="checkbox" name="is_retire" value="2">퇴사자
         </div>   
          <div>
            <div class="title">개발년차</div>
            <td >      
                <select name = "dev_start_year">
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
            </td>
        
            <td >      
                <select name="dev_end_year">
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
          </div> <br>    
          <div >
            <div class="title">자격증</div>  
                <td><input type="checkbox" name="license" value="1">정보처리기사</td>
                <td><input type="checkbox" name="license" value="2">정보처리산업기사</td>
                <input type="button" onlcick="" value="비움">
          </div>
         
          <div>
            <div class="title">
              소유기술
              <span class="emm_btn" onclick="empty_emp(this)">모두 비우기</span>
            </div>  
            <div class="cur_desc">
              <div>기종</div>
              <div class="desc_option">
                <div onclick="showList(this)">옵션 <i class="fa fa-angle-down" aria-hidden="true"></i></div>
                <div class="scroll_box server_computer">
                  <div><input type="checkbox" name="skill1" value="1"> ASUS</div>
                  <div><input type="checkbox" name="skill1" value="2"> DELL</div>
                  <div><input type="checkbox" name="skill1" value="3"> DELL EMC</div>
                  <div><input type="checkbox" name="skill1" value="4"> HP</div>
                  <div><input type="checkbox" name="skill1" value="5"> HPE</div>
                  <div><input type="checkbox" name="skill1" value="6"> IBM</div>
                  <div><input type="checkbox" name="skill1" value="7"> INTEL</div>
                  <div><input type="checkbox" name="skill1" value="8"> Lenovo</div>
                  <div><input type="checkbox" name="skill1" value="9"> MSI</div>
                  <div><input type="checkbox" name="skill1" value="10"> Supermicro</div>
                  <div><input type="checkbox" name="skill1" value="11"> TYAN</div>
                </div>
              </div>
            </div>
            <div class="cur_desc">
              <div>OS</div>
              <div class="desc_option">
                <div onclick="showList(this)">옵션 <i class="fa fa-angle-down" aria-hidden="true"></i></div>
                <div class="scroll_box ">
                  <div><input type="checkbox" name="skill2" value="1"> Linux</div>
                  <div><input type="checkbox" name="skill2" value="2"> Mac</div>
                  <div><input type="checkbox" name="skill2" value="3"> Ubuntu</div>
                  <div><input type="checkbox" name="skill2" value="4"> Unix</div>
                  <div><input type="checkbox" name="skill2" value="5"> Windows server</div>
                </div>
              </div>
            </div>
            <div class="cur_desc">
              <div>언어</div>
              <div class="desc_option">
                <div onclick="showList(this)">옵션 <i class="fa fa-angle-down" aria-hidden="true"></i></div>
                <div class="scroll_box">
                  <div><input type="checkbox" name="skill3" value="1"> Augular</div>
                  <div><input type="checkbox" name="skill3" value="2"> Android</div>
                  <div><input type="checkbox" name="skill3" value="3"> ASP</div>
                  <div><input type="checkbox" name="skill3" value="4"> Assembly Language(ASM)</div>
                  <div><input type="checkbox" name="skill3" value="5"> Atom</div>
                  <div><input type="checkbox" name="skill3" value="6"> Brackets</div>
                  <div><input type="checkbox" name="skill3" value="7"> C</div>
                  <div><input type="checkbox" name="skill3" value="8"> C#</div>
                  <div><input type="checkbox" name="skill3" value="9"> C++</div>
                  <div><input type="checkbox" name="skill3" value="10"> Cobol</div>
                  <div><input type="checkbox" name="skill3" value="11"> Delphi</div>
                  <div><input type="checkbox" name="skill3" value="12"> Fortran</div>
                  <div><input type="checkbox" name="skill3" value="13"> go</div>
                  <div><input type="checkbox" name="skill3" value="14"> groovy</div>
                  <div><input type="checkbox" name="skill3" value="15"> HTML/CSS</div>
                  <div><input type="checkbox" name="skill3" value="16"> Java</div>
                  <div><input type="checkbox" name="skill3" value="17"> Javascript</div>
                  <div><input type="checkbox" name="skill3" value="18"> Kotlin</div>
                  <div><input type="checkbox" name="skill3" value="19"> MATLAB</div>
                  <div><input type="checkbox" name="skill3" value="20"> Nexacro</div>
                  <div><input type="checkbox" name="skill3" value="21"> PHP</div>
                  <div><input type="checkbox" name="skill3" value="22"> PowerBulider</div>
                  <div><input type="checkbox" name="skill3" value="23"> Python</div>
                  <div><input type="checkbox" name="skill3" value="24"> R</div>
                  <div><input type="checkbox" name="skill3" value="25"> React</div>
                  <div><input type="checkbox" name="skill3" value="26"> ruby</div>
                  <div><input type="checkbox" name="skill3" value="27"> SQL</div>
                  <div><input type="checkbox" name="skill3" value="28"> Sublime Text</div>
                  <div><input type="checkbox" name="skill3" value="29"> Swift</div>
                  <div><input type="checkbox" name="skill3" value="30"> TypeScript</div>
                  <div><input type="checkbox" name="skill3" value="31"> Visual Basic</div>
                  <div><input type="checkbox" name="skill3" value="32"> Vue</div>
                </div>
              </div>
            </div>
            <div class="cur_desc">
              <div>DBMS</div>
              <div class="desc_option">

                <div onclick="showList(this)">옵션 <i class="fa fa-angle-down" aria-hidden="true"></i></div>
                <div class="scroll_box">
                  <div><input type="checkbox" name="skill4" value="1"> Access</div>
                  <div><input type="checkbox" name="skill4" value="2"> Cassandra</div>
                  <div><input type="checkbox" name="skill4" value="3"> DB2</div>
                  <div><input type="checkbox" name="skill4" value="4"> Elasticsearch</div>
                  <div><input type="checkbox" name="skill4" value="5"> IBM Db2</div>
                  <div><input type="checkbox" name="skill4" value="6"> MariaDB</div>
                  <div><input type="checkbox" name="skill4" value="7"> Microsoft Access</div>
                  <div><input type="checkbox" name="skill4" value="8"> MongoDB</div>
                  <div><input type="checkbox" name="skill4" value="9"> MSSQL</div>
                  <div><input type="checkbox" name="skill4" value="10"> MySQL</div>
                  <div><input type="checkbox" name="skill4" value="11"> NoSQL</div>
                  <div><input type="checkbox" name="skill4" value="12"> Oracle</div>
                  <div><input type="checkbox" name="skill4" value="13"> PostgreSQL</div>
                  <div><input type="checkbox" name="skill4" value="14"> Redis</div>
                  <div><input type="checkbox" name="skill4" value="15"> SQL Server</div>
                  <div><input type="checkbox" name="skill4" value="16"> SQLite</div>
                </div>
              </div>
            </div>
            <div class="cur_desc">
              <div>tool</div>
              <div class="desc_option">

                <div onclick="showList(this)">옵션 <i class="fa fa-angle-down" aria-hidden="true"></i></div>
                <div class="scroll_box">
                  <div><input type="checkbox" name="skill5" value="1"> .Net</div>
                  <div><input type="checkbox" name="skill5" value="2"> Android Studio</div>
                  <div><input type="checkbox" name="skill5" value="3"> Ecilpse</div>
                  <div><input type="checkbox" name="skill5" value="4"> Finereport</div>
                  <div><input type="checkbox" name="skill5" value="5"> Flask</div>
                  <div><input type="checkbox" name="skill5" value="6"> GDB</div>
                  <div><input type="checkbox" name="skill5" value="7"> Git</div>
                  <div><input type="checkbox" name="skill5" value="8"> Intellij</div>
                  <div><input type="checkbox" name="skill5" value="9"> Jquery</div>
                  <div><input type="checkbox" name="skill5" value="10"> Jupyter</div>
                  <div><input type="checkbox" name="skill5" value="11"> Notepad++</div>
                  <div><input type="checkbox" name="skill5" value="12"> PyCharm</div>
                  <div><input type="checkbox" name="skill5" value="13"> SVN</div>
                  <div><input type="checkbox" name="skill5" value="14"> Thymeleaf</div>
                  <div><input type="checkbox" name="skill5" value="15"> Unity</div>
                  <div><input type="checkbox" name="skill5" value="16"> Vim</div>
                  <div><input type="checkbox" name="skill5" value="17"> Visual Studio</div>
                  <div><input type="checkbox" name="skill5" value="18"> vscode</div>
                  <div><input type="checkbox" name="skill5" value="19"> Xcode</div>
                </div>
              </div>
            </div>
          </div><br>
        <div>
            <div class="title">역할</div>  
                <input type="checkbox" name="dispatch_role_code" value="1">개발
				<input type="checkbox" name="dispatch_role_code" value="2">운영
				<input type="checkbox" name="dispatch_role_code" value="3">분석설계
				<input type="checkbox" name="dispatch_role_code" value="4">PL
				<input type="checkbox" name="dispatch_role_code" value="5">PM
				<input type="checkbox" name="dispatch_role_code" value="6">웹디
				<input type="checkbox" name="dispatch_role_code" value="7">publisher
				<input type="checkbox" name="dispatch_role_code" value="8">기타
        </div>
          
        <div>
            <div class="title">최종학력</div>  
                <td><input type="checkbox" name="highestLevel_edu" value="1">고졸</td>
                <td><input type="checkbox" name="highestLevel_edu" value="2">전문대졸</td>
                <td><input type="checkbox" name="highestLevel_edu" value="3">일반대학사졸</td>
                <td><input type="checkbox" name="highestLevel_edu" value="4">일반대석사졸</td>
                <td><input type="checkbox" name="highestLevel_edu" value="5">일반대박사졸</td>
                <input type="button" onlcick="" value="비움">
        </div>
        
        <div>
            <div class="title">졸업학부</div>  
                <td><input type="checkbox" name="hakbu" value="1">컴퓨터공학</td>
                <td><input type="checkbox" name="hakbu" value="2">공과대</td>
                <td><input type="checkbox" name="hakbu" value="3">자연대</td>
                <td><input type="checkbox" name="hakbu" value="4">경상대</td>
                <td><input type="checkbox" name="hakbu" value="5">사회대</td>
                <td><input type="checkbox" name="hakbu" value="6">인문대</td>
                <td><input type="checkbox" name="hakbu" value="7">법대</td>
                <td><input type="checkbox" name="hakbu" value="8">기타</td>
        </div><br>
        
        <div >
          <div class="title">생일</div>
              <select name="birthday_start">
                    <option value=""></option>
                    <c:forEach var="i" begin="1" end="12">
                      <option value="${i}">${i}</option>
                    </c:forEach>
                  </select>
                  월 ~
                  <select name="birthday_end">
                    <option value=""></option>
                    <c:forEach var="i" begin="1" end="12">
                      <option value="${i}">${i}</option>
                    </c:forEach>
                  </select> 월
        
        </div>
        
        <div >
          <div class="title">나이</div>
          <td>
          <input type="number" name="age1"> 살~
          <input type="number" name="age2">
          </td>
          &nbsp;( <select name="birth_year1">
                    <option value=""></option>
                    <c:forEach var="i" begin="1910" end="2023">
                      <option value="${i}">${i}</option>
                    </c:forEach>
                  </select>년생~<select name="birth_year2">
                    <option value=""></option>
                    <c:forEach var="i" begin="1910" end="2023">
                      <option value="${i}">${i}</option>
                    </c:forEach>
                  </select>년생)
        
        </div> 
        <div>
          <div class="title">성별</div>  
              <td><input type="checkbox" name="gender" value="1">남</td>
              <td><input type="checkbox" name="gender" value="2">여</td>
        </div><br>
        <div >
          <div class="title">졸업년도</div>
          <td><select name="grad_year1">
                    <option value=""></option>
                    <c:forEach var="i" begin="1910" end="2023">
                      <option value="${i}">${i}</option>
                    </c:forEach>
                  </select>년~<select name="grad_year2">
                    <option value=""></option>
                    <c:forEach var="i" begin="1910" end="2023">
                      <option value="${i}">${i}</option>
                    </c:forEach>
                  </select>년
        
        </div> 
        
        
        <div>
          <div class="title">독해 외국어</div>  
              <td><input type="checkbox" name="can_reading_language" value="1">영어</td>
              <td><input type="checkbox" name="can_reading_language" value="2">일본어</td>
              <td><input type="checkbox" name="can_reading_language" value="3">중국어</td>
              <td><input type="checkbox" name="can_reading_language" value="4">불어</td>
              <td><input type="checkbox" name="can_reading_language" value="5">독일어</td>
        </div>
    
        <div>
          <div class="title">회화 외국어</div>  
              <td><input type="checkbox" name="can_speaking_language" value="1">영어</td>
              <td><input type="checkbox" name="can_speaking_language" value="2">일본어</td>
              <td><input type="checkbox" name="can_speaking_language" value="3">중국어</td>
              <td><input type="checkbox" name="can_speaking_language" value="4">불어</td>
              <td><input type="checkbox" name="can_speaking_language" value="5">독일어</td>
        </div>
        
        <div>
          <div class="title">소주주량</div>  
          <div>
              <select name="soju1">
                  <option value=""></option>
                  <option value="0">0</option>
                  <option value="1">1</option>
                  <option value="2">2</option>
                  <option value="3">3</option>    
              </select>병 ~ 
              <select name="soju2">
                  <option value=""></option>
                  <option value="0">0</option>
                  <option value="1">1</option>
                  <option value="2">2</option>
                  <option value="3">3</option>    
              </select>병
          </div>
        </div><br>
        <div>
          <div class="title">맥주주량</div>  
          <div>
              <select name="beer1">
                  <option value=""></option>
                  <option value="0">0</option>
                  <option value="1">1</option>
                  <option value="2">2</option>
                  <option value="3">3</option>    
              </select>잔 ~ 
              <select name="beer2">
                  <option value=""></option>
                  <option value="0">0</option>
                  <option value="1">1</option>
                  <option value="2">2</option>
                  <option value="3">3</option>    
              </select>잔
          </div>
        </div><br>
        <div>
          <div class="title">병역</div>  
          <div>
              <select name="go_army">
                  <option value=""></option>
                  <option value="1">군필</option>
                  <option value="2">의가사 제대</option>
                  <option value="3">면제</option>    
              </select>
          </div>
        </div><br>
        </div>
    <table>
      
      
      <input type="hidden" name="selectPageNo" value="1">
    <section class="count_desc">
      <section class="searchResultCnt">
        검색개수 : <span class="accent impect">${devListMap.devListCnt}</span> 
        개
      </section>
    
      <select name="rowCntPerPage" onChange="searchDev()" class="rownum">
            <option value="10">10 
            <option value="15">15 
            <option value="20">20 
      </select>&nbsp;행 보기
  </section>
     </table>
     
		<input type="hidden" name="devSortTag1">
		<input type="hidden" name="devSortTag2">
		<input type="hidden" name="devSortTag3">
		<input type="hidden" name="devSortTag4">
		<input type="hidden" name="devSortTag5">
		<input type="hidden" name="devSortTag6">
		<input type="hidden" name="devSortTag7">
		
		<div class="sort">	
			<div class="title">정렬기준</div>
				<select name="devSort1" onchange="sortDevSelect1()">
					<option></option>
					<option value="dName asc">이름 오름차순</option>
					<option value="dName desc">이름 내림차순</option>
					<option value="birth_year asc">출생년도 오름차순</option>
					<option value="birth_year desc">출생년도 내림차순</option>
					<option value="age asc">나이 오름차순</option>
					<option value="age desc">나이 내림차순</option>
					<option value="jumin_num asc">주민번호 오름차순</option>
					<option value="jumin_num desc">주민번호 내림차순</option>				
					<option value="highest_edu asc">최종학력 오름차순</option>
					<option value="highest_edu desc">최종학력 내림차순</option>
					<option value="graduate_date asc">최종학력졸업일 오름차순</option>
					<option value="graduate_date desc">최종학력졸업일 내림차순</option>
					<option value="reg_date asc">입사일 오름차순</option>
					<option value="reg_date desc">입사일 내림차순</option>
				</select>
				<select name="devSort2" onchange="sortDevSelect2()">
					<option></option>
					<c:if test="${param.devSortTag1 != 'dName'}">
					<option value="dName asc">이름 오름차순</option>
					<option value="dName desc">이름 내림차순</option>
					</c:if>
					<c:if test="${param.devSortTag1 != 'birth_year'}">
					<option value="birth_year asc">출생년도 오름차순</option>
					<option value="birth_year desc">출생년도 내림차순</option>
					</c:if>
					<c:if test="${param.devSortTag1 != 'age'}">
					<option value="age asc">나이 오름차순</option>
					<option value="age desc">나이 내림차순</option>
					</c:if>
					<c:if test="${param.devSortTag1 != 'jumin_num'}">
					<option value="jumin_num asc">주민번호 오름차순</option>
					<option value="jumin_num desc">주민번호 내림차순</option>	
					</c:if>	
					<c:if test="${param.devSortTag1 != 'highest_edu'}">		
					<option value="highest_edu asc">최종학력 오름차순</option>
					<option value="highest_edu desc">최종학력 내림차순</option>
					</c:if>
					<c:if test="${param.devSortTag1 != 'graduate_date'}">
					<option value="graduate_date asc">최종학력졸업일 오름차순</option>
					<option value="graduate_date desc">최종학력졸업일 내림차순</option>
					</c:if>
					<c:if test="${param.devSortTag1 != 'reg_date'}">
					<option value="reg_date asc">입사일 오름차순</option>
					<option value="reg_date desc">입사일 내림차순</option>
					</c:if>
				</select>
				<select name="devSort3" onchange="sortDevSelect3()">
					<option></option>
					<c:if test="${param.devSortTag1 != 'dName' and param.devSortTag2 != 'dName'}">
					<option value="dName asc">이름 오름차순</option>
					<option value="dName desc">이름 내림차순</option>
					</c:if>
					<c:if test="${param.devSortTag1 != 'birth_year' and param.devSortTag2 != 'birth_year'}">
					<option value="birth_year asc">출생년도 오름차순</option>
					<option value="birth_year desc">출생년도 내림차순</option>
					</c:if>
					<c:if test="${param.devSortTag1 != 'age' and param.devSortTag2 != 'age'}">
					<option value="age asc">나이 오름차순</option>
					<option value="age desc">나이 내림차순</option>
					</c:if>
					<c:if test="${param.devSortTag1 != 'jumin_num' and param.devSortTag2 != 'jumin_num'}">
					<option value="jumin_num asc">주민번호 오름차순</option>
					<option value="jumin_num desc">주민번호 내림차순</option>	
					</c:if>
					<c:if test="${param.devSortTag1 != 'highest_edu' and param.devSortTag2 != 'highest_edu'}">			
					<option value="highest_edu asc">최종학력 오름차순</option>
					<option value="highest_edu desc">최종학력 내림차순</option>
					</c:if>
					<c:if test="${param.devSortTag1 != 'graduate_date' and param.devSortTag2 != 'graduate_date'}">
					<option value="graduate_date asc">최종학력졸업일 오름차순</option>
					<option value="graduate_date desc">최종학력졸업일 내림차순</option>
					</c:if>
					<c:if test="${param.devSortTag1 != 'reg_date' and param.devSortTag2 != 'reg_date'}">
					<option value="reg_date asc">입사일 오름차순</option>
					<option value="reg_date desc">입사일 내림차순</option>
					</c:if>
				</select>
				<select name="devSort4" onchange="sortDevSelect4()">
					<option></option>
					<c:if test="${param.devSortTag1 != 'dName' and param.devSortTag2 != 'dName' and param.devSortTag3 != 'dName'}">
					<option value="dName asc">이름 오름차순</option>
					<option value="dName desc">이름 내림차순</option>
					</c:if>
					<c:if test="${param.devSortTag1 != 'birth_year' and param.devSortTag2 != 'birth_year' and param.devSortTag3 != 'birth_year'}">
					<option value="birth_year asc">출생년도 오름차순</option>
					<option value="birth_year desc">출생년도 내림차순</option>
					</c:if>
					<c:if test="${param.devSortTag1 != 'age' and param.devSortTag2 != 'age' and param.devSortTag3 != 'age'}">
					<option value="age asc">나이 오름차순</option>
					<option value="age desc">나이 내림차순</option>
					</c:if>
					<c:if test="${param.devSortTag1 != 'jumin_num' and param.devSortTag2 != 'jumin_num' and param.devSortTag3 != 'jumin_num'}">
					<option value="jumin_num asc">주민번호 오름차순</option>
					<option value="jumin_num desc">주민번호 내림차순</option>				
					</c:if>
					<c:if test="${param.devSortTag1 != 'highest_edu' and param.devSortTag2 != 'highest_edu' and param.devSortTag3 != 'highest_edu'}">
					<option value="highest_edu asc">최종학력 오름차순</option>
					<option value="highest_edu desc">최종학력 내림차순</option>
					</c:if>
					<c:if test="${param.devSortTag1 != 'graduate_date' and param.devSortTag2 != 'graduate_date' and param.devSortTag3 != 'graduate_date'}">
					<option value="graduate_date asc">최종학력졸업일 오름차순</option>
					<option value="graduate_date desc">최종학력졸업일 내림차순</option>
					</c:if>
					<c:if test="${param.devSortTag1 != 'reg_date' and param.devSortTag2 != 'reg_date' and param.devSortTag3 != 'reg_date'}">
					<option value="reg_date asc">입사일 오름차순</option>
					<option value="reg_date desc">입사일 내림차순</option>
					</c:if>
				</select>
				<select name="devSort5" onchange="sortDevSelect5()">
				<option></option>
					<c:if test="${param.devSortTag1 != 'dName' and param.devSortTag2 != 'dName' and param.devSortTag3 != 'dName' and param.devSortTag4 != 'dName'}">
					<option value="dName asc">이름 오름차순</option>
					<option value="dName desc">이름 내림차순</option>
					</c:if>
					<c:if test="${param.devSortTag1 != 'birth_year' and param.devSortTag2 != 'birth_year' and param.devSortTag3 != 'birth_year' and param.devSortTag4 != 'birth_year'}">
					<option value="birth_year asc">출생년도 오름차순</option>
					<option value="birth_year desc">출생년도 내림차순</option>
					</c:if>
					<c:if test="${param.devSortTag1 != 'age' and param.devSortTag2 != 'age' and param.devSortTag3 != 'age' and param.devSortTag4 != 'age'}">
					<option value="age asc">나이 오름차순</option>
					<option value="age desc">나이 내림차순</option>
					</c:if>
					<c:if test="${param.devSortTag1 != 'jumin_num' and param.devSortTag2 != 'jumin_num' and param.devSortTag3 != 'jumin_num' and param.devSortTag4 != 'jumin_num'}">
					<option value="jumin_num asc">주민번호 오름차순</option>
					<option value="jumin_num desc">주민번호 내림차순</option>				
					</c:if>
					<c:if test="${param.devSortTag1 != 'highest_edu' and param.devSortTag2 != 'highest_edu' and param.devSortTag3 != 'highest_edu' and param.devSortTag4 != 'highest_edu'}">
					<option value="highest_edu asc">최종학력 오름차순</option>
					<option value="highest_edu desc">최종학력 내림차순</option>
					</c:if>
					<c:if test="${param.devSortTag1 != 'graduate_date' and param.devSortTag2 != 'graduate_date' and param.devSortTag3 != 'graduate_date' and param.devSortTag4 != 'graduate_date'}">
					<option value="graduate_date asc">최종학력졸업일 오름차순</option>
					<option value="graduate_date desc">최종학력졸업일 내림차순</option>
					</c:if>
					<c:if test="${param.devSortTag1 != 'reg_date' and param.devSortTag2 != 'reg_date' and param.devSortTag3 != 'reg_date' and param.devSortTag4 != 'reg_date'}">
					<option value="reg_date asc">입사일 오름차순</option>
					<option value="reg_date desc">입사일 내림차순</option>
					</c:if>
				</select>
				<select name="devSort6" onchange="sortDevSelect6()">
					<option></option>
					<c:if test="${param.devSortTag1 != 'dName' and param.devSortTag2 != 'dName' and param.devSortTag3 != 'dName' and param.devSortTag4 != 'dName' and param.devSortTag5 != 'dName'}">
					<option value="dName asc">이름 오름차순</option>
					<option value="dName desc">이름 내림차순</option>
					</c:if>
					<c:if test="${param.devSortTag1 != 'birth_year' and param.devSortTag2 != 'birth_year' and param.devSortTag3 != 'birth_year' and param.devSortTag4 != 'birth_year' and param.devSortTag5 != 'birth_year'}">
					<option value="birth_year asc">출생년도 오름차순</option>
					<option value="birth_year desc">출생년도 내림차순</option>
					</c:if>
					<c:if test="${param.devSortTag1 != 'age' and param.devSortTag2 != 'age' and param.devSortTag3 != 'age' and param.devSortTag4 != 'age' and param.devSortTag5 != 'age'}">
					<option value="age asc">나이 오름차순</option>
					<option value="age desc">나이 내림차순</option>
					</c:if>
					<c:if test="${param.devSortTag1 != 'jumin_num' and param.devSortTag2 != 'jumin_num' and param.devSortTag3 != 'jumin_num' and param.devSortTag4 != 'jumin_num' and param.devSortTag5 != 'jumin_num'}">
					<option value="jumin_num asc">주민번호 오름차순</option>
					<option value="jumin_num desc">주민번호 내림차순</option>				
					</c:if>
					<c:if test="${param.devSortTag1 != 'highest_edu' and param.devSortTag2 != 'highest_edu' and param.devSortTag3 != 'highest_edu' and param.devSortTag4 != 'highest_edu' and param.devSortTag5 != 'highest_edu'}">
					<option value="highest_edu asc">최종학력 오름차순</option>
					<option value="highest_edu desc">최종학력 내림차순</option>
					</c:if>
					<c:if test="${param.devSortTag1 != 'graduate_date' and param.devSortTag2 != 'graduate_date' and param.devSortTag3 != 'graduate_date' and param.devSortTag4 != 'graduate_date' and param.devSortTag5 != 'graduate_date'}">
					<option value="graduate_date asc">최종학력졸업일 오름차순</option>
					<option value="graduate_date desc">최종학력졸업일 내림차순</option>
					</c:if>
					<c:if test="${param.devSortTag1 != 'reg_date' and param.devSortTag2 != 'reg_date' and param.devSortTag3 != 'reg_date' and param.devSortTag4 != 'reg_date' and param.devSortTag5 != 'reg_date'}">
					<option value="reg_date asc">입사일 오름차순</option>
					<option value="reg_date desc">입사일 내림차순</option>
					</c:if>
				</select>
				<select name="devSort7" onchange="sortDevSelect7()">
					<option></option>
					<c:if test="${param.devSortTag1 != 'dName' and param.devSortTag2 != 'dName' and param.devSortTag3 != 'dName' and param.devSortTag4 != 'dName' and param.devSortTag5 != 'dName' and param.devSortTag6 != 'dName'}">
					<option value="dName asc">이름 오름차순</option>
					<option value="dName desc">이름 내림차순</option>
					</c:if>
					<c:if test="${param.devSortTag1 != 'birth_year' and param.devSortTag2 != 'birth_year' and param.devSortTag3 != 'birth_year' and param.devSortTag4 != 'birth_year' and param.devSortTag5 != 'birth_year' and param.devSortTag6 != 'birth_year'}">
					<option value="birth_year asc">출생년도 오름차순</option>
					<option value="birth_year desc">출생년도 내림차순</option>
					</c:if>
					<c:if test="${param.devSortTag1 != 'age' and param.devSortTag2 != 'age' and param.devSortTag3 != 'age' and param.devSortTag4 != 'age' and param.devSortTag5 != 'age' and param.devSortTag6 != 'age'}">
					<option value="age asc">나이 오름차순</option>
					<option value="age desc">나이 내림차순</option>
					</c:if>
					<c:if test="${param.devSortTag1 != 'jumin_num' and param.devSortTag2 != 'jumin_num' and param.devSortTag3 != 'jumin_num' and param.devSortTag4 != 'jumin_num' and param.devSortTag5 != 'jumin_num' and param.devSortTag6 != 'jumin_num'}">
					<option value="jumin_num asc">주민번호 오름차순</option>
					<option value="jumin_num desc">주민번호 내림차순</option>				
					</c:if>
					<c:if test="${param.devSortTag1 != 'highest_edu' and param.devSortTag2 != 'highest_edu' and param.devSortTag3 != 'highest_edu' and param.devSortTag4 != 'highest_edu' and param.devSortTag5 != 'highest_edu' and param.devSortTag6 != 'highest_edu'}">
					<option value="highest_edu asc">최종학력 오름차순</option>
					<option value="highest_edu desc">최종학력 내림차순</option>
					</c:if>
					<c:if test="${param.devSortTag1 != 'graduate_date' and param.devSortTag2 != 'graduate_date' and param.devSortTag3 != 'graduate_date' and param.devSortTag4 != 'graduate_date' and param.devSortTag5 != 'graduate_date' and param.devSortTag6 != 'graduate_date'}">
					<option value="graduate_date asc">최종학력졸업일 오름차순</option>
					<option value="graduate_date desc">최종학력졸업일 내림차순</option>
					</c:if>
					<c:if test="${param.devSortTag1 != 'reg_date' and param.devSortTag2 != 'reg_date' and param.devSortTag3 != 'reg_date' and param.devSortTag4 != 'reg_date' and param.devSortTag5 != 'reg_date' and param.devSortTag6 != 'reg_date'}">
					<option value="reg_date asc">입사일 오름차순</option>
					<option value="reg_date desc">입사일 내림차순</option>
					</c:if>
				</select>
				</div>			
		
      <div name="searchResult" class="searchResult">
      <div class="resultCate">
        <div class="isWork">근무여부</div>
	    <div>번호</div>
		<div>이름</div>
		<div>성별</div>
		<div>출생년도</div>
		<div>나이</div>
		<div>핸드폰</div>
		<div>이메일</div>
		<div>주민번호</div>
		<div>거주지</div>
		<div>최종학력</div>
		<div>최종학력<br>졸업일</div>
		<div>입사일</div>
		<div>소유스킬</div>
		<div>자격증</div>
      </div>
      <div class="SearchResult_box">
      <div>
        <c:forEach var="devList" items="${devListMap.devList}" varStatus="vs">
           <div class="searchDetail" onclick="showPopup('${devList.dev_num}')" >
            <c:if test="${devList.is_retire=='근무자'}">
              <div class="isRetire">${devList.is_retire}</div>
            </c:if>
            <c:if test="${devList.is_retire=='퇴사자'}">
              <div>${devList.is_retire}</div>
            </c:if>
            <div>${devListMap.begin_serialNo_desc-vs.index}</div>
            <div>${devList.dName}</div>
            <div>${devList.gender}</div>
            <div>${devList.birth_year}</div>
            <div>${devList.age}</div>   
            <div>${devList.phone} </div>
            <div>${devList.email} </div>
            <div>${devList.jumin_num} </div>
            <div>${devList.abode}</div>
            <div>${devList.highest_edu}</div>
            <div>${devList.graduate_date}</div>
            <div>${devList.hire_date} </div>
            <div>${devList.skill}</div>
            <div>${devList.license}</div>
          </div>
        </c:forEach>
       </div>
        </div>
     
      <div class="pageNos"> 
        <span onClick="pageNoClick(1)"><i class="fa fa-angle-left" aria-hidden="true"></i><i class="fa fa-angle-left" aria-hidden="true"></i></span>
        <span onClick="pageNoClick(${requestScope.devListMap.selectPageNo}-1)"><i class="fa fa-angle-left" aria-hidden="true"></i></span>
        <c:forEach var="pageNo" begin="${requestScope.devListMap.begin_pageNo}" end="${devListMap.end_pageNo}">
          <c:if test="${requestScope.devListMap.selectPageNo==pageNo}">
            <span class='isSelect'>
              ${pageNo}
            </span>
          </c:if>
        <c:if test="${requestScope.devListMap.selectPageNo!=pageNo}">
            <span style="cursor:pointer" onClick="pageNoClick(${pageNo})">[${pageNo}]</span>
        </c:if>  
        </c:forEach> 
        <span onClick="pageNoClick(${requestScope.devListMap.selectPageNo}+1)"><i class="fa fa-angle-right" aria-hidden="true"></i></span>
        <span onClick="pageNoClick(${requestScope.devListMap.last_pageNo})"><i class="fa fa-angle-right" aria-hidden="true"></i><i class="fa fa-angle-right" aria-hidden="true"></i></span>
      </div>
      </form> 
    </div>
    
    <div class='popup'>
      <div class="dim">
        <div class='popup_main'>
          <form name="devRegForm" class="devRegForm">
            <header>정규직 개발자 상세 정보</header>
            아이디는 수정이 불가능합니다.
            <div class="dev_user">
              <td>아이디</td>
              <td>
                  <input type="text" name="id" maxlength="20" readonly />
              </td>
            <td>암호</td>
              <td>
                  <input type="password" name="pwd" maxlength="20" /> 
              </td>
              <td>암호확인</td>
              <td colspan="2">
                  <input type="password" name="rePwd" maxlength="20" />
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
                    <input type="text" name="emergency_name" class="emergency_name" size="10"> <br><br>
                </td>
                <td>
                    [관계] :
                </td>
                <td>
                    <select name="emergency_relation" class="emergency_relation">
                      <option value=""></option>
                      <option value="1">부모</option>
                      <option value="2">자녀</option>
                      <option value="3">형제</option>
                      <option value="4">배우자</option>
                      <option value="5">친척</option>
                      <option value="6">지인</option>
                    </select> (부모,자녀,형제,배우자,친척,지인)<br>
                </td>
                <td>[전화번호] :</td>
                <td>
                    <input type="tel" name="emergency_phone" class="emergency_phone"  pattern="[0-9]{11}"> <br>
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
              <div class="title flex">
                <div>가족</div>
                <div class="add_fam">
                  <input type="button" value="가족 추가" class="fam_btn" onclick="fam_add()">
                </div>
              </div>
              <div class="fam">
                <div>관계</div>
                <div>이름</div>
                <div>직업(미성년자는 무직 입력)</div>
                <div>출생년도</div>
                <div>동거여부</div>
                <div>행</div>
              </div>
              <div class="fam_desc">
                <div>
                  <select name="family_relation1" id="family_relation1">
                    <option value=""></option>
                    <option value="1">부</option>
                    <option value="2">자녀</option>
                    <option value="3">형제</option>
                    <option value="4">배우자</option>
                    <option value="5">친척</option>
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
                  <input type="button" value="초기화" class="fam_btn" onclick="fam_empty(this)">
                </div>
              </div>
               <!-- 가족관계 복붙 ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ-->
              <div class="fam_desc2 hide">
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
                  <input type="button" value="행삭제" class="fam_btn" onclick="fam_del(this)">
                </div>
              </div>
              
              <div class="fam_desc3 hide">
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
                  <input type="button" value="행삭제" class="fam_btn" onclick="fam_del(this)">
                </div>
              </div>
              
              <div class="fam_desc4 hide">
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
                  <input type="button" value="행삭제" class="fam_btn" onclick="fam_del(this)">
                </div>
              </div>
              
              <div class="fam_desc5 hide" >
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
                  <input type="button" value="행삭제" class="fam_btn" onclick="fam_del(this)">
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
            <div class="title">자격증</div>
            <div>
            	<tr>
            	<th></th>
            	<input type="checkbox"  name="license"  value="1"> 정보처리기사
            	<input type="checkbox"  name="license"  value="2">정보처리산업기사
            	</tr>         
            </div>
            <div>
            
              <div class="title">외국어 (중급 이상만 입력)</div>
              
              				<div>
									<tr>
										<th>독해 가능 외국어</th>
										<input type="checkbox" name="can_reading_language" value="1"> 영어
										<input type="checkbox" name="can_reading_language" value="2"> 일어
										<input type="checkbox" name="can_reading_language" value="3"> 중국어
										<input type="checkbox" name="can_reading_language" value="4"> 불어
										<input type="checkbox" name="can_reading_language" value="5"> 독일어
									</tr>
							</div>
              
              
                            <div>
									<tr>
										<th>회화 가능 외국어</th>
										<input type="checkbox" name="can_speaking_language" value="1"> 영어
										<input type="checkbox" name="can_speaking_language" value="2"> 일어
										<input type="checkbox" name="can_speaking_language" value="3"> 중국어
										<input type="checkbox" name="can_speaking_language" value="4"> 불어
										<input type="checkbox" name="can_speaking_language" value="5"> 독일어
									</tr>
							</div>
             
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
                <tr>
                  <th>관심분야</th>
                    <td><input type="checkbox" name="interest" value="1">정치</td>
                    <td><input type="checkbox" name="interest" value="2">경제</td>
                    <td><input type="checkbox" name="interest" value="3">사회</td>
                    <td><input type="checkbox" name="interest" value="4">문화</td>
                </tr>
                </div>
              </div>
            </div>
            <div>
              <div class="title">개발경력 (최근 1건만 입력)</div>
              <div class="cur">
                <div>프로젝트명 / 기간</div>
                <div>고객사 / 근무사 / 역할</div>
                <div>
                  개발환경
                  <span class="emm_btn" onclick="empty_emp_detail(this)">모두 비우기</span>
                </div>
                <!-- <div>행</div> -->
              </div>
              <div class="curr">
                <div>
                  <div class="dept_1">
                    <div>프로젝트명</div>
                    <input type="text" name="past_prj_name" maxlength="30">
                  </div>
                  <div class="dept_1 limitDate">
                    <div>시작일</div>
                    <input type="month" name="prj_start_date" onchange="setMaxDate(this, 'min')">
                  </div>
                  <div class="dept_1 limitDate">
                    <div>종료일</div>
                      <input type="month" name="prj_finish_date" onchange="setMaxDate(this, 'max')">
                  </div>
                  <div class="dept_1">
                    <div>파견단계</div>
                    <select name="dispatch_level">
                            <option value=""></option>
                            <option value="1">파견확정</option>
                            <option value="2">파견중</option>
                            <option value="3">파견종료</option></select>
                        </td>
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
                      <div onclick="showList(this)" class="option_bnt">옵션 <i class="fa fa-angle-down" aria-hidden="true"></i></div>
                      <div class="scroll_box server_computer">
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
                      <div onclick="showList(this)" class="option_bnt">옵션 <i class="fa fa-angle-down" aria-hidden="true"></i></div>
                      <div class="scroll_box os">
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
                      <div onclick="showList(this)" class="option_bnt">옵션 <i class="fa fa-angle-down" aria-hidden="true"></i></div>
                      <div class="scroll_box it_language">
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

                      <div onclick="showList(this)" class="option_bnt">옵션 <i class="fa fa-angle-down" aria-hidden="true"></i></div>
                      <div class="scroll_box DBMS">
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

                      <div onclick="showList(this)" class="option_bnt">옵션 <i class="fa fa-angle-down" aria-hidden="true"></i></div>
                      <div class="scroll_box tool">
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
            <span onclick="closePopup()" name="cancel" class="cancel">닫기</span>
            <span onclick="deleteInfo()" name="delete" class="delete">삭제</span>
            <span onclick="alterInfo(this)" name="save" class="save">수정</span>
            <input type="hidden" name="del_dev_uid" class="del_dev_uid">
         </form>
        </div>
        </div>
    </div>
    <div class="none">
			<form name="searchDevDetailForm" action="/devDetailForm.do" post="post">
				<input type="hidden" name="dev_uid" class="dev_uid" >
			</form>
	
			<form name="deleteDevInFo" action="/deleteDevInFo.do" post="post">
				<input type="hidden" name="del_dev_uid" class="del_dev_uid">
			</form>
    </div>
</body>
</html>