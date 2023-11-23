<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/common.jsp"%>

<!doctype html>
<html>
<head>
<title>[개발자] / [프리랜서] 검색 화면</title>
<link href="css/searchFreeDev.css" rel="stylesheet">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" integrity="sha512-5A8nwdMOWrSz20fDsjczgUidUBR8liPYU+WymTZP1lmY9G6Oc7HlZv156XqnsgNUzTyMefFTcsFH/tnJE/+xBg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<script>
	var checkTop = 0;


	function checkRadio(e) {
		$(e).siblings('input').prop('checked', false);
	}
	
	function checkMax(e, max) {
			var getName = $(e).attr('name');

			if ($(e).val().length > max){
				$(e).val($(e).val().slice(0, max));
			}    
		}
		function reSearch4(){
				location.reload();
		}	
		
		function showDesc(e) {
			$('.desc_box').slideToggle();
			$('.filter').toggleClass('active');
		} 
	
	function sortSelect1(){
		var ascDesc =$("[name='freeSort1']").val();
		if(ascDesc=='fName asc' || ascDesc=='fName desc'){
			$("[name='freeSortTag1']").val('fName')
		}
		if(ascDesc=="TO_CHAR(sysdate, 'YYYY') - TO_CHAR(birth_year) asc" || ascDesc=="TO_CHAR(sysdate, 'YYYY') - TO_CHAR(birth_year) desc"){
			$("[name='freeSortTag1']").val('age')
		}
		if(ascDesc=="DECODE(highestLevel_edu,1,'고졸',2,'전문대졸',3,'일반대학사졸',4,'일반대석사졸','일반대박사졸') asc" || ascDesc=="DECODE(highestLevel_edu,1,'고졸',2,'전문대졸',3,'일반대학사졸',4,'일반대석사졸','일반대박사졸') desc"){
			$("[name='freeSortTag1']").val('highestLevel_edu')
		}
		if(ascDesc=="NVL((SELECT SUBSTR(fy.resume_dev_year, 1,2) FROM FREE_YEAR_INFO fy WHERE f.FREE_NUM = fy.FREE_NUM), '0') asc" || ascDesc=="NVL((SELECT SUBSTR(fy.resume_dev_year, 1,2) FROM FREE_YEAR_INFO fy WHERE f.FREE_NUM = fy.FREE_NUM), '0') desc"){
			$("[name='freeSortTag1']").val('yeoncha')
		}
		if(ascDesc=='can_dispatch_date asc' || ascDesc=='can_dispatch_date desc'){
			$("[name='freeSortTag1']").val('can_dispatch_date')
		}
		if(ascDesc=='consultation_time asc' || ascDesc=='consultation_time desc'){
			$("[name='freeSortTag1']").val('consultation_time')
		}
		if(ascDesc=="(SELECT FYI2.dev_year_standard_date FROM FREE_YEAR_INFO FYI2 WHERE f.free_num = FYI2.free_num) asc" || ascDesc=="(SELECT FYI2.dev_year_standard_date FROM FREE_YEAR_INFO FYI2 WHERE f.free_num = FYI2.free_num) desc"){
			$("[name='freeSortTag1']").val('dev_year_standard_date')
		}
		search();
		}
	function sortSelect2(){
		var ascDesc =$("[name='freeSort2']").val();
		if(ascDesc=='fName asc' || ascDesc=='fName desc'){
			$("[name='freeSortTag2']").val('fName')
		}
		if(ascDesc=="TO_CHAR(sysdate, 'YYYY') - TO_CHAR(birth_year) asc" || ascDesc=="TO_CHAR(sysdate, 'YYYY') - TO_CHAR(birth_year) desc"){
			$("[name='freeSortTag2']").val('age')
		}
		if(ascDesc=="DECODE(highestLevel_edu,1,'고졸',2,'전문대졸',3,'일반대학사졸',4,'일반대석사졸','일반대박사졸') asc" || ascDesc=="DECODE(highestLevel_edu,1,'고졸',2,'전문대졸',3,'일반대학사졸',4,'일반대석사졸','일반대박사졸') desc"){
			$("[name='freeSortTag2']").val('highestLevel_edu')
		}
		if(ascDesc=="NVL((SELECT SUBSTR(fy.resume_dev_year, 1,2) FROM FREE_YEAR_INFO fy WHERE f.FREE_NUM = fy.FREE_NUM), '0') asc" || ascDesc=="NVL((SELECT SUBSTR(fy.resume_dev_year, 1,2) FROM FREE_YEAR_INFO fy WHERE f.FREE_NUM = fy.FREE_NUM), '0') desc"){
			$("[name='freeSortTag2']").val('yeoncha')
		}
		if(ascDesc=='can_dispatch_date asc' || ascDesc=='can_dispatch_date desc'){
			$("[name='freeSortTag2']").val('can_dispatch_date')
		}
		if(ascDesc=='consultation_time asc' || ascDesc=='consultation_time desc'){
			$("[name='freeSortTag2']").val('consultation_time')
		}
		if(ascDesc=="(SELECT FYI2.dev_year_standard_date FROM FREE_YEAR_INFO FYI2 WHERE f.free_num = FYI2.free_num) asc" || ascDesc=="(SELECT FYI2.dev_year_standard_date FROM FREE_YEAR_INFO FYI2 WHERE f.free_num = FYI2.free_num) desc"){
			$("[name='freeSortTag2']").val('dev_year_standard_date')
		}
		search();
	}
	function sortSelect3(){
		var ascDesc =	$("[name='freeSort3']").val();
		if(ascDesc=='fName asc' || ascDesc=='fName desc'){
			$("[name='freeSortTag3']").val('fName')
		}
		if(ascDesc=="TO_CHAR(sysdate, 'YYYY') - TO_CHAR(birth_year) asc" || ascDesc=="TO_CHAR(sysdate, 'YYYY') - TO_CHAR(birth_year) desc"){
			$("[name='freeSortTag3']").val('age')
		}
		if(ascDesc=="DECODE(highestLevel_edu,1,'고졸',2,'전문대졸',3,'일반대학사졸',4,'일반대석사졸','일반대박사졸') asc" || ascDesc=="DECODE(highestLevel_edu,1,'고졸',2,'전문대졸',3,'일반대학사졸',4,'일반대석사졸','일반대박사졸') desc"){
			$("[name='freeSortTag3']").val('highestLevel_edu')
		}
		if(ascDesc=="NVL((SELECT SUBSTR(fy.resume_dev_year, 1,2) FROM FREE_YEAR_INFO fy WHERE f.FREE_NUM = fy.FREE_NUM), '0') asc" || ascDesc=="NVL((SELECT SUBSTR(fy.resume_dev_year, 1,2) FROM FREE_YEAR_INFO fy WHERE f.FREE_NUM = fy.FREE_NUM), '0') desc"){
			$("[name='freeSortTag3']").val('yeoncha')
		}
		if(ascDesc=='can_dispatch_date asc' || ascDesc=='can_dispatch_date desc'){
			$("[name='freeSortTag3']").val('can_dispatch_date')
		}
		if(ascDesc=='consultation_time asc' || ascDesc=='consultation_time desc'){
			$("[name='freeSortTag3']").val('consultation_time')
		}
		if(ascDesc=="(SELECT FYI2.dev_year_standard_date FROM FREE_YEAR_INFO FYI2 WHERE f.free_num = FYI2.free_num) asc" || ascDesc=="(SELECT FYI2.dev_year_standard_date FROM FREE_YEAR_INFO FYI2 WHERE f.free_num = FYI2.free_num) desc"){
			$("[name='freeSortTag3']").val('dev_year_standard_date')
		}
		search();
	}
	function sortSelect4(){
		var ascDesc =	$("[name='freeSort4']").val();
		if(ascDesc=='fName asc' || ascDesc=='fName desc'){
			$("[name='freeSortTag4']").val('fName')
		}
		if(ascDesc=="TO_CHAR(sysdate, 'YYYY') - TO_CHAR(birth_year) asc" || ascDesc=="TO_CHAR(sysdate, 'YYYY') - TO_CHAR(birth_year) desc"){
			$("[name='freeSortTag4']").val('age')
		}
		if(ascDesc=="DECODE(highestLevel_edu,1,'고졸',2,'전문대졸',3,'일반대학사졸',4,'일반대석사졸','일반대박사졸') asc" || ascDesc=="DECODE(highestLevel_edu,1,'고졸',2,'전문대졸',3,'일반대학사졸',4,'일반대석사졸','일반대박사졸') desc"){
			$("[name='freeSortTag4']").val('highestLevel_edu')
		}
		if(ascDesc=="NVL((SELECT SUBSTR(fy.resume_dev_year, 1,2) FROM FREE_YEAR_INFO fy WHERE f.FREE_NUM = fy.FREE_NUM), '0') asc" || ascDesc=="NVL((SELECT SUBSTR(fy.resume_dev_year, 1,2) FROM FREE_YEAR_INFO fy WHERE f.FREE_NUM = fy.FREE_NUM), '0') desc"){
			$("[name='freeSortTag4']").val('yeoncha')
		}
		if(ascDesc=='can_dispatch_date asc' || ascDesc=='can_dispatch_date desc'){
			$("[name='freeSortTag4']").val('can_dispatch_date')
		}
		if(ascDesc=='consultation_time asc' || ascDesc=='consultation_time desc'){
			$("[name='freeSortTag4']").val('consultation_time')
		}
		if(ascDesc=="(SELECT FYI2.dev_year_standard_date FROM FREE_YEAR_INFO FYI2 WHERE f.free_num = FYI2.free_num) asc" || ascDesc=="(SELECT FYI2.dev_year_standard_date FROM FREE_YEAR_INFO FYI2 WHERE f.free_num = FYI2.free_num) desc"){
			$("[name='freeSortTag4']").val('dev_year_standard_date')
		}
		search();
	}
	function sortSelect5(){
		var ascDesc =$("[name='freeSort5']").val();
		if(ascDesc=='fName asc' || ascDesc=='fName desc'){
			$("[name='freeSortTag5']").val('fName')
		}
		if(ascDesc=="TO_CHAR(sysdate, 'YYYY') - TO_CHAR(birth_year) asc" || ascDesc=="TO_CHAR(sysdate, 'YYYY') - TO_CHAR(birth_year) desc"){
			$("[name='freeSortTag5']").val('age')
		}
		if(ascDesc=="DECODE(highestLevel_edu,1,'고졸',2,'전문대졸',3,'일반대학사졸',4,'일반대석사졸','일반대박사졸') asc" || ascDesc=="DECODE(highestLevel_edu,1,'고졸',2,'전문대졸',3,'일반대학사졸',4,'일반대석사졸','일반대박사졸') desc"){
			$("[name='freeSortTag5']").val('highestLevel_edu')
		}
		if(ascDesc=="NVL((SELECT SUBSTR(fy.resume_dev_year, 1,2) FROM FREE_YEAR_INFO fy WHERE f.FREE_NUM = fy.FREE_NUM), '0') asc" || ascDesc=="NVL((SELECT SUBSTR(fy.resume_dev_year, 1,2) FROM FREE_YEAR_INFO fy WHERE f.FREE_NUM = fy.FREE_NUM), '0') desc"){
			$("[name='freeSortTag5']").val('yeoncha')
		}
		if(ascDesc=='can_dispatch_date asc' || ascDesc=='can_dispatch_date desc'){
			$("[name='freeSortTag5']").val('can_dispatch_date')
		}
		if(ascDesc=='consultation_time asc' || ascDesc=='consultation_time desc'){
			$("[name='freeSortTag5']").val('consultation_time')
		}
		if(ascDesc=="(SELECT FYI2.dev_year_standard_date FROM FREE_YEAR_INFO FYI2 WHERE f.free_num = FYI2.free_num) asc" || ascDesc=="(SELECT FYI2.dev_year_standard_date FROM FREE_YEAR_INFO FYI2 WHERE f.free_num = FYI2.free_num) desc"){
			$("[name='freeSortTag5']").val('dev_year_standard_date')
		}
		search();
	}
	function sortSelect6(){
		var ascDesc = $("[name='freeSort6']").val();
		if(ascDesc=='fName asc' || ascDesc=='fName desc'){
			$("[name='freeSortTag6']").val('fName')
		}
		if(ascDesc=="TO_CHAR(sysdate, 'YYYY') - TO_CHAR(birth_year) asc" || ascDesc=="TO_CHAR(sysdate, 'YYYY') - TO_CHAR(birth_year) desc"){
			$("[name='freeSortTag6']").val('age')
		}
		if(ascDesc=="DECODE(highestLevel_edu,1,'고졸',2,'전문대졸',3,'일반대학사졸',4,'일반대석사졸','일반대박사졸') asc" || ascDesc=="DECODE(highestLevel_edu,1,'고졸',2,'전문대졸',3,'일반대학사졸',4,'일반대석사졸','일반대박사졸') desc"){
			$("[name='freeSortTag6']").val('highestLevel_edu')
		}
		if(ascDesc=="NVL((SELECT SUBSTR(fy.resume_dev_year, 1,2) FROM FREE_YEAR_INFO fy WHERE f.FREE_NUM = fy.FREE_NUM), '0') asc" || ascDesc=="NVL((SELECT SUBSTR(fy.resume_dev_year, 1,2) FROM FREE_YEAR_INFO fy WHERE f.FREE_NUM = fy.FREE_NUM), '0') desc"){
			$("[name='freeSortTag6']").val('yeoncha')
		}
		if(ascDesc=='can_dispatch_date asc' || ascDesc=='can_dispatch_date desc'){
			$("[name='freeSortTag6']").val('can_dispatch_date')
		}
		if(ascDesc=='consultation_time asc' || ascDesc=='consultation_time desc'){
			$("[name='freeSortTag6']").val('consultation_time')
		}
		if(ascDesc=="(SELECT FYI2.dev_year_standard_date FROM FREE_YEAR_INFO FYI2 WHERE f.free_num = FYI2.free_num) asc" || ascDesc=="(SELECT FYI2.dev_year_standard_date FROM FREE_YEAR_INFO FYI2 WHERE f.free_num = FYI2.free_num) desc"){
			$("[name='freeSortTag6']").val('dev_year_standard_date')
		}
		search();
	}
	function sortSelect7(){
		var ascDesc = $("[name='freeSort7']").val();
			if(ascDesc=='fName asc' || ascDesc=='fName desc'){
				$("[name='freeSortTag7']").val('fName')
			}
			if(ascDesc=="TO_CHAR(sysdate, 'YYYY') - TO_CHAR(birth_year) asc" || ascDesc=="TO_CHAR(sysdate, 'YYYY') - TO_CHAR(birth_year) desc"){
				$("[name='freeSortTag7']").val('age')
			}
			if(ascDesc=="DECODE(highestLevel_edu,1,'고졸',2,'전문대졸',3,'일반대학사졸',4,'일반대석사졸','일반대박사졸') asc" || ascDesc=="DECODE(highestLevel_edu,1,'고졸',2,'전문대졸',3,'일반대학사졸',4,'일반대석사졸','일반대박사졸') desc"){
				$("[name='freeSortTag7']").val('highestLevel_edu')
			}
			if(ascDesc=="NVL((SELECT SUBSTR(fy.resume_dev_year, 1,2) FROM FREE_YEAR_INFO fy WHERE f.FREE_NUM = fy.FREE_NUM), '0') asc" || ascDesc=="NVL((SELECT SUBSTR(fy.resume_dev_year, 1,2) FROM FREE_YEAR_INFO fy WHERE f.FREE_NUM = fy.FREE_NUM), '0') desc"){
				$("[name='freeSortTag7']").val('yeoncha')
			}
			if(ascDesc=='can_dispatch_date asc' || ascDesc=='can_dispatch_date desc'){
				$("[name='freeSortTag7']").val('can_dispatch_date')
			}
			if(ascDesc=='consultation_time asc' || ascDesc=='consultation_time desc'){
				$("[name='freeSortTag7']").val('consultation_time')
			}
			if(ascDesc=="(SELECT FYI2.dev_year_standard_date FROM FREE_YEAR_INFO FYI2 WHERE f.free_num = FYI2.free_num) asc" || ascDesc=="(SELECT FYI2.dev_year_standard_date FROM FREE_YEAR_INFO FYI2 WHERE f.free_num = FYI2.free_num) desc"){
				$("[name='freeSortTag7']").val('dev_year_standard_date')
			}
			search();
	}


	// 비움 버튼
	function dateEmpty(e, type) {
		var getVal = $(e).siblings('input');

		if(type=='date' || type=='text') {
			getVal.val('');
		}
		if(type=='checkbox' || type=='radio') {
			getVal.prop('checked', false);
		}
		if(type=='number') {
			getVal.val('');
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
		var formObj = $("[name='deleteFreeInFo']")
		if( confirm("정말 삭제하시겠습니까?")==false ) { return; }
		ajax(
				"/deleteFreeInfo.do"
				,"post"
				,formObj
				,function( boardDelCnt ){
					
					if( boardDelCnt>=1 ){
						alert("프리랜서 정보가 삭제되었습니다.");
						closePopup();
						search();
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

function closePopup(){
	var getHead = $('.freelancerRegForm').find('header');
	
		getHead.text('프리랜서 개발자 상세 정보');
		$('.save').text('수정');
		$('.save').attr('onclick', 'alterInfo(this)');
		$('.popup').find('input').prop('checked', false);
		$('.popup').find('textarea').val('');
		$('.popup').hide();
}

function showPopup(free_num){
	$('.freelancerRegForm').find('input').css('pointer-events', 'none');
	$('.freelancerRegForm').find('textarea').css('pointer-events', 'none');
	$('.freelancerRegForm').find('select').css('pointer-events', 'none');
	$('.alterBtn').css('pointer-events', 'none');
	$('input[type=radio]').prop('checked', false);
	$(".popup_main").animate({ scrollTop: 0 }, "fast");
	$('.free_uid').val(free_num);
	$('.del_free_uid, .upd_free_uid').val(free_num.replace('F',''));

		ajax(
			"/searchFreeDevDetail.do"
			,"post"
			,$("[name='searchFreeDevDetailForm']")
			,function(json){
				var data = json.freelancerList[0];
				
			$('.freelancerRegForm').find('[name="fName"]').val(data.fName);
			$('.freelancerRegForm').find('.email').val(data.email);
			$('.freelancerRegForm').find('.phone').val(data.phone);
			$('.freelancerRegForm').find('.birth_year').val(data.birth_year);
			$('.freelancerRegForm').find('.graduate_date').val(data.graduate_date);
			$('.freelancerRegForm').find('[name="call_notice"]').val(data.call_notice);
			$('.freelancerRegForm').find('[name="etc_want"]').val(data.etc_want);
			$('.freelancerRegForm').find('[name="etc_opinion"]').val(data.etc_opinion);
			$('.freelancerRegForm').find('.can_dispatch_date').val(data.can_dispatch_date);
			$('.freelancerRegForm').find('.consultation_time ').val(data.consultation_time);
			$('.freelancerRegForm').find('.min_dev_cost').val(data.min_dev_cost);
	         $('.freelancerRegForm').find('.max_dev_cost').val(data.max_dev_cost);
			$('.freelancerRegForm').find('.min_operate_cost').val(data.min_operate_cost);
			$('.freelancerRegForm').find('.max_operate_cost').val(data.min_operate_cost);
			$('.freelancerRegForm').find('.dev_year_standard_date').val(data.dev_year_standard_date);

				if(data.how_dev_cost==1)  $('.freelancerRegForm').find('[name="how_dev_cost"]:nth-child(1)').prop('checked', true);
				if(data.how_dev_cost==2)  $('.freelancerRegForm').find('[name="how_dev_cost"]:nth-child(2)').prop('checked', true);
				if(data.how_operate_cost==1)  $('.freelancerRegForm').find('[name="how_operate_cost"]:nth-child(1)').prop('checked', true);
				if(data.how_operate_cost==2)  $('.freelancerRegForm').find('[name="how_operate_cost"]:nth-child(2)').prop('checked', true);
				if(data.dispatch_role==1) $('.freelancerRegForm').find('[name="dispatch_role_code"]:nth-of-type(1)').prop('checked', true);
				if(data.dispatch_role==2) $('.freelancerRegForm').find('[name="dispatch_role_code"]:nth-of-type(2)').prop('checked', true);
				if(data.dispatch_role==3) $('.freelancerRegForm').find('[name="dispatch_role_code"]:nth-of-type(3)').prop('checked', true);
				if(data.dispatch_role==4) $('.freelancerRegForm').find('[name="dispatch_role_code"]:nth-of-type(4)').prop('checked', true);
				if(data.dispatch_role==5) $('.freelancerRegForm').find('[name="dispatch_role_code"]:nth-of-type(5)').prop('checked', true);
				if(data.dispatch_role==6) $('.freelancerRegForm').find('[name="dispatch_role_code"]:nth-of-type(6)').prop('checked', true);
				if(data.dispatch_role==7) $('.freelancerRegForm').find('[name="dispatch_role_code"]:nth-of-type(7)').prop('checked', true);
				if(data.dispatch_role==8) $('.freelancerRegForm').find('[name="dispatch_role_code"]:nth-of-type(8)').prop('checked', true);
				if(data.job==1) $('.freelancerRegForm').find('[name="job"]:nth-of-type(1)').prop('checked', true);
				if(data.job==2) $('.freelancerRegForm').find('[name="job"]:nth-of-type(2)').prop('checked', true);
				if(data.job==3) $('.freelancerRegForm').find('[name="job"]:nth-of-type(3)').prop('checked', true);
				if(data.fix_dispatch_date==1) $('.freelancerRegForm').find('[name="fix_dispatch_date"]').prop('checked', true);
				if(data.gender==1)  $('.freelancerRegForm').find('.gender_m').prop('checked', true);
				if(data.gender==2)  $('.freelancerRegForm').find('.gender_w').prop('checked', true);
				if(data.have_notebook==1) $('.freelancerRegForm').find('[name="have_notebook"]').prop('checked', true);
				if(data.highestLevel_edu==1) $('.freelancerRegForm').find('#highestLevel_edu').val(1);
				if(data.highestLevel_edu==2) $('.freelancerRegForm').find('#highestLevel_edu').val(2);
				if(data.highestLevel_edu==3) $('.freelancerRegForm').find('#highestLevel_edu').val(3);
				if(data.highestLevel_edu==4) $('.freelancerRegForm').find('#highestLevel_edu').val(4);
				if(data.highestLevel_edu==5) $('.freelancerRegForm').find('#highestLevel_edu').val(5);
				if(data.abode==1) $('.freelancerRegForm').find('[name="abode"]').val(1);
				if(data.abode==2) $('.freelancerRegForm').find('[name="abode"]').val(2);
				if(data.abode==3) $('.freelancerRegForm').find('[name="abode"]').val(3);
				if(data.abode==4) $('.freelancerRegForm').find('[name="abode"]').val(4);
				if(data.abode==5)$('.freelancerRegForm').find('[name="abode"]').val(5);
				if(data.abode==6) $('.freelancerRegForm').find('[name="abode"]').val(6);
				if(data.abode==7)$('.freelancerRegForm').find('[name="abode"]').val(7);
				if(data.abode==8)$('.freelancerRegForm').find('[name="abode"]').val(8);
				if(data.abode==9) $('.freelancerRegForm').find('[name="abode"]').val(9);
				if(data.abode==10) $('.freelancerRegForm').find('[name="abode"]').val(10);

				if(data.is_black!=null) {
					var blacks = data.is_black.split(',');

				if(blacks[0]==1) $('.freelancerRegForm').find('[name="black_reason_name"]:nth-of-type(1)').prop('checked', true);
				if(blacks[0]==2) $('.freelancerRegForm').find('[name="black_reason_name"]:nth-of-type(2)').prop('checked', true);
				if(blacks[0]==3) $('.freelancerRegForm').find('[name="black_reason_name"]:nth-of-type(3)').prop('checked', true);
				if(blacks[0]==4) $('.freelancerRegForm').find('[name="black_reason_name"]:nth-of-type(4)').prop('checked', true);
				if(blacks[0]==5) $('.freelancerRegForm').find('[name="black_reason_name"]:nth-of-type(5)').prop('checked', true);
				if(blacks[0]==6) $('.freelancerRegForm').find('[name="black_reason_name"]:nth-of-type(6)').prop('checked', true);
				if(blacks[1]==2) $('.freelancerRegForm').find('[name="black_reason_name"]:nth-of-type(2)').prop('checked', true);
				if(blacks[1]==3) $('.freelancerRegForm').find('[name="black_reason_name"]:nth-of-type(3)').prop('checked', true);
				if(blacks[1]==4) $('.freelancerRegForm').find('[name="black_reason_name"]:nth-of-type(4)').prop('checked', true);
				if(blacks[1]==5) $('.freelancerRegForm').find('[name="black_reason_name"]:nth-of-type(5)').prop('checked', true);
				if(blacks[1]==6) $('.freelancerRegForm').find('[name="black_reason_name"]:nth-of-type(6)').prop('checked', true);
				if(blacks[2]==3) $('.freelancerRegForm').find('[name="black_reason_name"]:nth-of-type(3)').prop('checked', true);
				if(blacks[2]==4) $('.freelancerRegForm').find('[name="black_reason_name"]:nth-of-type(4)').prop('checked', true);
				if(blacks[2]==5) $('.freelancerRegForm').find('[name="black_reason_name"]:nth-of-type(5)').prop('checked', true);
				if(blacks[2]==6) $('.freelancerRegForm').find('[name="black_reason_name"]:nth-of-type(6)').prop('checked', true);
				if(blacks[3]==4) $('.freelancerRegForm').find('[name="black_reason_name"]:nth-of-type(4)').prop('checked', true);
				if(blacks[3]==5) $('.freelancerRegForm').find('[name="black_reason_name"]:nth-of-type(5)').prop('checked', true);
				if(blacks[3]==6) $('.freelancerRegForm').find('[name="black_reason_name"]:nth-of-type(6)').prop('checked', true);
				if(blacks[4]==5) $('.freelancerRegForm').find('[name="black_reason_name"]:nth-of-type(5)').prop('checked', true);
				if(blacks[4]==6) $('.freelancerRegForm').find('[name="black_reason_name"]:nth-of-type(6)').prop('checked', true);
				if(blacks[5]==6) $('.freelancerRegForm').find('[name="black_reason_name"]:nth-of-type(6)').prop('checked', true);
				}

				if(data.skill!=null) {
					var skills = data.skill.split(',');
					for(var i=0; i<skills.length; i++) {
					if(skills[i]==1) $('.freelancerRegForm').find('[name="skill_category_code"]:nth-of-type(1)').prop('checked', true); 
					if(skills[i]==2) $('.freelancerRegForm').find('[name="skill_category_code"]:nth-of-type(2)').prop('checked', true); 
					if(skills[i]==3) $('.freelancerRegForm').find('[name="skill_category_code"]:nth-of-type(3)').prop('checked', true); 
					if(skills[i]==4) $('.freelancerRegForm').find('[name="skill_category_code"]:nth-of-type(4)').prop('checked', true); 
					if(skills[i]==5) $('.freelancerRegForm').find('[name="skill_category_code"]:nth-of-type(5)').prop('checked', true); 
					if(skills[i]==6) $('.freelancerRegForm').find('[name="skill_category_code"]:nth-of-type(6)').prop('checked', true); 
					if(skills[i]==7) $('.freelancerRegForm').find('[name="skill_category_code"]:nth-of-type(7)').prop('checked', true); 
					if(skills[i]==8) $('.freelancerRegForm').find('[name="skill_category_code"]:nth-of-type(8)').prop('checked', true); 
					if(skills[i]==9) $('.freelancerRegForm').find('[name="skill_category_code"]:nth-of-type(9)').prop('checked', true); 
					if(skills[i]==10) $('.freelancerRegForm').find('[name="skill_category_code"]:nth-of-type(10)').prop('checked', true); 
					}
				}

				if(data.can_work_location!=null) {
					var locations = data.can_work_location.split(',');
					for(var i=0; i<locations.length; i++) {
					if(locations[i]==1) $('.freelancerRegForm').find('[name="free_can_work_location"]:nth-of-type(1)').prop('checked', true); 
					if(locations[i]==2) $('.freelancerRegForm').find('[name="free_can_work_location"]:nth-of-type(2)').prop('checked', true); 
					if(locations[i]==3) $('.freelancerRegForm').find('[name="free_can_work_location"]:nth-of-type(3)').prop('checked', true); 
					if(locations[i]==4) $('.freelancerRegForm').find('[name="free_can_work_location"]:nth-of-type(4)').prop('checked', true); 
					if(locations[i]==5) $('.freelancerRegForm').find('[name="free_can_work_location"]:nth-of-type(5)').prop('checked', true); 
					if(locations[i]==6) $('.freelancerRegForm').find('[name="free_can_work_location"]:nth-of-type(6)').prop('checked', true); 
					if(locations[i]==7) $('.freelancerRegForm').find('[name="free_can_work_location"]:nth-of-type(7)').prop('checked', true); 
					if(locations[i]==8) $('.freelancerRegForm').find('[name="free_can_work_location"]:nth-of-type(8)').prop('checked', true); 
					if(locations[i]==9) $('.freelancerRegForm').find('[name="free_can_work_location"]:nth-of-type(9)').prop('checked', true); 
					if(locations[i]==10) $('.freelancerRegForm').find('[name="free_can_work_location"]:nth-of-type(10)').prop('checked', true); 
					if(locations[i]==11) $('.freelancerRegForm').find('[name="free_can_work_location"]:nth-of-type(11)').prop('checked', true); 
					if(locations[i]==12) $('.freelancerRegForm').find('[name="free_can_work_location"]:nth-of-type(12)').prop('checked', true); 
					}
				}

				if(data.favorite_part!=null) {
					var favorites = data.favorite_part.split(',');
					for(var i=0; i<favorites.length; i++) {
					
					if(favorites[i]==1) $('.freelancerRegForm').find('[name="favorite_part_code"]:nth-of-type(1)').prop('checked', true); 
					if(favorites[i]==2) $('.freelancerRegForm').find('[name="favorite_part_code"]:nth-of-type(2)').prop('checked', true); 
					if(favorites[i]==3) $('.freelancerRegForm').find('[name="favorite_part_code"]:nth-of-type(3)').prop('checked', true); 
					if(favorites[i]==4) $('.freelancerRegForm').find('[name="favorite_part_code"]:nth-of-type(4)').prop('checked', true); 
					if(favorites[i]==5) $('.freelancerRegForm').find('[name="favorite_part_code"]:nth-of-type(5)').prop('checked', true); 
					if(favorites[i]==6) $('.freelancerRegForm').find('[name="favorite_part_code"]:nth-of-type(6)').prop('checked', true); 
					if(favorites[i]==7) $('.freelancerRegForm').find('[name="favorite_part_code"]:nth-of-type(7)').prop('checked', true); 
					if(favorites[i]==8) $('.freelancerRegForm').find('[name="favorite_part_code"]:nth-of-type(8)').prop('checked', true); 
					if(favorites[i]==9) $('.freelancerRegForm').find('[name="favorite_part_code"]:nth-of-type(9)').prop('checked', true); 
					if(favorites[i]==10) $('.freelancerRegForm').find('[name="favorite_part_code"]:nth-of-type(10)').prop('checked', true); 
					if(favorites[i]==11) $('.freelancerRegForm').find('[name="favorite_part_code"]:nth-of-type(11)').prop('checked', true); 
					if(favorites[i]==12) $('.freelancerRegForm').find('[name="favorite_part_code"]:nth-of-type(12)').prop('checked', true); 
					if(favorites[i]==13) $('.freelancerRegForm').find('[name="favorite_part_code"]:nth-of-type(13)').prop('checked', true); 
					if(favorites[i]==14) $('.freelancerRegForm').find('[name="favorite_part_code"]:nth-of-type(14)').prop('checked', true); 
					if(favorites[i]==15) $('.freelancerRegForm').find('[name="favorite_part_code"]:nth-of-type(15)').prop('checked', true); 
					}
				}

				if(data.license!=null) {
					var license = data.license.split(',');

					if(license[0]==1) $('.license_code:nth-of-type(1)').prop('checked', true);
					if(license[1]==2) $('.license_code:nth-of-type(2)').prop('checked', true);
				}

				if(data.black!=null) {
					var blacks = data.black.split(',');
					for(var i=0; i<license.length; i++) {
					if(blacks[i]==1) $('.freelancerRegForm').find('[name="black_reason_name"]:nth-child(1)').prop('checked', true); 
					if(blacks[i]==2) $('.freelancerRegForm').find('[name="black_reason_name"]:nth-child(2)').prop('checked', true); 
					if(blacks[i]==3) $('.freelancerRegForm').find('[name="black_reason_name"]:nth-child(3)').prop('checked', true); 
					if(blacks[i]==4) $('.freelancerRegForm').find('[name="black_reason_name"]:nth-child(4)').prop('checked', true); 
					if(blacks[i]==5) $('.freelancerRegForm').find('[name="black_reason_name"]:nth-child(5)').prop('checked', true); 
					if(blacks[i]==6) $('.freelancerRegForm').find('[name="black_reason_name"]:nth-child(6)').prop('checked', true); 
					}
				}

				$('.freelancerRegForm').find('.resume_dev_year').val(data.yeoncha.substring(0, 2));
				$('.freelancerRegForm').find('.resume_dev_month').val(data.yeoncha.substring(2,4));
				if(data.calc_yeoncha.substring(0,1)=='0') data.calc_yeoncha = data.calc_yeoncha.replace(0, '');
				$('.freelancerRegForm').find('[name="yeoncha"]').html(data.calc_yeoncha);
			} 
		);

	$('.popup').show();	
}

function alterInfo(e) {
	var getHead = $('.freelancerRegForm').find('header'),
			value = $('.alter_name').val();
	
	$(".popup_main").animate({ scrollTop: 0 }, "fast");
	getHead.text('프리랜서 개발자 정보 수정');
	$('.freelancerRegForm').find('input').css('pointer-events', 'all');
	$('.freelancerRegForm').find('textarea').css('pointer-events', 'all');
	$('.freelancerRegForm').find('select').css('pointer-events', 'all');
	$('.alterBtn').css('pointer-events', 'all');
	$('.alter_name').focus();
	$('.alter_name').val('');
	$('.alter_name').val(value);
	$(e).text('완료');
	$(e).attr('onclick', 'update()');
}

function update() {
		var formObj = $("[name='freelancerRegForm']");	
		var checkVal_fName = formObj.find("[name='fName']");									
		var checkObj_gender = formObj.find("[name='gender']");								
		var checkObj_email = formObj.find("[name='email']");									
		var checkObj_phone = formObj.find("[name='phone']");									
		var checkObj_birth_year =formObj.find("[name='birth_year']");							
		var checkObj_highestLevel_edu = formObj.find("[name='highestLevel_edu']");				
		var checkObj_graduate_date = formObj.find("[name='graduate_date']");				
		var checkObj_resume_dev_year = formObj.find("[name='resume_dev_year']");				
		var checkObj_resume_dev_month = formObj.find("[name='resume_dev_month']");			
		var checkObj_dev_year_standard_date = formObj.find("[name='dev_year_standard_date']");	
		var checkObj_consultation_time = formObj.find("[name='consultation_time']");	
		var checkObj_job = formObj.find("[name='job']");							
		var checkObj_skill = formObj.find("[name='skill_category_code']:checked");			
		var checkObj_role = formObj.find("[name='dispatch_role_code']");						
		var checkObj_can_date = formObj.find("[name='can_dispatch_date']");					
		var checkObj_min_dev_cost = formObj.find("[name='min_dev_cost']");	
		var checkObj_max_dev_cost = formObj.find("[name='max_dev_cost']");					
		var checkObj_min_operate_cost = formObj.find("[name='min_operate_cost']");			
		var checkObj_max_operate_cost = formObj.find("[name='max_operate_cost']");			
		var checkObj_work_location = formObj.find("[name='free_can_work_location']:checked");	
		var checkObj_favorite_part =formObj.find("[name='favorite_part_code']:checked");		
		var checkObj_abode = formObj.find("[name='abode']");							
				
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

				if(checkVal(
						checkObj_email
						, "이메일 형식에 맞지 않습니다. 재입력 바랍니다."
						, /^([0-9a-zA-Z_-]+)@([0-9a-zA-Z_-]+)(\.[0-9a-zA-Z_-]+){1,2}$/
					)==false){
						checkObj_email.focus()
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

				if(checkObj_graduate_date.val()==""){
					alert("졸업년도는 필수 선택사항입니다.")
					checkObj_graduate_date.focus()
					return;
				}

				if(checkObj_resume_dev_year.val()==""){
					alert("이력서 상 개발년차(년)는 항목은 필수 선택사항입니다.")
					checkObj_resume_dev_year.focus()
						return;
				}
				
				if(checkObj_resume_dev_month.val()==""){
					alert("이력서 상 개발년차(개월)는 항목은 필수 선택사항입니다.")
					checkObj_resume_dev_month.focus()
						return;
				}

				if(checkObj_dev_year_standard_date.val()==""){
					alert("이력서 상 개발년차 이력 확인일은 필수 입력 사항입니다.")
					checkObj_dev_year_standard_date.focus()
						return;
				}
			
				if(checkObj_skill.length<1) {
					alert("스킬 분야는 필수 체크사항입니다.")	;
					$('.first_skill').focus();
					$('[name="skill_category_code:first-child"]').focus();
					return;
				}

					if(checkObj_can_date.val()==null || checkObj_can_date.val()=='') {
					alert("파견가능일은 필수 체크사항입니다.")	;
					checkObj_can_date.focus();
					return;
				}

				if(checkObj_min_dev_cost.val()==""&&checkObj_max_dev_cost.val()==""
						&&checkObj_min_operate_cost.val()==""&&checkObj_max_operate_cost.val()==""){
					alert("개발단가와 운영단가 중 반드시 하나는 입력해야합니다.");
					if(checkObj_min_dev_cost.val()==""&&checkObj_max_dev_cost.val()=="") checkObj_min_dev_cost.focus();
					else {checkObj_min_operate_cost.focus()}
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
							alert("최소 개발 단가는 최대 개발 단가를 초과할 수 없습니다.")
							return;
					}
				}
				if(checkObj_min_operate_cost.val()!=""||checkObj_max_operate_cost.val()!=""){
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
							alert("최소 운영 단가는 최대 운영 단가를 초과할 수 없습니다.")
							return;
					}
				}
				
				if(checkObj_work_location.length<1) {
					alert("근무 가능 지역은 필수 체크사항입니다.")	;
					$('.first_loc').focus();
					return;
				}
				
				if(checkObj_favorite_part.length<1) {
					alert("선호 분야는 필수 체크사항입니다.")	;
					$('.first_part').focus();
					return;
				}
				
				if(checkVal(
						checkObj_abode
						,"거주지는 필수 선택사항입니다."
						,/^[^ ]{1}$/
					)==false){
						checkObj_abode.focus();
						return;
				}

		ajax(
				"/updateFreeInfo.do"
				,"post"
				,formObj
				,function( boardDelCnt ){
					if( boardDelCnt>=1 ){
						alert('프리랜서 정보가 수정되었습니다.');
						closePopup();
						search();
					} else alert("WAS 접속 실패입니다. 관리자에게 문의 바랍니다.");
				}
		);
}

		function pageNoClick(
					clickPageNo      
		){
			var formObj=$("[name='searchFreeDevForm']");
			formObj.find("[name='selectPageNo']").val(clickPageNo);
			search();
		}

		function search(){
			var formObj = $("[name='searchFreeDevForm']");                             
				var checkObj_min_can_dispatch_date = $("[name='min_can_dispatch_date']");        
				var checkObj_max_can_dispatch_date = $("[name='max_can_dispatch_date']");        
				var checkObj_min_imagine_dev_year = $("[name='min_imagine_dev_year']");           
				var checkObj_max_imagine_dev_year = $("[name='max_imagine_dev_year']");            
				var checkObj_min_consultation_time = $("[name='min_consultation_time']");         
				var checkObj_max_consultation_time = $("[name='max_consultation_time']");        
				var checkObj_ageS = $("[name='ageS']");                                    
				var checkObj_ageE = $("[name='ageE']");                                    
				var checkObj_min_dev_year_standard_date = $("[name='min_dev_year_standard_date']");  
				var checkObj_max_dev_year_standard_date = $("[name='max_dev_year_standard_date']");  
				var checkObj_keywordS = $("[name='keywordS']");                            
				var checkObj_keywordE = $("[name='keywordE']");                             
				var checkObj_min_graduate_year = $("[name='min_graduate_year']");                             
				var checkObj_max_graduate_year = $("[name='max_graduate_year']");                            

				if(checkObj_min_can_dispatch_date.val()=="" && checkObj_max_can_dispatch_date.val()!=""){
						alert("최소 파견 가능일을 설정해주세요.")
					return;
				}
				else{
					if(checkObj_min_can_dispatch_date.val()>checkObj_max_can_dispatch_date.val()&& checkObj_max_can_dispatch_date.val()!=""){
							alert("최소 파견 가능일은 최대 파견 가능일을 넘을 수 없습니다.")
						return;
						}
				}
				
				if(checkObj_min_imagine_dev_year.val()=="" && checkObj_max_imagine_dev_year.val()!=""){
						alert("최소 가상 개발 년차를 설정해주세요.")
					return;
				}
				else{
					if(checkObj_min_imagine_dev_year.val()>checkObj_max_imagine_dev_year.val()&& checkObj_max_imagine_dev_year.val()!=""){
							alert("최소 가상 개발 년차는 최대 가상 개발 년차를 넘을 수 없습니다.")
						return;
					}
				}
				
				if(checkObj_min_consultation_time.val()=="" && checkObj_max_consultation_time.val()!=""){
						alert("최소 전화 상담일을 설정해주세요.")
					return;
				}
				else{
					if(checkObj_min_consultation_time.val()>checkObj_max_consultation_time.val()&& checkObj_max_consultation_time.val()!=""){
						alert("최소 전화 상담일은 최대 전화 상담일을 넘을 수 없습니다.")
						return;
					}	
				}
				
				if(checkObj_ageS.val()=="" && checkObj_ageE.val()!=""){
						alert("최소 나이를 설정해주세요.")
					return;
				}
				else{
					if(checkObj_ageS.val()>checkObj_ageE.val()&& checkObj_ageE.val()!=""	){
							alert("최소 나이는 최대 나이를 넘을 수 없습니다.")
						return;
					}
				}
				
				if(checkObj_min_dev_year_standard_date.val()=="" && checkObj_max_dev_year_standard_date.val()!=""){
						alert("최소 이력 확인일을 설정해주세요.")
					return;
				}
				else{
					if(checkObj_min_dev_year_standard_date.val()>checkObj_max_dev_year_standard_date.val()&& checkObj_max_dev_year_standard_date.val()!=""){
							alert("최소 이력 확인일은 최대 이력 확인일을 넘을 수 없습니다.")
						return;
					}
				}
				
				if(checkObj_min_graduate_year.val()=="" && checkObj_max_graduate_year.val()!=""){
						alert("최소 졸업 년도를 설정해주세요.")
					return;
				}
				else{
					if(checkObj_min_graduate_year.val()>checkObj_max_graduate_year.val()&& checkObj_max_graduate_year.val()!=""){
							alert("최소 졸업 년도는 최대 졸업 년도를 넘을 수 없습니다.")
						return;
					}
				}
				
				
				if(checkObj_keywordS.val()!=""){
						var a = checkObj_keywordS.val().trim();
						checkObj_keywordS.val(a);
				}

				if(checkObj_keywordE.val()!=""){
						var a = checkObj_keywordE.val().trim();
						checkObj_keywordE.val(a);
				}
			ajax(
						"/searchFreeDev.do"
						,"post"
						,$("[name='searchFreeDevForm']")
						,function(responseHtml){
							
								var obj = $(responseHtml);
								var sort = obj.find(".sort").html();
								var searchResultCnt = obj.find(".searchResultCnt").html();
								var searchResult = obj.find(".searchResult");
								var pageNos = obj.find(".pageNos").html();
								var ascDesc1 =$("[name='freeSort1']").val();
								var ascDesc2 =$("[name='freeSort2']").val();
								var ascDesc3 =$("[name='freeSort3']").val();
								var ascDesc4 =$("[name='freeSort4']").val();
								var ascDesc5 =$("[name='freeSort5']").val();
								var ascDesc6 =$("[name='freeSort6']").val();
								var ascDesc7 =$("[name='freeSort7']").val();
								$(".sort").html(sort);
								var html = 
						'<div class="isEmpty"><i class="fa fa-search" aria-hidden="true"></i>검색 결과가 없습니다.</div>';

						$(".searchResultCnt").html(searchResultCnt);
						$(".searchResult").html(searchResult);
						$(".pageNos").html(pageNos);
						$('.pageNos').show();
						$("[name='freeSort1']").val(ascDesc1);
						$("[name='freeSort2']").val(ascDesc2);
						$("[name='freeSort3']").val(ascDesc3);
						$("[name='freeSort4']").val(ascDesc4);
						$("[name='freeSort5']").val(ascDesc5);
						$("[name='freeSort6']").val(ascDesc6);
						$("[name='freeSort7']").val(ascDesc7);
								

						if($('.impect').text() == 0 || $('.impect').text() == '0') {
							$(".searchResult").html( html );
							$('.pageNos').hide();
						}
					}
			);
		}


		</script>
		<body>
				<form name="freelancerSearch" class="header">
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

			<div onscroll="checkScroll(this)">
				<form name="searchFreeDevForm" class="boardForm">
					<header>
						<div>프리랜서 개발자 검색</div>
						<small>개발자 검색 시 <small>최소치</small> 입력과  <small>최대치</small> 입력에 유의하여 검색해 주세요.</small>
					</header>
							<div class="search_bar_box">
								<tr>
									<td>
										<input type="text" name="keywordS" maxlength="30">
										<select name="orand">
													<option value="or">or
													<option value="and">and
										</select>
										<input type="text" name="keywordE" maxlength="30">
										<input onclick="dateEmpty(this, 'text')" type="button" name="grad_reset" value="비움">
										<input type="button" onClick="search()" name="Search" class="search" value="검색">
									</td>
								</tr>
								<div class="button_box">
									<input type="button" onClick="reSearch4()"  name="reSearch" class="desc_btn" value="초기화 후 전부검색">
									<input type="button" name="freeSearch" class="freeSearch desc_btn"  onclick="location.replace('/registFreeDev.do')" value="[프리랜서] 입력">
									<span class='filter' onclick="showDesc(this)"><i class="fa fa-angle-down" aria-hidden="true"></i></span>
								</div>
							</div>
							<div class="desc_box">
						<div>
								<tr>
									<div class="title">화이트/블랙 개발자</div>
											<td>
														<input type="checkbox" name="is_black" value="1">화이트개발자
														<input type="checkbox" name="is_black" value="2">블랙개발자
														<input onclick="dateEmpty(this, 'checkbox')" type="button" name="is_black_reset" value="비움">
											</td>
								</tr>
						</div>
						<div>
							<div class="title">스킬분야</div>
								<td>
											<input type="checkbox" name="skill_category_code" value="1">JAVA/JSP
											<input type="checkbox" name="skill_category_code" value="2">.NET
											<input type="checkbox" name="skill_category_code" value="3">PHP
											<input type="checkbox" name="skill_category_code" value="4">ASP
											<input type="checkbox" name="skill_category_code" value="5">ABAP
											<input type="checkbox" name="skill_category_code" value="6">Delphi
											<input type="checkbox" name="skill_category_code" value="7">PB
											<input type="checkbox" name="skill_category_code" value="8">VC++
											<input type="checkbox" name="skill_category_code" value="9">웹디
											<input type="checkbox" name="skill_category_code" value="10">기타
											&nbsp;
											<input onclick="dateEmpty(this, 'checkbox')" type="button" name="sk_reset" value="비움">
								</td>
						</div>
						<div>
							<tr>
										<div class="title" >파견가능일 (최소치만 검색 가능)</div>
													<td>
																<input type="date" name="min_can_dispatch_date">
																~
																<input type="date" name="max_can_dispatch_date">
																<input onclick="dateEmpty(this, 'date')" type="button" name="dp_reset" value="비움">
													</td>
							</tr>                  
						</div>
						<div>
									<tr>
												<div class="title" >가상개발년차</div>
															<td>
																		<select name="min_imagine_dev_year">
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
								<select name="max_imagine_dev_year">
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
								<input onclick="dateEmpty(this, 'select')" type="button" name="lic_reset" value="비움">
		
															</td>
									</tr>  
								</div>
								<div>
									<tr>
												<div class="title">자격증</div>
															<td>
																		<input type="checkbox" name="license_code" value="1">정보처리기사
																		<input type="checkbox" name="license_code" value="2">정보처리산업기사
																		<input onclick="dateEmpty(this, 'checkbox')" type="button" name="lic_reset" value="비움">
															</td>
									</tr>  
								</div>
								<div>
									<tr>
												<div class="title">역할</div>
															<td>
																		<input type="checkbox" name="dispatch_role_code" value="1">개발
																		<input type="checkbox" name="dispatch_role_code" value="2">운영
																		<input type="checkbox" name="dispatch_role_code" value="3">분석설계
																		<input type="checkbox" name="dispatch_role_code" value="4">PL
																		<input type="checkbox" name="dispatch_role_code" value="5">PM
																		<input type="checkbox" name="dispatch_role_code" value="6">웹디
																		<input onclick="dateEmpty(this, 'checkbox')" type="button" name="role_reset" value="비움">
															</td>
									</tr>  
								</div>
								<div>
									<tr>
												<div class="title" >최종학력</div>
															<td>
																		<input type="checkbox" name="highestLevel_edu" value="1">고졸
																		<input type="checkbox" name="highestLevel_edu" value="2">전문대졸
																		<input type="checkbox" name="highestLevel_edu" value="3">일반대학사졸
																		<input type="checkbox" name="highestLevel_edu" value="4">일반대석사졸
																		<input type="checkbox" name="highestLevel_edu" value="5">일반대박사졸
																		<input onclick="dateEmpty(this, 'checkbox')" type="button" name="grad_reset" value="비움">
															</td>
									</tr>
								</div>
								<div>
									<tr>
													<div class="title" >전화상담일</div>
												<td>
															<input type="date" name="min_consultation_time" >
															~
															<input type="date" name="max_consultation_time" >
															<input onclick="dateEmpty(this, 'date')" type="button" name="tel_reset" value="비움">
												</td>
									</tr>
								</div>
								<div>
									<tr>
												<div class="title" >나이</div>
												<td>
															<input type="number" name="ageS" onkeydown="checkMax(this, 2)"> 살
															~
															<input type="number" name="ageE" onkeydown="checkMax(this, 2)"> 살
															<input onclick="dateEmpty(this, 'number')" type="button" name="age_reset" value="비움">
						
												</td>
									</tr>
								</div>
							<div>
								<tr>
									<div class="title" >성별</div>
									<td>
										<input type="checkbox" name="gender" value="1">남
										<input type="checkbox" name="gender" value="2">여
									</td>
								</tr>  
							</div>
								<div>
									<tr>
										<div class="title" >졸업년도</div>
										<td>
											<select name="min_graduate_year">
											<option value=""></option>
											<c:forEach var="nYear" begin="1970" end="2023">
												<option value="${nYear}">${nYear}</option>
											</c:forEach>
										</select>
											년~
										<select name="max_graduate_year">
											<option value=""></option>
											<c:forEach var="nYear" begin="1970" end="2023">
														<option value="${nYear}">${nYear}</option>
											</c:forEach>
										</select> 년
										<input onclick="dateEmpty(this, 'select')" type="button" name="gradu_year_reset" value="비움">
										</td>
									</tr>  
								</div>
								<div>
									<tr>
										<div class="title" >이력확인일</div>
										<td>
											<input type="date" name="min_dev_year_standard_date">
											~
											<input type="date" name="max_dev_year_standard_date">
											<input onclick="dateEmpty(this, 'date')" type="button" name="his_confirm_reset" value="비움">
										</td>
									</tr>
								</div>
								<div>
									<tr>
										<div class="title" >현재직업</div>
										<td>
											<input type="checkbox" name="job" value="1">프리랜서개발자
											<input type="checkbox" name="job" value="2">정규직개발자
											<input type="checkbox" name="job" value="3">기타직업
											<input onclick="dateEmpty(this, 'checkbox')" type="button" name="grad_reset" value="비움">
										</td>
									</tr>  
								</div>
					</div>
					<input type="hidden" name="selectPageNo" value="1">
					<input type="hidden" name="freeSort_fName">
					<input type="hidden" name="freeSort_age">
					<input type="hidden" name="freeSort_level_edu">
					<input type="hidden" name="freeSort_yeoncha">
					<input type="hidden" name="freeSort_can_dispatch_date">
					<input type="hidden" name="freeSort_consultation_date">
					<input type="hidden" name="freeSort_dev_year_standard_date">
							<table></table>
										<section>
											<section class="count_desc">
													<section class="searchResultCnt">
														검색개수 : <span class="accent impect">${freelancerListMap.freelancerListCnt}</span> 
														개
													</section>
												
													<select name="rowCntPerPage" onChange="search()" class="rownum">
																<option value="10">10 
																<option value="15">15 
																<option value="20">20 
													</select>&nbsp;행 보기
											</section>
										</section>
							</table>
					
				<input type="hidden" name="freeSortTag1">
				<input type="hidden" name="freeSortTag2">
				<input type="hidden" name="freeSortTag3">
				<input type="hidden" name="freeSortTag4">
				<input type="hidden" name="freeSortTag5">
				<input type="hidden" name="freeSortTag6">
				<input type="hidden" name="freeSortTag7">
			<div class="sort">	
			<div class="title">정렬기준</div>
			<select name="freeSort1" onchange="sortSelect1()">
				<option></option>
				<option value="fName asc">이름 오름차순</option>
				<option value="fName desc">이름 내림차순</option>
				<option value="TO_CHAR(sysdate, 'YYYY') - TO_CHAR(birth_year) asc">나이 오름차순</option>
				<option value="TO_CHAR(sysdate, 'YYYY') - TO_CHAR(birth_year) desc">나이 내림차순</option>
				<option value="DECODE(highestLevel_edu,1,'고졸',2,'전문대졸',3,'일반대학사졸',4,'일반대석사졸','일반대박사졸') asc">학력 오름차순</option>
				<option value="DECODE(highestLevel_edu,1,'고졸',2,'전문대졸',3,'일반대학사졸',4,'일반대석사졸','일반대박사졸') desc">학력 내림차순</option>
				<option value="NVL((SELECT SUBSTR(fy.resume_dev_year, 1,2) FROM FREE_YEAR_INFO fy WHERE f.FREE_NUM = fy.FREE_NUM), '0') asc">가상개발년차 오름차순</option>
				<option value="NVL((SELECT SUBSTR(fy.resume_dev_year, 1,2) FROM FREE_YEAR_INFO fy WHERE f.FREE_NUM = fy.FREE_NUM), '0') desc">가상개발년차 내림차순</option>				
				<option value="can_dispatch_date asc">파견가능일 오름차순</option>
				<option value="can_dispatch_date desc">파견가능일 내림차순</option>
				<option value="consultation_time asc">전화상담일 오름차순</option>
				<option value="consultation_time desc">전화상담일 내림차순</option>
				<option value="(SELECT FYI2.dev_year_standard_date FROM FREE_YEAR_INFO FYI2 WHERE f.free_num = FYI2.free_num) asc">이력서확인일 오름차순</option>
				<option value="(SELECT FYI2.dev_year_standard_date FROM FREE_YEAR_INFO FYI2 WHERE f.free_num = FYI2.free_num) desc">이력서확인일 내림차순</option>
			</select>
			<select name="freeSort2" onchange="sortSelect2()">
				<option></option>
				<c:if test="${param.freeSortTag1 != 'fName'}">
					<option value="fName asc">이름 오름차순</option>
					<option value="fName desc">이름 내림차순</option>
				</c:if>
				<c:if test="${param.freeSortTag1 != 'age'}">
					<option value="TO_CHAR(sysdate, 'YYYY') - TO_CHAR(birth_year) asc">나이 오름차순</option>
					<option value="TO_CHAR(sysdate, 'YYYY') - TO_CHAR(birth_year) desc">나이 내림차순</option>
				</c:if>
				
				<c:if test="${param.freeSortTag1 != 'highestLevel_edu'}">
					<option value="DECODE(highestLevel_edu,1,'고졸',2,'전문대졸',3,'일반대학사졸',4,'일반대석사졸','일반대박사졸') asc">학력 오름차순</option>
					<option value="DECODE(highestLevel_edu,1,'고졸',2,'전문대졸',3,'일반대학사졸',4,'일반대석사졸','일반대박사졸') desc">학력 내림차순</option>
				</c:if>
				<c:if test="${param.freeSortTag1 != 'yeoncha'}">
					<option value="NVL((SELECT SUBSTR(fy.resume_dev_year, 1,2) FROM FREE_YEAR_INFO fy WHERE f.FREE_NUM = fy.FREE_NUM), '0') asc">가상개발년차 오름차순</option>
					<option value="NVL((SELECT SUBSTR(fy.resume_dev_year, 1,2) FROM FREE_YEAR_INFO fy WHERE f.FREE_NUM = fy.FREE_NUM), '0') desc">가상개발년차 내림차순</option>				
				</c:if>
				<c:if test="${param.freeSortTag1 != 'can_dispatch_date'}">
					<option value="can_dispatch_date asc">파견가능일 오름차순</option>
					<option value="can_dispatch_date desc">파견가능일 내림차순</option>
				</c:if>
				<c:if test="${param.freeSortTag1 != 'consultation_time'}">
					<option value="consultation_time asc">전화상담일 오름차순</option>
					<option value="consultation_time desc">전화상담일 내림차순</option>
				</c:if>
				<c:if test="${param.freeSortTag1 != 'dev_year_standard_date'}">
					<option value="(SELECT FYI2.dev_year_standard_date FROM FREE_YEAR_INFO FYI2 WHERE f.free_num = FYI2.free_num) asc">이력서확인일 오름차순</option>
					<option value="(SELECT FYI2.dev_year_standard_date FROM FREE_YEAR_INFO FYI2 WHERE f.free_num = FYI2.free_num) desc">이력서확인일 내림차순</option>
				</c:if>
			</select>
			<select name="freeSort3" onchange="sortSelect3()">
				<option></option>
				<c:if test="${param.freeSortTag1 != 'fName' and param.freeSortTag2 != 'fName'}">
					<option value="fName asc">이름 오름차순</option>
					<option value="fName desc">이름 내림차순</option>
				</c:if>
				<c:if test="${param.freeSortTag1 != 'age' and param.freeSortTag2 != 'age'}">
					<option value="TO_CHAR(sysdate, 'YYYY') - TO_CHAR(birth_year) asc">나이 오름차순</option>
					<option value="TO_CHAR(sysdate, 'YYYY') - TO_CHAR(birth_year) desc">나이 내림차순</option>
				</c:if>
				
				<c:if test="${param.freeSortTag1 != 'highestLevel_edu' and param.freeSortTag2 != 'highestLevel_edu'}">
					<option value="DECODE(highestLevel_edu,1,'고졸',2,'전문대졸',3,'일반대학사졸',4,'일반대석사졸','일반대박사졸') asc">학력 오름차순</option>
					<option value="DECODE(highestLevel_edu,1,'고졸',2,'전문대졸',3,'일반대학사졸',4,'일반대석사졸','일반대박사졸') desc">학력 내림차순</option>
				</c:if>
				<c:if test="${param.freeSortTag1 != 'yeoncha' and param.freeSortTag2 != 'yeoncha'}">
					<option value="NVL((SELECT SUBSTR(fy.resume_dev_year, 1,2) FROM FREE_YEAR_INFO fy WHERE f.FREE_NUM = fy.FREE_NUM), '0') asc">가상개발년차 오름차순</option>
					<option value="NVL((SELECT SUBSTR(fy.resume_dev_year, 1,2) FROM FREE_YEAR_INFO fy WHERE f.FREE_NUM = fy.FREE_NUM), '0') desc">가상개발년차 내림차순</option>				
				</c:if>
				<c:if test="${param.freeSortTag1 != 'can_dispatch_date' and param.freeSortTag2 != 'can_dispatch_date'}">
					<option value="can_dispatch_date asc">파견가능일 오름차순</option>
					<option value="can_dispatch_date desc">파견가능일 내림차순</option>
				</c:if>
				<c:if test="${param.freeSortTag1 != 'consultation_time' and param.freeSortTag2 != 'consultation_time'}">
					<option value="consultation_time asc">전화상담일 오름차순</option>
					<option value="consultation_time desc">전화상담일 내림차순</option>
				</c:if>
				<c:if test="${param.freeSortTag1 != 'dev_year_standard_date' and param.freeSortTag2 != 'dev_year_standard_date'}">
					<option value="(SELECT FYI2.dev_year_standard_date FROM FREE_YEAR_INFO FYI2 WHERE f.free_num = FYI2.free_num) asc">이력서확인일 오름차순</option>
					<option value="(SELECT FYI2.dev_year_standard_date FROM FREE_YEAR_INFO FYI2 WHERE f.free_num = FYI2.free_num) desc">이력서확인일 내림차순</option>
				</c:if>
			</select>
			<select name="freeSort4" onchange="sortSelect4()">
				<option></option>
				<c:if test="${param.freeSortTag1 != 'fName' and param.freeSortTag2 != 'fName' and param.freeSortTag3 != 'fName'}">
					<option value="fName asc">이름 오름차순</option>
					<option value="fName desc">이름 내림차순</option>
				</c:if>
				<c:if test="${param.freeSortTag1 != 'age' and param.freeSortTag2 != 'age' and param.freeSortTag3 != 'age'}">
					<option value="TO_CHAR(sysdate, 'YYYY') - TO_CHAR(birth_year) asc">나이 오름차순</option>
					<option value="TO_CHAR(sysdate, 'YYYY') - TO_CHAR(birth_year) desc">나이 내림차순</option>
				</c:if>
				
				<c:if test="${param.freeSortTag1 != 'highestLevel_edu' and param.freeSortTag2 != 'highestLevel_edu' and param.freeSortTag3 != 'highestLevel_edu'}">
					<option value="DECODE(highestLevel_edu,1,'고졸',2,'전문대졸',3,'일반대학사졸',4,'일반대석사졸','일반대박사졸') asc">학력 오름차순</option>
					<option value="DECODE(highestLevel_edu,1,'고졸',2,'전문대졸',3,'일반대학사졸',4,'일반대석사졸','일반대박사졸') desc">학력 내림차순</option>
				</c:if>
				<c:if test="${param.freeSortTag1 != 'yeoncha' and param.freeSortTag2 != 'yeoncha' and param.freeSortTag3 !='yeoncha'}">
					<option value="NVL((SELECT SUBSTR(fy.resume_dev_year, 1,2) FROM FREE_YEAR_INFO fy WHERE f.FREE_NUM = fy.FREE_NUM), '0') asc">가상개발년차 오름차순</option>
					<option value="NVL((SELECT SUBSTR(fy.resume_dev_year, 1,2) FROM FREE_YEAR_INFO fy WHERE f.FREE_NUM = fy.FREE_NUM), '0') desc">가상개발년차 내림차순</option>				
				</c:if>
				<c:if test="${param.freeSortTag1 != 'can_dispatch_date' and param.freeSortTag2 != 'can_dispatch_date' and param.freeSortTag3 != 'can_dispatch_date'}">
					<option value="can_dispatch_date asc">파견가능일 오름차순</option>
					<option value="can_dispatch_date desc">파견가능일 내림차순</option>
				</c:if>
				<c:if test="${param.freeSortTag1 != 'consultation_time' and param.freeSortTag2 != 'consultation_time' and param.freeSortTag3 != 'consultation_time'}">
					<option value="consultation_time asc">전화상담일 오름차순</option>
					<option value="consultation_time desc">전화상담일 내림차순</option>
				</c:if>
				<c:if test="${param.freeSortTag1 != 'dev_year_standard_date' and param.freeSortTag2 != 'dev_year_standard_date' and param.freeSortTag3 != 'dev_year_standard_date'}">
					<option value="(SELECT FYI2.dev_year_standard_date FROM FREE_YEAR_INFO FYI2 WHERE f.free_num = FYI2.free_num) asc">이력서확인일 오름차순</option>
					<option value="(SELECT FYI2.dev_year_standard_date FROM FREE_YEAR_INFO FYI2 WHERE f.free_num = FYI2.free_num) desc">이력서확인일 내림차순</option>
				</c:if>
			</select>
			<select name="freeSort5" onchange="sortSelect5()">
			<option></option>
				<c:if test="${param.freeSortTag1 != 'fName' and param.freeSortTag2 != 'fName' and param.freeSortTag3 != 'fName' and param.freeSortTag4 != 'fName'}">
					<option value="fName asc">이름 오름차순</option>
					<option value="fName desc">이름 내림차순</option>
				</c:if>
				<c:if test="${param.freeSortTag1 != 'age' and param.freeSortTag2 != 'age' and param.freeSortTag3 != 'age' and param.freeSortTag4 != 'age'}">
					<option value="TO_CHAR(sysdate, 'YYYY') - TO_CHAR(birth_year) asc">나이 오름차순</option>
					<option value="TO_CHAR(sysdate, 'YYYY') - TO_CHAR(birth_year) desc">나이 내림차순</option>
				</c:if>
				
				<c:if test="${param.freeSortTag1 != 'highestLevel_edu' and param.freeSortTag2 != 'highestLevel_edu' and param.freeSortTag3 != 'highestLevel_edu' and param.freeSortTag4 != 'highestLevel_edu'}">
					<option value="DECODE(highestLevel_edu,1,'고졸',2,'전문대졸',3,'일반대학사졸',4,'일반대석사졸','일반대박사졸') asc">학력 오름차순</option>
					<option value="DECODE(highestLevel_edu,1,'고졸',2,'전문대졸',3,'일반대학사졸',4,'일반대석사졸','일반대박사졸') desc">학력 내림차순</option>
				</c:if>
				<c:if test="${param.freeSortTag1 != 'yeoncha' and param.freeSortTag2 != 'yeoncha' and param.freeSortTag3 !='yeoncha' and param.freeSortTag4 != 'yeoncha'}">
					<option value="NVL((SELECT SUBSTR(fy.resume_dev_year, 1,2) FROM FREE_YEAR_INFO fy WHERE f.FREE_NUM = fy.FREE_NUM), '0') asc">가상개발년차 오름차순</option>
					<option value="NVL((SELECT SUBSTR(fy.resume_dev_year, 1,2) FROM FREE_YEAR_INFO fy WHERE f.FREE_NUM = fy.FREE_NUM), '0') desc">가상개발년차 내림차순</option>				
				</c:if>
				<c:if test="${param.freeSortTag1 != 'can_dispatch_date' and param.freeSortTag2 != 'can_dispatch_date' and param.freeSortTag3 != 'can_dispatch_date' and param.freeSortTag4 != 'can_dispatch_date'}">
					<option value="can_dispatch_date asc">파견가능일 오름차순</option>
					<option value="can_dispatch_date desc">파견가능일 내림차순</option>
				</c:if>
				<c:if test="${param.freeSortTag1 != 'consultation_time' and param.freeSortTag2 != 'consultation_time' and param.freeSortTag3 != 'consultation_time' and param.freeSortTag4 != 'consultation_time'}">
					<option value="consultation_time asc">전화상담일 오름차순</option>
					<option value="consultation_time desc">전화상담일 내림차순</option>
				</c:if>
				<c:if test="${param.freeSortTag1 != 'dev_year_standard_date' and param.freeSortTag2 != 'dev_year_standard_date' and param.freeSortTag3 != 'dev_year_standard_date' and param.freeSortTag4 != 'dev_year_standard_date'}">
					<option value="(SELECT FYI2.dev_year_standard_date FROM FREE_YEAR_INFO FYI2 WHERE f.free_num = FYI2.free_num) asc">이력서확인일 오름차순</option>
					<option value="(SELECT FYI2.dev_year_standard_date FROM FREE_YEAR_INFO FYI2 WHERE f.free_num = FYI2.free_num) desc">이력서확인일 내림차순</option>
				</c:if>	
			</select>
			<select name="freeSort6" onchange="sortSelect6()">
				<option></option>
				<c:if test="${param.freeSortTag1 != 'fName' and param.freeSortTag2 != 'fName' and param.freeSortTag3 != 'fName' and param.freeSortTag4 != 'fName' and param.freeSortTag5 != 'fName'}">
					<option value="fName asc">이름 오름차순</option>
					<option value="fName desc">이름 내림차순</option>
				</c:if>
				<c:if test="${param.freeSortTag1 != 'age' and param.freeSortTag2 != 'age' and param.freeSortTag3 != 'age' and param.freeSortTag4 != 'age' and param.freeSortTag5 != 'age'}">
					<option value="TO_CHAR(sysdate, 'YYYY') - TO_CHAR(birth_year) asc">나이 오름차순</option>
					<option value="TO_CHAR(sysdate, 'YYYY') - TO_CHAR(birth_year) desc">나이 내림차순</option>
				</c:if>
				
				<c:if test="${param.freeSortTag1 != 'highestLevel_edu' and param.freeSortTag2 != 'highestLevel_edu' and param.freeSortTag3 != 'highestLevel_edu' and param.freeSortTag4 != 'highestLevel_edu' and param.freeSortTag5 != 'highestLevel_edu'}">
					<option value="DECODE(highestLevel_edu,1,'고졸',2,'전문대졸',3,'일반대학사졸',4,'일반대석사졸','일반대박사졸') asc">학력 오름차순</option>
					<option value="DECODE(highestLevel_edu,1,'고졸',2,'전문대졸',3,'일반대학사졸',4,'일반대석사졸','일반대박사졸') desc">학력 내림차순</option>
				</c:if>
				<c:if test="${param.freeSortTag1 != 'yeoncha' and param.freeSortTag2 != 'yeoncha' and param.freeSortTag3 !='yeoncha' and param.freeSortTag4 != 'yeoncha' and param.freeSortTag5 != 'yeoncha'}">
					<option value="NVL((SELECT SUBSTR(fy.resume_dev_year, 1,2) FROM FREE_YEAR_INFO fy WHERE f.FREE_NUM = fy.FREE_NUM), '0') asc">가상개발년차 오름차순</option>
					<option value="NVL((SELECT SUBSTR(fy.resume_dev_year, 1,2) FROM FREE_YEAR_INFO fy WHERE f.FREE_NUM = fy.FREE_NUM), '0') desc">가상개발년차 내림차순</option>				
				</c:if>
				<c:if test="${param.freeSortTag1 != 'can_dispatch_date' and param.freeSortTag2 != 'can_dispatch_date' and param.freeSortTag3 != 'can_dispatch_date' and param.freeSortTag4 != 'can_dispatch_date' and param.freeSortTag5 != 'can_dispatch_date'}">
					<option value="can_dispatch_date asc">파견가능일 오름차순</option>
					<option value="can_dispatch_date desc">파견가능일 내림차순</option>
				</c:if>
				<c:if test="${param.freeSortTag1 != 'consultation_time' and param.freeSortTag2 != 'consultation_time' and param.freeSortTag3 != 'consultation_time' and param.freeSortTag4 != 'consultation_time' and param.freeSortTag5 != 'consultation_time'}">
					<option value="consultation_time asc">전화상담일 오름차순</option>
					<option value="consultation_time desc">전화상담일 내림차순</option>
				</c:if>
				<c:if test="${param.freeSortTag1 != 'dev_year_standard_date' and param.freeSortTag2 != 'dev_year_standard_date' and param.freeSortTag3 != 'dev_year_standard_date' and param.freeSortTag4 != 'dev_year_standard_date' and param.freeSortTag5 != 'dev_year_standard_date'}">
					<option value="(SELECT FYI2.dev_year_standard_date FROM FREE_YEAR_INFO FYI2 WHERE f.free_num = FYI2.free_num) asc">이력서확인일 오름차순</option>
					<option value="(SELECT FYI2.dev_year_standard_date FROM FREE_YEAR_INFO FYI2 WHERE f.free_num = FYI2.free_num) desc">이력서확인일 내림차순</option>
				</c:if>
			</select>
			<select name="freeSort7" onchange="sortSelect7()">
				<option></option>
				<c:if test="${param.freeSortTag1 != 'fName' and param.freeSortTag2 != 'fName' and param.freeSortTag3 != 'fName' and param.freeSortTag4 != 'fName' and param.freeSortTag5 != 'fName' and param.freeSortTag6 != 'fName'}">
					<option value="fName asc">이름 오름차순</option>
					<option value="fName desc">이름 내림차순</option>
				</c:if>
				<c:if test="${param.freeSortTag1 != 'age' and param.freeSortTag2 != 'age' and param.freeSortTag3 != 'age' and param.freeSortTag4 != 'age' and param.freeSortTag5 != 'age' and param.freeSortTag6 != 'age'}">
					<option value="TO_CHAR(sysdate, 'YYYY') - TO_CHAR(birth_year) asc">나이 오름차순</option>
					<option value="TO_CHAR(sysdate, 'YYYY') - TO_CHAR(birth_year) desc">나이 내림차순</option>
				</c:if>
				
				<c:if test="${param.freeSortTag1 != 'highestLevel_edu' and param.freeSortTag2 != 'highestLevel_edu' and param.freeSortTag3 != 'highestLevel_edu' and param.freeSortTag4 != 'highestLevel_edu' and param.freeSortTag5 != 'highestLevel_edu' and param.freeSortTag6 != 'highestLevel_edu'}">
					<option value="DECODE(highestLevel_edu,1,'고졸',2,'전문대졸',3,'일반대학사졸',4,'일반대석사졸','일반대박사졸') asc">학력 오름차순</option>
					<option value="DECODE(highestLevel_edu,1,'고졸',2,'전문대졸',3,'일반대학사졸',4,'일반대석사졸','일반대박사졸') desc">학력 내림차순</option>
				</c:if>
				<c:if test="${param.freeSortTag1 != 'yeoncha' and param.freeSortTag2 != 'yeoncha' and param.freeSortTag3 !='yeoncha' and param.freeSortTag4 != 'yeoncha' and param.freeSortTag5 != 'yeoncha' and param.freeSortTag6 != 'yeoncha'}">
					<option value="NVL((SELECT SUBSTR(fy.resume_dev_year, 1,2) FROM FREE_YEAR_INFO fy WHERE f.FREE_NUM = fy.FREE_NUM), '0') asc">가상개발년차 오름차순</option>
					<option value="NVL((SELECT SUBSTR(fy.resume_dev_year, 1,2) FROM FREE_YEAR_INFO fy WHERE f.FREE_NUM = fy.FREE_NUM), '0') desc">가상개발년차 내림차순</option>				
				</c:if>
				<c:if test="${param.freeSortTag1 != 'can_dispatch_date' and param.freeSortTag2 != 'can_dispatch_date' and param.freeSortTag3 != 'can_dispatch_date' and param.freeSortTag4 != 'can_dispatch_date' and param.freeSortTag5 != 'can_dispatch_date' and param.freeSortTag6 != 'can_dispatch_date'}">
					<option value="can_dispatch_date asc">파견가능일 오름차순</option>
					<option value="can_dispatch_date desc">파견가능일 내림차순</option>
				</c:if>
				<c:if test="${param.freeSortTag1 != 'consultation_time' and param.freeSortTag2 != 'consultation_time' and param.freeSortTag3 != 'consultation_time' and param.freeSortTag4 != 'consultation_time' and param.freeSortTag5 != 'consultation_time' and param.freeSortTag6 != 'consultation_time'}">
					<option value="consultation_time asc">전화상담일 오름차순</option>
					<option value="consultation_time desc">전화상담일 내림차순</option>
				</c:if>
				<c:if test="${param.freeSortTag1 != 'dev_year_standard_date' and param.freeSortTag2 != 'dev_year_standard_date' and param.freeSortTag3 != 'dev_year_standard_date' and param.freeSortTag4 != 'dev_year_standard_date' and param.freeSortTag5 != 'dev_year_standard_date' and param.freeSortTag6 != 'dev_year_standard_date'}">
					<option value="(SELECT FYI2.dev_year_standard_date FROM FREE_YEAR_INFO FYI2 WHERE f.free_num = FYI2.free_num) asc">이력서확인일 오름차순</option>
					<option value="(SELECT FYI2.dev_year_standard_date FROM FREE_YEAR_INFO FYI2 WHERE f.free_num = FYI2.free_num) desc">이력서확인일 내림차순</option>
				</c:if>
			</select>
			</div>			
						
	<div name="searchResult" class="searchResult" >
		<div class="resultCate">
			<div>번호</div>
			<div>스킬분야</div>
			<div>이름</div>
			<div>성별</div>
			<div>나이</div>
			<div>학력</div>
			<div>가상개발년차</div>
			<div>파견가능일</div>
			<div>파견가능일<br>확정</div>
			<div>핸드폰</div>
			<div>이메일</div>
			<div>전화<br>상담일</div>
			<div>이력서<br>확인일</div>
		</div>
			<div class="SearchResult_box">
			<div>
<c:forEach var="freelancerList" items="${freelancerListMap.freelancerList}" varStatus="vs">
		<div class="searchDetail" onclick="showPopup('${freelancerList.free_num}')">
				<div>${freelancerListMap.begin_serialNo_desc-vs.index}</div>
				<div class = "List_skill">${freelancerList.skill}</div>
				<div>${freelancerList.fName}</div>
				<div>${freelancerList.gender}</div>
				<div>${freelancerList.age}</div>
				<div>${freelancerList.level_edu}</div>
				<div>${freelancerList.yeoncha}</div>
				<div>${freelancerList.can_dispatch_date}</div>
				<div>${freelancerList.fix_dispatch_date}</div>
				<div>${freelancerList.phone}</div>
				<div>${freelancerList.email}</div>
				<div>${freelancerList.consultation_date}</div>
				<div>${freelancerList.dev_year_standard_date}</div>
			</div>
			</c:forEach>
			</div>
	</div> 
	</div>
	<span class="pageNos"> 
		<span onClick="pageNoClick(1)"><i class="fa fa-angle-left" aria-hidden="true"></i><i class="fa fa-angle-left" aria-hidden="true"></i></span>
		<span onClick="pageNoClick(${requestScope.freelancerListMap.selectPageNo}-1)"><i class="fa fa-angle-left" aria-hidden="true"></i></span>
			<c:forEach var="pageNo" begin="${requestScope.freelancerListMap.begin_pageNo}" end="${requestScope.freelancerListMap.end_pageNo}">
				<c:if test="${requestScope.freelancerListMap.selectPageNo==pageNo}">
					<span class='isSelect'>
						${pageNo}
					</span>
				</c:if>
			<c:if test="${requestScope.freelancerListMap.selectPageNo!=pageNo}">
				<span style="cursor:pointer" onClick="pageNoClick(${pageNo})">[${pageNo}]</span>
			</c:if>  
	</c:forEach> 

		<span onClick="pageNoClick(${requestScope.freelancerListMap.selectPageNo}+1)"><i class="fa fa-angle-right" aria-hidden="true"></i></span>
		<span onClick="pageNoClick(${requestScope.freelancerListMap.last_pageNo})"><i class="fa fa-angle-right" aria-hidden="true"></i><i class="fa fa-angle-right" aria-hidden="true"></i></span>
	</div>    
			</form>
		</div> 
		
		<div class='popup'>
			<div class="dim">
					<div class='popup_main'>
						<form name="freelancerRegForm" class="boardForm freelancerRegForm">
						<header>프리랜서 개발자 상세 정보</header>
						<div class="inform">
						<div class="title">프리랜서 기본 정보</div>
						<div>
								<div class='flex'>
									<div class='desc_title'>이름</div>
									<input type='text' class='alter_name ' name="fName" value="${getFreelancerListDetailMap.getFreelancerListDetailList.fname}" onkeydown="checkSpace(this)"/>
								</div>
								<div class='flex'>
									<div class='desc_title'>성별</div>
									<div class='gender_box'>
										<input type="checkbox" name="gender" value="1" class="gender_m">남
										<input type="checkbox" name="gender" value="2" class="gender_w">여
									</div>
								</div>
								<div class='flex'>
									<div class='desc_title'>이메일</div>
									<input type="email" name="email" class="email" size="10" maxlength="30" onkeyup="checkSpace(this)" value="${freelancerListDetailMap.email}">
								</div>
								<div class='flex'>
									<div class='desc_title'>핸드폰</div>
									<input type="text" name="phone" class="phone" size="10" maxlength="11" onkeyup="checkSpace(this)" value="${freelancerListDetailMap.phone}">
								</div>
								<div class='flex'>
									<div class='desc_title'>출생년도</div>
									<input type="number" name="birth_year" class="birth_year" size="10" maxlength="4" onkeyup="checkSpace(this)" value="${freelancerListDetailMap.birth_year}"> 년생
								</div>
								<div class='flex'>
									<div class='desc_title'>최종학력</div>
									<select name="highestLevel_edu" id="highestLevel_edu">
											<option value=""></option>
											<option value="1">고졸</option>
											<option value="2">전문대졸</option>
											<option value="3">일반대학사졸</option>
											<option value="4">일반대석사졸</option>
											<option value="5">일반대박사졸</option>
									</select>
								</div>
								<div class='flex'>
									<div class='desc_title'>졸업년도</div>
									<input type="month" name="graduate_date" class="graduate_date" min="1930-01" max="2023-12">
								</div>
						</div>
						</div>
					<div class="career">
						<div class="title">프리랜서 기본 년차</div>
						<div class="flex">
								<tr>
									<div class="dec_title">추정 개발년차</div>
									<span><span name="yeoncha">0</span> 년차</span>
								</tr>
								</div>
								<div>
								<div class="flex">
									<div class="dec_title">이력서 상 개발년차</div>
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
									<tr>
										( <input type="date" name="dev_year_standard_date" class="dev_year_standard_date"> 날짜 기준 )
									</tr>
								</div>
								</div>
						</div>
					<div class="eval">
						<div class="title">프리랜서 평가</div>
						<div class="flex">
								<tr>
									<div class="desc_title">블랙개발자</div>
									<input type="checkbox" name="black_reason_name" value="1"> 실력부족
									<input type="checkbox" name="black_reason_name" value="2"> 파견지부적응
									<input type="checkbox" name="black_reason_name" value="3"> 근태불성실
									<input type="checkbox" name="black_reason_name" value="4"> 무단이탈
									<input type="checkbox" name="black_reason_name" value="5"> 전화통화원치않음
									<input type="checkbox" name="black_reason_name" value="6"> 기타
								</tr>
						</div>
						<div class="etc">
								<div class="desc_title">기타 평가</div>
								<textarea name="etc_opinion" cols="30" rows="10" maxlength="300" placeholder="최대 300자 입력"></textarea>
						</div>
						</div>
						<div class="dispatch">
						<div class="title">프리랜서 파견 정보</div>
						<div class="flex">
								<tr>
									<div class='desc_title'>상담시각</div>
									<input type="datetime-local" name="consultation_time" class="consultation_time consulTime"> 
									<span onclick="dateNow()" style="cursor: pointer;" class="alterBtn">[지금]</span>
									<span onclick="dateEmpty(this, 'date')" style="cursor: pointer;" class="alterBtn">[비움]</span>
								</tr>
						</div>
						<div class="flex">
								<tr>
									<div class="desc_title">현재직업</div>
										<input type="radio" name="job" value="1"> 프리랜서 개발자
										<input type="radio" name="job" value="2"> 정규직 개발자
										<input type="radio" name="job" value="3"> 기타직업
								</tr>
						</div>
			
						<div class="flex">
								<tr>
									<div class="desc_title">스킬분야</div>
									<input type="checkbox" name="skill_category_code" class="first_skill" value="1"> JAVA>JSP
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
						<div class="flex">
								<tr>
									<div class="desc_title">파견역할</div>
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
						<div class="flex">
								<tr>
									<div class="desc_title">파견가능일</div>
									<input type="date" name="can_dispatch_date" class="can_dispatch_date" value="${freelancerListDetailMap.can_dispatch_day}">
									<input type="checkbox" name="fix_dispatch_date" value="1"> 확정
								</tr>
						</div>
						<div class="flex">
								<tr>
									<div class="desc_title">개발 단가</div>
									<input type="number" name="min_dev_cost" class="min_dev_cost" onkeydown="checkMax(this, 10)">
									만원 ~
									<input type="number" name="max_dev_cost" class="max_dev_cost" onkeydown="checkMax(this, 10)"> 만원
								</tr>
								<span>
									<input type="checkbox" name="how_dev_cost" value="1" onchange="checkRadio(this)"> 단가고정
									<input type="checkbox" name="how_dev_cost" value="2" onchange="checkRadio(this)"> 협상후결정
								</span>
						</div>
						<div class="flex">
								<tr>
									<div class="desc_title">운영 단가</div>
									<input type="number" name="min_operate_cost" class="min_operate_cost" onkeydown="checkMax(this, 10)">
									만원 ~
									<input type="number" name="max_operate_cost" class="max_operate_cost" onkeydown="checkMax(this, 10)"> 만원
								</tr>
								<span>
									<input type="checkbox" name="how_operate_cost" value="1" onchange="checkRadio(this)"> 단가고정
									<input type="checkbox" name="how_operate_cost" value="2" onchange="checkRadio(this)"> 협상후결정
								</span>
						</div>
						<div class="flex">
								<tr>
									<div class="desc_title">기사자격증</div>
									<input type="checkbox" name="license_code" value="1" class="license_code"> 정보처리기사
									<input type="checkbox" name="license_code" value="2" class="license_code"> 정보처리산업기사
								</tr>
						</div>
						<div class="flex">
								<tr>
									<div class="desc_title">노트북 소유</div>
									<input type="checkbox" name="have_notebook" value="1"> 노트북대여희망
								</tr>
						</div>
						<div class="flex">
								<tr>
									<div class="desc_title">선호지역</div>
									<input type="checkbox" name="free_can_work_location" class="first_loc" value="1"> 서울
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
						<div class="flex">
								<tr>
									<div class='desc_title'>선호분야</div>
									<input type="checkbox" name="favorite_part_code" class="first_part" value="1"> 교육
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
						<div class="flex">
								<tr>
									<div class="desc_title">거주지</div>
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
						<div class="etc">
								<div class="desc_title">기타요구</div>
								<textarea name="etc_want" cols="30" rows="10" maxlength="300" placeholder="최대 300자 입력"></textarea>
						</div>
						<div class="etc">
								<div class="desc_title">전화상담시<br>주의사항</div>
								<textarea name="call_notice" cols="30" rows="10" maxlength="300" placeholder="최대 300자 입력"></textarea>
						</div>
						</div>	
						<span onclick="closePopup()" name="cancel" class="cancel">닫기</span>
						<span onclick="deleteInfo()" name="delete" class="delete">삭제</span>
						<span onclick="alterInfo(this)" name="save" class="save">수정</span>
						<input type="hidden" name="del_free_uid" class="del_free_uid">
					</form>
					</div>
			</div>
	</div>

	<div class="none">
		<form name="searchFreeDevDetailForm" action="/freeDetailForm.do" post="post">
			<input type="hidden" name="free_uid" class="free_uid" value="">
		</form>

		<form name="deleteFreeInFo" action="/deleteFreeInFo.do" post="post">
			<input type="hidden" name="del_free_uid" class="del_free_uid">
		</form>
	</div>
</body>
</html>