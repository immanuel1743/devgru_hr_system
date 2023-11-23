<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/common.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>[프로젝트] / [파견현황]</title>
<link rel="stylesheet" href="css/dispatcheSearch.css">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" integrity="sha512-5A8nwdMOWrSz20fDsjczgUidUBR8liPYU+WymTZP1lmY9G6Oc7HlZv156XqnsgNUzTyMefFTcsFH/tnJE/+xBg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<script>
  window.onload = function(){dispatchSearch()};

  function showDesc(e) {
   $('.desc_box').slideToggle();
   $('.filter').toggleClass('active');
  }

  var html = '';
  function reSearch1(){
	 	 location.reload();
	  }

  function resetPrj(){
	  $("[name='popup_main']").val('');
	  }
  function sortDispatchSelect1 (){
	  var ascDesc =$("[name='dispatchSort1']").val();
	  if(ascDesc=='sub.all_dev_name asc' || ascDesc=='sub.all_dev_name desc'){
		  $("[name='dispatchSortTag1']").val('all_dev_name')
	  }
	  if(ascDesc=="p.prj_name asc" || ascDesc=="p.prj_name desc"){
		  $("[name='dispatchSortTag1']").val('prj_name')
	  }
	  if(ascDesc=="sub.dev_year asc" || ascDesc=="sub.dev_year desc"){
		  $("[name='dispatchSortTag1']").val('dev_year')
	  }
	  if(ascDesc=="(p.max_period-p.min_period)/30 asc" || ascDesc=="(p.max_period-p.min_period)/30 desc"){
		  $("[name='dispatchSortTag1']").val('period')
	  }
	  if(ascDesc=='min_period asc' || ascDesc=='min_period desc'){
		  $("[name='dispatchSortTag1']").val('start_date')
	  }
	  if(ascDesc=="p.max_period asc" || ascDesc=="p.max_period desc"){
		  $("[name='dispatchSortTag1']").val('end_date')
	  }
	  if(ascDesc=="(p.max_period-sysdate) asc" || ascDesc=="(p.max_period-sysdate) desc"){
		  $("[name='dispatchSortTag1']").val('end_count')
	  }
	  if(ascDesc=='(select cooperator_name from code_cooperator_name ccn where p.cooperator_name = ccn.cooperator_name_code) asc' || ascDesc=='(select cooperator_name from code_cooperator_name ccn where p.cooperator_name = ccn.cooperator_name_code) desc'){
		  $("[name='dispatchSortTag1']").val('cooperator_name')
	  }
	  dispatchSearch();
}
  function sortDispatchSelect2(){
	  var ascDesc =$("[name='dispatchSort2']").val();
	  if(ascDesc=='sub.all_dev_name asc' || ascDesc=='sub.all_dev_name desc'){
		  $("[name='dispatchSortTag2']").val('all_dev_name')
	  }
	  if(ascDesc=="p.prj_name asc" || ascDesc=="p.prj_name desc"){
		  $("[name='dispatchSortTag2']").val('prj_name')
	  }
	  if(ascDesc=="sub.dev_year asc" || ascDesc=="sub.dev_year desc"){
		  $("[name='dispatchSortTag2']").val('dev_year')
	  }
	  if(ascDesc=="(p.max_period-p.min_period)/30 asc" || ascDesc=="(p.max_period-p.min_period)/30 desc"){
		  $("[name='dispatchSortTag2']").val('period')
	  }
	  if(ascDesc=='min_period asc' || ascDesc=='min_period desc'){
		  $("[name='dispatchSortTag2']").val('start_date')
	  }
	  if(ascDesc=="p.max_period asc" || ascDesc=="p.max_period desc"){
		  $("[name='dispatchSortTag2']").val('end_date')
	  }
	  if(ascDesc=="(p.max_period-sysdate) asc" || ascDesc=="(p.max_period-sysdate) desc"){
		  $("[name='dispatchSortTag2']").val('end_count')
	  }
	  if(ascDesc=='(select cooperator_name from code_cooperator_name ccn where p.cooperator_name = ccn.cooperator_name_code) asc' || ascDesc=='(select cooperator_name from code_cooperator_name ccn where p.cooperator_name = ccn.cooperator_name_code) desc'){
		  $("[name='dispatchSortTag2']").val('cooperator_name')
	  }
	  dispatchSearch();
}
  function sortDispatchSelect3(){
	  var ascDesc =$("[name='dispatchSort3']").val();
	  if(ascDesc=='sub.all_dev_name asc' || ascDesc=='sub.all_dev_name desc'){
		  $("[name='dispatchSortTag3']").val('all_dev_name')
	  }
	  if(ascDesc=="p.prj_name asc" || ascDesc=="p.prj_name desc"){
		  $("[name='dispatchSortTag3']").val('prj_name')
	  }
	  if(ascDesc=="sub.dev_year asc" || ascDesc=="sub.dev_year desc"){
		  $("[name='dispatchSortTag3']").val('dev_year')
	  }
	  if(ascDesc=="(p.max_period-p.min_period)/30 asc" || ascDesc=="(p.max_period-p.min_period)/30 desc"){
		  $("[name='dispatchSortTag3']").val('period')
	  }
	  if(ascDesc=='min_period asc' || ascDesc=='min_period desc'){
		  $("[name='dispatchSortTag3']").val('start_date')
	  }
	  if(ascDesc=="p.max_period asc" || ascDesc=="p.max_period desc"){
		  $("[name='dispatchSortTag3']").val('end_date')
	  }
	  if(ascDesc=="(p.max_period-sysdate) asc" || ascDesc=="(p.max_period-sysdate) desc"){
		  $("[name='dispatchSortTag3']").val('end_count')
	  }
	  if(ascDesc=='(select cooperator_name from code_cooperator_name ccn where p.cooperator_name = ccn.cooperator_name_code) asc' || ascDesc=='(select cooperator_name from code_cooperator_name ccn where p.cooperator_name = ccn.cooperator_name_code) desc'){
		  $("[name='dispatchSortTag3']").val('cooperator_name')
	  }
	  dispatchSearch();
}
  function sortDispatchSelect4(){
	  var ascDesc =$("[name='dispatchSort4']").val();
	  if(ascDesc=='sub.all_dev_name asc' || ascDesc=='sub.all_dev_name desc'){
		  $("[name='dispatchSortTag4']").val('all_dev_name')
	  }
	  if(ascDesc=="p.prj_name asc" || ascDesc=="p.prj_name desc"){
		  $("[name='dispatchSortTag4']").val('prj_name')
	  }
	  if(ascDesc=="sub.dev_year asc" || ascDesc=="sub.dev_year desc"){
		  $("[name='dispatchSortTag4']").val('dev_year')
	  }
	  if(ascDesc=="(p.max_period-p.min_period)/30 asc" || ascDesc=="(p.max_period-p.min_period)/30 desc"){
		  $("[name='dispatchSortTag4']").val('period')
	  }
	  if(ascDesc=='min_period asc' || ascDesc=='min_period desc'){
		  $("[name='dispatchSortTag4']").val('start_date')
	  }
	  if(ascDesc=="p.max_period asc" || ascDesc=="p.max_period desc"){
		  $("[name='dispatchSortTag4']").val('end_date')
	  }
	  if(ascDesc=="(p.max_period-sysdate) asc" || ascDesc=="(p.max_period-sysdate) desc"){
		  $("[name='dispatchSortTag4']").val('end_count')
	  }
	  if(ascDesc=='(select cooperator_name from code_cooperator_name ccn where p.cooperator_name = ccn.cooperator_name_code) asc' || ascDesc=='(select cooperator_name from code_cooperator_name ccn where p.cooperator_name = ccn.cooperator_name_code) desc'){
		  $("[name='dispatchSortTag4']").val('cooperator_name')
	  }
	  dispatchSearch();
}
  function sortDispatchSelect5(){
	  var ascDesc =$("[name='dispatchSort5']").val();
	  if(ascDesc=='sub.all_dev_name asc' || ascDesc=='sub.all_dev_name desc'){
		  $("[name='dispatchSortTag5']").val('all_dev_name')
	  }
	  if(ascDesc=="p.prj_name asc" || ascDesc=="p.prj_name desc"){
		  $("[name='dispatchSortTag5']").val('prj_name')
	  }
	  if(ascDesc=="sub.dev_year asc" || ascDesc=="sub.dev_year desc"){
		  $("[name='dispatchSortTag5']").val('dev_year')
	  }
	  if(ascDesc=="(p.max_period-p.min_period)/30 asc" || ascDesc=="(p.max_period-p.min_period)/30 desc"){
		  $("[name='dispatchSortTag5']").val('period')
	  }
	  if(ascDesc=='min_period asc' || ascDesc=='min_period desc'){
		  $("[name='dispatchSortTag5']").val('start_date')
	  }
	  if(ascDesc=="p.max_period asc" || ascDesc=="p.max_period desc"){
		  $("[name='dispatchSortTag5']").val('end_date')
	  }
	  if(ascDesc=="(p.max_period-sysdate) asc" || ascDesc=="(p.max_period-sysdate) desc"){
		  $("[name='dispatchSortTag5']").val('end_count')
	  }
	  if(ascDesc=='(select cooperator_name from code_cooperator_name ccn where p.cooperator_name = ccn.cooperator_name_code) asc' || ascDesc=='(select cooperator_name from code_cooperator_name ccn where p.cooperator_name = ccn.cooperator_name_code) desc'){
		  $("[name='dispatchSortTag5']").val('cooperator_name')
	  }
	  dispatchSearch();
}
  function sortDispatchSelect6(){
	  var ascDesc =$("[name='dispatchSort6']").val();
	  if(ascDesc=='sub.all_dev_name asc' || ascDesc=='sub.all_dev_name desc'){
		  $("[name='dispatchSortTag6']").val('all_dev_name')
	  }
	  if(ascDesc=="p.prj_name asc" || ascDesc=="p.prj_name desc"){
		  $("[name='dispatchSortTag6']").val('prj_name')
	  }
	  if(ascDesc=="sub.dev_year asc" || ascDesc=="sub.dev_year desc"){
		  $("[name='dispatchSortTag6']").val('dev_year')
	  }
	  if(ascDesc=="(p.max_period-p.min_period)/30 asc" || ascDesc=="(p.max_period-p.min_period)/30 desc"){
		  $("[name='dispatchSortTag6']").val('period')
	  }
	  if(ascDesc=='min_period asc' || ascDesc=='min_period desc'){
		  $("[name='dispatchSortTag6']").val('start_date')
	  }
	  if(ascDesc=="p.max_period asc" || ascDesc=="p.max_period desc"){
		  $("[name='dispatchSortTag6']").val('end_date')
	  }
	  if(ascDesc=="(p.max_period-sysdate) asc" || ascDesc=="(p.max_period-sysdate) desc"){
		  $("[name='dispatchSortTag6']").val('end_count')
	  }
	  if(ascDesc=='(select cooperator_name from code_cooperator_name ccn where p.cooperator_name = ccn.cooperator_name_code) asc' || ascDesc=='(select cooperator_name from code_cooperator_name ccn where p.cooperator_name = ccn.cooperator_name_code) desc'){
		  $("[name='dispatchSortTag6']").val('cooperator_name')
	  }
	  dispatchSearch();
}
  function sortDispatchSelect7(){
	  var ascDesc =$("[name='dispatchSort7']").val();
	  if(ascDesc=='sub.all_dev_name asc' || ascDesc=='sub.all_dev_name desc'){
		  $("[name='dispatchSortTag7']").val('all_dev_name')
	  }
	  if(ascDesc=="p.prj_name asc" || ascDesc=="p.prj_name desc"){
		  $("[name='dispatchSortTag7']").val('prj_name')
	  }
	  if(ascDesc=="sub.dev_year asc" || ascDesc=="sub.dev_year desc"){
		  $("[name='dispatchSortTag7']").val('dev_year')
	  }
	  if(ascDesc=="(p.max_period-p.min_period)/30 asc" || ascDesc=="(p.max_period-p.min_period)/30 desc"){
		  $("[name='dispatchSortTag7']").val('period')
	  }
	  if(ascDesc=='min_period asc' || ascDesc=='min_period desc'){
		  $("[name='dispatchSortTag7']").val('start_date')
	  }
	  if(ascDesc=="p.max_period asc" || ascDesc=="p.max_period desc"){
		  $("[name='dispatchSortTag7']").val('end_date')
	  }
	  if(ascDesc=="(p.max_period-sysdate) asc" || ascDesc=="(p.max_period-sysdate) desc"){
		  $("[name='dispatchSortTag7']").val('end_count')
	  }
	  if(ascDesc=='(select cooperator_name from code_cooperator_name ccn where p.cooperator_name = ccn.cooperator_name_code) asc' || ascDesc=='(select cooperator_name from code_cooperator_name ccn where p.cooperator_name = ccn.cooperator_name_code) desc'){
		  $("[name='dispatchSortTag7']").val('cooperator_name')
	  }
	  dispatchSearch();
}
  function sortDispatchSelect8(){
	  var ascDesc =$("[name='dispatchSort8']").val();
	  if(ascDesc=='sub.all_dev_name asc' || ascDesc=='sub.all_dev_name desc'){
		  $("[name='dispatchSortTag8']").val('all_dev_name')
	  }
	  if(ascDesc=="p.prj_name asc" || ascDesc=="p.prj_name desc"){
		  $("[name='dispatchSortTag8']").val('prj_name')
	  }
	  if(ascDesc=="sub.dev_year asc" || ascDesc=="sub.dev_year desc"){
		  $("[name='dispatchSortTag8']").val('dev_year')
	  }
	  if(ascDesc=="(p.max_period-p.min_period)/30 asc" || ascDesc=="(p.max_period-p.min_period)/30 desc"){
		  $("[name='dispatchSortTag8']").val('period')
	  }
	  if(ascDesc=='min_period asc' || ascDesc=='min_period desc'){
		  $("[name='dispatchSortTag8']").val('start_date')
	  }
	  if(ascDesc=="p.max_period asc" || ascDesc=="p.max_period desc"){
		  $("[name='dispatchSortTag8']").val('end_date')
	  }
	  if(ascDesc=="(p.max_period-sysdate) asc" || ascDesc=="(p.max_period-sysdate) desc"){
		  $("[name='dispatchSortTag8']").val('end_count')
	  }
	  if(ascDesc=='(select cooperator_name from code_cooperator_name ccn where p.cooperator_name = ccn.cooperator_name_code) asc' || ascDesc=='(select cooperator_name from code_cooperator_name ccn where p.cooperator_name = ccn.cooperator_name_code) desc'){
		  $("[name='dispatchSortTag8']").val('cooperator_name')
	  }
	  dispatchSearch();
}
  
  
	 function sortPrjSelect1(){
		  var ascDesc =$("[name='prjSort1']").val();
		  if(ascDesc=='prj_name asc' || ascDesc=='prj_name desc'){
			  $("[name='prjSortTag1']").val('prj_name')
		  }
		  if(ascDesc=="reg_date asc" || ascDesc=="reg_date desc"){
			  $("[name='prjSortTag1']").val('reg_date')
		  }
		  if(ascDesc=="min_period asc" || ascDesc=="min_period desc"){
			  $("[name='prjSortTag1']").val('min_period')
		  }
		  if(ascDesc=="max_period asc" || ascDesc=="max_period desc"){
			  $("[name='prjSortTag1']").val('max_period')
		  }
		  if(ascDesc=='(max_period - min_period)/30 asc' || ascDesc=='(max_period - min_period)/30 desc'){
			  $("[name='prjSortTag1']").val('period')
		  }
		  search();
	}
	function sortPrjSelect2(){
		  var ascDesc =$("[name='prjSort2']").val();
		  if(ascDesc=='prj_name asc' || ascDesc=='prj_name desc'){
			  $("[name='prjSortTag2']").val('prj_name')
		  }
		  if(ascDesc=="reg_date asc" || ascDesc=="reg_date desc"){
			  $("[name='prjSortTag2']").val('reg_date')
		  }
		  if(ascDesc=="min_period asc" || ascDesc=="min_period desc"){
			  $("[name='prjSortTag2']").val('min_period')
		  }
		  if(ascDesc=="max_period asc" || ascDesc=="max_period desc"){
			  $("[name='prjSortTag2']").val('max_period')
		  }
		  if(ascDesc=='(max_period - min_period)/30 asc' || ascDesc=='(max_period - min_period)/30 desc'){
			  $("[name='prjSortTag2']").val('period')
		  }
		  search();
	}
	function sortPrjSelect3(){
		  var ascDesc =$("[name='prjSort3']").val();
		  if(ascDesc=='prj_name asc' || ascDesc=='prj_name desc'){
			  $("[name='prjSortTag3']").val('prj_name')
		  }
		  if(ascDesc=="reg_date asc" || ascDesc=="reg_date desc"){
			  $("[name='prjSortTag3']").val('reg_date')
		  }
		  if(ascDesc=="min_period asc" || ascDesc=="min_period desc"){
			  $("[name='prjSortTag3']").val('min_period')
		  }
		  if(ascDesc=="max_period asc" || ascDesc=="max_period desc"){
			  $("[name='prjSortTag3']").val('max_period')
		  }
		  if(ascDesc=='(max_period - min_period)/30 asc' || ascDesc=='(max_period - min_period)/30 desc'){
			  $("[name='prjSortTag3']").val('period')
		  }
		  search();
	}
	function sortPrjSelect4(){
		  var ascDesc =$("[name='prjSort4']").val();
		  if(ascDesc=='prj_name asc' || ascDesc=='prj_name desc'){
			  $("[name='prjSortTag4']").val('prj_name')
		  }
		  if(ascDesc=="reg_date asc" || ascDesc=="reg_date desc"){
			  $("[name='prjSortTag4']").val('reg_date')
		  }
		  if(ascDesc=="min_period asc" || ascDesc=="min_period desc"){
			  $("[name='prjSortTag4']").val('min_period')
		  }
		  if(ascDesc=="max_period asc" || ascDesc=="max_period desc"){
			  $("[name='prjSortTag4']").val('max_period')
		  }
		  if(ascDesc=='(max_period - min_period)/30 asc' || ascDesc=='(max_period - min_period)/30 desc'){
			  $("[name='prjSortTag4']").val('period')
		  }
		  search();
	}
	function sortPrjSelect5(){
		  var ascDesc =$("[name='prjSort5']").val();
		  if(ascDesc=='prj_name asc' || ascDesc=='prj_name desc'){
			  $("[name='prjSortTag5']").val('prj_name')
		  }
		  if(ascDesc=="reg_date asc" || ascDesc=="reg_date desc"){
			  $("[name='prjSortTag5']").val('reg_date')
		  }
		  if(ascDesc=="min_period asc" || ascDesc=="min_period desc"){
			  $("[name='prjSortTag5']").val('min_period')
		  }
		  if(ascDesc=="max_period asc" || ascDesc=="max_period desc"){
			  $("[name='prjSortTag5']").val('max_period')
		  }
		  if(ascDesc=='(max_period - min_period)/30 asc' || ascDesc=='(max_period - min_period)/30 desc'){
			  $("[name='prjSortTag5']").val('period')
		  }
		  search();
	}
	
  
  function dispatchSearch(){
	  var formObj = $("[name='dispatch_search']");                                       
      var checkObj_min_worked_month = $("[name='min_worked_month']");                   
      var checkObj_max_worked_month = $("[name='max_worked_month']");                   
      var checkObj_min_dispatch_start_date = $("[name='min_dispatch_start_date1']");     
      var checkObj_max_dispatch_start_date = $("[name='max_dispatch_start_date1']");       
      var checkObj_min_dispatch_finish_date = $("[name='min_dispatch_finish_date1']");       
      var checkObj_max_dispatch_finish_date = $("[name='max_dispatch_finish_date1']");             
      var checkObj_min_worked_year = $("[name='min_worked_year']");                    
      var checkObj_max_worked_year = $("[name='max_worked_year']");                   
      var checkObj_keyword1 = $("[name='keyword1']");                                    
      var checkObj_keyword2 = $("[name='keyword2']");                                   

	if(checkObj_max_worked_month.val()!=""){
   if(checkObj_min_worked_month.val()>checkObj_max_worked_month.val()){
      alert("최소 파견 기간은 최대 파견 기간을 넘을 수 없습니다.")
     return;
    }
   if(checkObj_min_worked_month.val()==""){
	      alert("최소 파견 기간을 설정해주세요.")
	     return;
	    }
	}
	
	if(checkObj_max_dispatch_start_date.val()!=""){
   if(checkObj_min_dispatch_start_date.val()>checkObj_max_dispatch_start_date.val()){
      alert("최소 파견 시작일은 최대 파견 시작일을 넘을 수 없습니다.")
      return;
    }
    if(checkObj_min_dispatch_start_date.val()==""){
	      alert("최소 파견 시작일을 설정해주세요.")
	     return;
	    }
	}

	if(checkObj_max_dispatch_finish_date.val()!=""){
   if(checkObj_min_dispatch_finish_date.val()>checkObj_max_dispatch_finish_date.val()){
      alert("최소 파견 종료일은 최대 파견 종료일을 넘을 수 없습니다.")
     return;
    } 
   if(checkObj_min_dispatch_finish_date.val()==""){
	      alert("최소 파견 종료일을 설정해주세요.")
		     return;
		}
	}


	if(checkObj_max_worked_year.val()!=""){
   if(checkObj_min_worked_year.val()>checkObj_max_worked_year.val()){
      alert("최소 년차는 최대 년차를 넘을 수 없습니다.")
      return;
    }
   if(checkObj_min_worked_year.val()==""){
	      alert("최소 년차를 설정해주세요.")
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
	            "/searchDispatch.do"
	            ,"post"
	            ,$("[name='dispatch_search']")
	            ,function(responseHtml){
	               var obj = $(responseHtml);
	               var dispatchSort = obj.find(".dispatchSort").html();
	               var impect = obj.find(".impect").html();
	               var DispatchSearchResult_box = obj.find(".DispatchSearchResult_box").html();
	               var pageNos = obj.find(".pageNos:first").html();
	               var ascDesc1 =$("[name='dispatchSort1']").val();
	               var ascDesc2 =$("[name='dispatchSort2']").val();
	               var ascDesc3 =$("[name='dispatchSort3']").val();
	               var ascDesc4 =$("[name='dispatchSort4']").val();
	               var ascDesc5 =$("[name='dispatchSort5']").val();
	               var ascDesc6 =$("[name='dispatchSort6']").val();
	               var ascDesc7 =$("[name='dispatchSort7']").val();
	               var ascDesc8 =$("[name='dispatchSort8']").val();
	               $(".dispatchSort").html(dispatchSort);
	               	$("[name='dispatchSort1']").val(ascDesc1);
	               	$("[name='dispatchSort2']").val(ascDesc2);
	               	$("[name='dispatchSort3']").val(ascDesc3);
	               	$("[name='dispatchSort4']").val(ascDesc4);
	               	$("[name='dispatchSort5']").val(ascDesc5);
	               	$("[name='dispatchSort6']").val(ascDesc6);
	               	$("[name='dispatchSort7']").val(ascDesc7);
	               	$("[name='dispatchSort8']").val(ascDesc8);
                   $(".impect").html(impect);
                   $(".DispatchSearchResult_box").html(DispatchSearchResult_box);
                   $(".pageNos:first").html(pageNos);
                   $("[name='dispatch_search'] .resultCate, .pageNos").show();

                 var html = 
                  '<div class="isEmpty"><i class="fa fa-search" aria-hidden="true"></i>검색 결과가 없습니다.</div>';
				
                  if($('.impect').text() == 0 || $('.impect').text() == '0') {
                    $(".DispatchSearchResult_box").html( html );
                    $("[name='dispatch_search'] .resultCate, .pageNos").hide();
                  }
	            }
	      );
  }	
	function Pnc(
				clickPageNo
				){
			var formObj=$(".prj_search_desc");
			formObj.find("[name='selectPageNo']").val(clickPageNo);
			search();
	}

	function pageNoClick(clickPageNo){
		var formObj = $("[name='dispatch_search']");
		formObj.find("[name='selectPageNo']").val(clickPageNo);
		dispatchSearch();
	}

		function reSearch2() {
			$('.dispatchRegForm').find('input[type=text]').val('')
			$('.dispatchRegForm').find('input[type=date]').val('')
			$('.dispatchRegForm').find('select').val('')
			$('.dispatchRegForm').find('input[type=checkbox]').prop('checked', false);

			var formObj=$(".prj_search_desc");
			formObj.find("[name='selectPageNo']").val(1);

			search();
		}
	 
	   function search(){
		   var formObj = $(".prj_search_desc");                                                
	       
	       var checkObj_min_dispatch_start_date = $("[name='min_dispatch_start_date']");            
	       var checkObj_max_dispatch_start_date = $("[name='max_dispatch_start_date']");             
	       var checkObj_min_dispatch_finish_date = $("[name='min_dispatch_finish_date']");      	 
	       var checkObj_max_dispatch_finish_date = $("[name='max_dispatch_finish_date']");      	 
	       var checkObj_min_dispatchTerm = $("[name='min_dispatchTerm']");      					 
	       var checkObj_max_dispatchTerm = $("[name='max_dispatchTerm']");								 
	       var checkObj_min_dev_year = $("[name='min_dev_year']");                   				 
	       var checkObj_max_dev_year = $("[name='max_dev_year']");                 						 
	       var checkObj_min_operate_year = $("[name='min_operate_year']");                  			
	       var checkObj_max_operate_year = $("[name='max_operate_year']");                    		 
	       var checkObj_min_design_year = $("[name='min_design_year']");                   			 
	       var checkObj_max_design_year = $("[name='max_design_year']");                 			 
	       var checkObj_min_publish_year = $("[name='min_publish_year']");                  		 
	       var checkObj_max_publish_year = $("[name='max_publish_year']");                    		 
	       var checkObj_min_reg_date = $("[name='min_reg_date']");                  				 
	       var checkObj_max_reg_date = $("[name='max_reg_date']");                 	 
	       var checkObj_keyword1 = $("[name='keyword1']");                  			 
	       var checkObj_keyword2 = $("[name='keyword2']");                     		 
	    
	       if(checkObj_min_dispatch_start_date.val()=="" && checkObj_max_dispatch_start_date.val()!=""){
	           alert("최소 파견 시작일을 설정해주세요.")
		       return;
	       }
	       else{
			    if(checkObj_min_dispatch_start_date.val()>checkObj_max_dispatch_start_date.val()&& checkObj_max_dispatch_start_date.val()!=""){
			       alert("최소 파견 시작일은 최대 파견 시작일을 넘을 수 없습니다.")
			    return;
			  	}
	       }
	       if(checkObj_min_dispatch_finish_date.val()=="" && checkObj_max_dispatch_finish_date.val()!=""){
	           alert("최소 파견 종료일을 설정해주세요.")
		       return;
	       }
	       else{
			    if(checkObj_min_dispatch_finish_date.val()>checkObj_max_dispatch_finish_date.val()&& checkObj_max_dispatch_finish_date.val()!=""){
			       alert("최소 파견 종료일은 최대 파견 종료일을 넘을 수 없습니다.")
			    return;
			    }
	       }
	       if(checkObj_min_dispatchTerm.val()=="" && checkObj_max_dispatchTerm.val()!=""){
	           alert("최소 파견 기간일을 설정해주세요.")
		       return;
	       }
	       else{
			    if(checkObj_min_dispatchTerm.val()>checkObj_max_dispatchTerm.val()&& checkObj_max_dispatchTerm.val()!=""){
			       alert("최소 파견 기간은 최대 파견 기간을 넘을 수 없습니다.")
			    return;
			    }
	       }
	       if(checkObj_min_dev_year.val()=="" && checkObj_max_dev_year.val()!=""){
	           alert("최소 개발년차를 설정해주세요.")
		       return;
	       }
	       else{
			    if(checkObj_min_dev_year.val()>checkObj_max_dev_year.val() && checkObj_max_dev_year.val()!=""){
			       alert("최소 개발년차는 최대 개발년차를 넘을 수 없습니다.")
			    return;
			    }
	       }
	       if(checkObj_min_operate_year.val()=="" && checkObj_max_operate_year.val()!=""){
	           alert("최소 운영년차를 설정해주세요.")
		       return;
	       }
	       else{
			    if(checkObj_min_operate_year.val()>checkObj_max_operate_year.val()&& checkObj_max_operate_year.val()!=""){
			       alert("최소 운영년차는 최대 운영년차를 넘을 수 없습니다.")
			    return;
			    }
	       }
	       if(checkObj_min_design_year.val()=="" && checkObj_max_design_year.val()!=""){
	           alert("최소 디자이너년차를 설정해주세요.")
		       return;
	       }
	       else{
			    if(checkObj_min_design_year.val()>checkObj_max_design_year.val()&& checkObj_max_design_year.val()!=""){
			       alert("최소 디자이너년차는 최대 디자이너년차를 넘을 수 없습니다.")
			    return;
			    }
	       }
	       if(checkObj_min_publish_year.val()=="" && checkObj_max_publish_year.val()!=""){
	           alert("최소 퍼블리셔년차를 설정해주세요.")
		       return;
	       }
	       else{
			    if(checkObj_min_publish_year.val()>checkObj_max_publish_year.val() && checkObj_max_publish_year.val()!=""){
			       alert("최소 퍼블리셔년차는 최대 퍼블리셔년차를 넘을 수 없습니다.")
			    return;
			    }
	       }
	       if(checkObj_min_reg_date.val()=="" && checkObj_max_reg_date.val()!=""){
	           alert("최소 접수일자를 설정해주세요.")
		       return;
	       }
	       else{
			    if(checkObj_min_reg_date.val()>checkObj_max_reg_date.val()&& checkObj_max_reg_date.val()!=""){
			       alert("최소 접수일자는 최대 접수일자를 넘을 수 없습니다.")
			    return;
			    }
	       }
		    
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

				 ajax(
               "/searchDispatch.do"
               ,"post"
               ,$(".dispatchRegForm")
               ,function(responseHtml){
                  var obj = $(responseHtml);
                  var prjSort = obj.find(".prjSort").html();
                  var accent = obj.find(".accent").html();
                  var searchResult_box = obj.find(".searchResult_box").html();
                  var pageNos = obj.find(".prj_search_desc .pageNos").html();

                  var ascDesc1 =$("[name='prjSort1']").val();
                  var ascDesc2 =$("[name='prjSort2']").val();
                  var ascDesc3 =$("[name='prjSort3']").val();
                  var ascDesc4 =$("[name='prjSort4']").val();
                  var ascDesc5 =$("[name='prjSort5']").val();
                  var html = 
                      '<div class="isEmpty"><i class="fa fa-search" aria-hidden="true"></i>검색 결과가 없습니다.</div>';

                           $(".prjSort").html(prjSort);
                           $(".accent").html(accent);
                           $(".searchResult_box").html(searchResult_box);
                           $(".pageNos").html(pageNos);
                           $("[name='prjSort1']").val(ascDesc1);
                           $("[name='prjSort2']").val(ascDesc2);
                           $("[name='prjSort3']").val(ascDesc3);
                           $("[name='prjSort4']").val(ascDesc4);
                           $("[name='prjSort5']").val(ascDesc5);
                           $('.resultCate, .pageNos').show();

                  if($('.accent').text() == 0 || $('.accent').text() == '0') {
                       $('.searchResult_box').html( html );
                       $('.resultCate').hide();
                       $('.pageNos').hide();
                     }
                     
            }
         );
		}
	   
  function selectDev(a,b,e) {
	$("[name='all_dev_num']").val(a);
	
     var pName =  $('.isPjName').text(),
             dName = b,
             join_text = $(e).text();
        if(confirm("선택된 프로젝트 [" +pName+ "] 에 선택된 개발자 [" +dName+ "]를 "+join_text+"하시겠습니까?")){
        	if(join_text=="등록"){
        		ajax(
        	              "/insertDispatch.do"
        	              ,"post"
        	              ,$("[name='dispatchRegForm']")
        	              ,function(insertDispatchCnt){
       	            	       	if(insertDispatchCnt>=1 ){
       	            	          alert(join_text+"되었습니다.");
      	            	          ajax_searchDispatch();
       	              			}
       	            	       	else{
         	            	    	alert("등록 중에 오류가 발생했습니다. 잠시 후 시도해주십시오.");
         	            	    }
       	            	   }
         	    );
        	}
        	
        
        else if(join_text=="삭제"){
        		ajax(
      	              "/deleteDispatch.do"
      	              ,"post"
      	              ,$("[name='dispatchRegForm']")
      	              ,function(deleteDispatchCnt){
     	            	       	if(deleteDispatchCnt>=1 ){
     	            	          alert(join_text+"되었습니다.");
     	            	          ajax_searchDispatch();
     	              			}
     	            	       	else{
			            	    	alert("삭제 중에 오류가 발생했습니다. 잠시 후 시도해주십시오.");
			            	    }
			           }
      	        );
        	}
     }
  }
   function selectPrj(e,n) {
    if(confirm('['+e+'] 프로젝트를 선택 하시겠습니까?')) {
        $(".prj_num").val(n);
      $('.prj_search_desc').slideUp();
      html = '선택된 프로젝트 : <span class="isPjName">' + e + '</span><span class="re_search" onclick="research()">재검색</span>';
      $('.prj_title > div').html(html);
      $('.select_prj_name').html(e);
      $('.search_dev_box').show();
      $('.devResult').animate({ scrollTop: 0 }, "fast");
      $('.save').removeClass('un');  
      
      ajax_searchDispatch();
    }
  }
   function ajax_searchDispatch(){
	   ajax(
	              "/searchDispatch.do"
	              ,"post"
	              ,$("[name='dispatchRegForm']")
	              ,function(responseHtml){
	                 var obj = $(responseHtml);

	                
	                 var searchResult =  obj.filter(".popup").find(".dim")
	                 	.find(".popup_main").find(".search_dev_box")
	                 	.find(".searchResult").find(".searchDevResult_box").html();
	                 var all_dev_num = obj.find(".all_dev_num").html();
	                 $(".searchDevDetail").html(searchResult);
	                 $(".all_dev_num").html(all_dev_num);
	                 
	              }
	        );
   }

  function research() {
    html = '프로젝트 정보 검색';
    $('.prj_title > div').html(html);
    $('.prj_search_desc').slideDown();
    $('.search_dev_box').hide();
    $('.devResult').animate({ scrollTop: 0 }, "fast");
    
    $('.save').addClass('un');      
  }

  function showPrjSearch() {
    $('.prj_search_desc').slideToggle();
    $('.devResult').animate({ scrollTop: 0 }, "fast");

    $('.save').addClass('un');      
  }

   function selectAll(e) {
      $(e).siblings('input[type=checkbox]').prop('checked', true);
   }

  function closePopup(){
    $('.inform').animate({ scrollTop: 0 }, "fast");
     $('.popup').hide(); 
     research();
		 reSearch1()
  }

  function showPopup(e, free_num){
     $('.popup').show();   
    $('.search').focus();

    research();
  }
  
  function savePopup() {
    $('.popup').hide();   
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



   
</script>
</head>
<style>
</style>
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
            <td class="main_cate active" onclick="location.replace('/searchDispatch.do')">파견현황</td>
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
  <div>
    <form name="dispatch_search" class="boardForm">
      <header>
         <div>파견 현황 검색 </div>
         <small>파견현황 검색 시 <small>최소치</small> 입력과  <small>최대치</small> 입력에 유의하여 검색해 주세요.</small>
       </header>

       <div class="search_bar_box">
        <tr>
          <td>
            <input type="text" name="keyword1" maxlength="30" >
            <select name="orand">
                  <option value="or">or
                  <option value="and">and
            </select>
            <input type="text" name="keyword2" >
            <input onclick="dateEmpty(this, 'text')" type="button" name="grad_reset" class="grad_reset gray_btn" value="비움">
            <input type="button" onclick="dispatchSearch()" name="ㄴearch" class="search" value="검색">
          </td>
        </tr>
        <div class="button_box">
          <input type="button" name="reSearch" class="desc_btn" onclick="reSearch1()" value="초기화 후 전부검색">
          <input type="button" onclick="showPopup();" name="regist" class="search desc_btn freeSearch" value="파견 등록">
          <span class='filter' onclick="showDesc(this)"><i class="fa fa-angle-down" aria-hidden="true"></i></span>
        </div>
      </div>
      <div class="desc_box">
        <table>
        <div>
        <div>
        <div class="title">
        근무자/퇴사자
        </div> 
          <input type="checkbox" name="is_retire" value="1">근무자
          <input type="checkbox" name="is_retire" value="2">퇴사자
      </div>
      <div>
          <div class="title">파견기간</div>
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
        </div>
        <div>
            <div class="title">파견시작일</div>
              <input type="month" name="min_dispatch_start_date1"> ~
              <input type="month" name="max_dispatch_start_date1">
              <span onclick="dateEmpty(this, 'date')" style="cursor: pointer;" class="empty_btn">비움</span>
        </div>
        <div>
          <div class="title">파견종료일</div>
          <input type="month" name="min_dispatch_finish_date1"> ~
          <input type="month" name="max_dispatch_finish_date1">
          <input type="checkbox" name="dispatch_finish_date" value="1">종료일확정
          <input type="checkbox" name="dispatch_finish_date" value="2">종료일미확정
          <span onclick="dateEmpty(this, 'date')" style="cursor: pointer;" class="empty_btn">비움</span>
        </div>
        <div>
            <div class="title">년차</div>
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
        </div>
        <div>
          <div class="title">역할</div>
          <input type="checkbox" name="dispatch_role" value="1">개발
          <input type="checkbox" name="dispatch_role" value="2">운영
          <input type="checkbox" name="dispatch_role" value="3">분석설계
          <input type="checkbox" name="dispatch_role" value="4">PM
          <input type="checkbox" name="dispatch_role" value="5">PL
          <input type="checkbox" name="dispatch_role" value="6">웹디
          <input type="checkbox" name="dispatch_role" value="7">기타
      </div>
      </div>
        </table>
      </div>
      
      	<input type="hidden" name="selectPageNo" value="1">
      
      <table>
        <section class="count_desc">
          <section class="searchResultCnt">
              검색개수 : <span class="impect">${requestScope.dispatchListMap.dispatchListCnt}</span> 
              개
            </section>
          
            <select name="rowCntPerPage" onChange="dispatchSearch()" class="rownum">
                  <option value="10">10 
                  <option value="15">15 
                  <option value="20">20 
            </select>&nbsp;행 보기
        </section>
       </table>
       
       
       <input type="hidden" name="dispatchSortTag1">
		<input type="hidden" name="dispatchSortTag2">
		<input type="hidden" name="dispatchSortTag3">
		<input type="hidden" name="dispatchSortTag4">
		<input type="hidden" name="dispatchSortTag5">
		<input type="hidden" name="dispatchSortTag6">
		<input type="hidden" name="dispatchSortTag7">
		<input type="hidden" name="dispatchSortTag8">
		
		<div class="dispatchSort">
		<div class="title">정렬기준</div>
		<select name="dispatchSort1" onchange="sortDispatchSelect1()">
			<option></option>
			<option value="sub.all_dev_name asc">파견개발자명 오름차순</option>
			<option value="sub.all_dev_name desc">파견개발자명 내림차순</option>
			<option value="p.prj_name asc">프로젝트명 오름차순</option>
			<option value="p.prj_name desc">프로젝트명 내림차순</option>
			<option value="sub.dev_year asc">현재년차 오름차순</option>
			<option value="sub.dev_year desc">현재년차 내림차순</option>
			<option value="(p.max_period-p.min_period)/30 asc">파견기간 오름차순</option>
			<option value="(p.max_period-p.min_period)/30 desc">파견기간 내림차순</option>				
			<option value="min_period asc">파견시작일 오름차순</option>
			<option value="min_period desc">파견시작일 내림차순</option>
			<option value="p.max_period asc">파견종료일 오름차순</option>
			<option value="p.max_period desc">파견종료일 내림차순</option>
			<option value="(p.max_period-sysdate) asc">종료일카운트 오름차순</option>
			<option value="(p.max_period-sysdate) desc">종료일카운트 내림차순</option>				
			<option value="(select cooperator_name from code_cooperator_name ccn where p.cooperator_name = ccn.cooperator_name_code) asc">협력업체 오름차순</option>
			<option value="(select cooperator_name from code_cooperator_name ccn where p.cooperator_name = ccn.cooperator_name_code) desc">협력업체 내림차순</option>
		</select>
		<select name="dispatchSort2" onchange="sortDispatchSelect2()">
			<option></option>
			<c:if test="${param.dispatchSortTag1 != 'all_dev_name'}">
			<option value="sub.all_dev_name asc">파견개발자명 오름차순</option>
			<option value="sub.all_dev_name desc">파견개발자명 내림차순</option>
			</c:if>
			<c:if test="${param.dispatchSortTag1 != 'prj_name'}">
			<option value="p.prj_name asc">프로젝트명 오름차순</option>
			<option value="p.prj_name desc">프로젝트명 내림차순</option>
			</c:if>
			<c:if test="${param.dispatchSortTag1 != 'dev_year'}">
			<option value="sub.dev_year asc">현재년차 오름차순</option>
			<option value="sub.dev_year desc">현재년차 내림차순</option>
			</c:if>
			<c:if test="${param.dispatchSortTag1 != 'period'}">
			<option value="(p.max_period-p.min_period)/30 asc">파견기간 오름차순</option>
			<option value="(p.max_period-p.min_period)/30 desc">파견기간 내림차순</option>	
			</c:if>
			<c:if test="${param.dispatchSortTag1 != 'start_date'}">			
			<option value="min_period asc">파견시작일 오름차순</option>
			<option value="min_period desc">파견시작일 내림차순</option>
			</c:if>
			<c:if test="${param.dispatchSortTag1 != 'end_date'}">
			<option value="p.max_period asc">파견종료일 오름차순</option>
			<option value="p.max_period desc">파견종료일 내림차순</option>
			</c:if>
			<c:if test="${param.dispatchSortTag1 != 'end_count'}">
			<option value="(p.max_period-sysdate) asc">종료일카운트 오름차순</option>
			<option value="(p.max_period-sysdate) desc">종료일카운트 내림차순</option>		
			</c:if>
			<c:if test="${param.dispatchSortTag1 != 'cooperator_name'}">		
			<option value="(select cooperator_name from code_cooperator_name ccn where p.cooperator_name = ccn.cooperator_name_code) asc">협력업체 오름차순</option>
			<option value="(select cooperator_name from code_cooperator_name ccn where p.cooperator_name = ccn.cooperator_name_code) desc">협력업체 내림차순</option>
			</c:if>
		</select>
		<select name="dispatchSort3" onchange="sortDispatchSelect3()">
			<option></option>
			<c:if test="${param.dispatchSortTag1 != 'all_dev_name' and param.dispatchSortTag2 != 'all_dev_name'}">
			<option value="sub.all_dev_name asc">파견개발자명 오름차순</option>
			<option value="sub.all_dev_name desc">파견개발자명 내림차순</option>
			</c:if>
			<c:if test="${param.dispatchSortTag1 != 'prj_name' and param.dispatchSortTag2 != 'prj_name'}">
			<option value="p.prj_name asc">프로젝트명 오름차순</option>
			<option value="p.prj_name desc">프로젝트명 내림차순</option>
			</c:if>
			<c:if test="${param.dispatchSortTag1 != 'dev_year' and param.dispatchSortTag2 != 'dev_year'}">
			<option value="sub.dev_year asc">현재년차 오름차순</option>
			<option value="sub.dev_year desc">현재년차 내림차순</option>
			</c:if>
			<c:if test="${param.dispatchSortTag1 != 'period' and param.dispatchSortTag2 != 'period'}">
			<option value="(p.max_period-p.min_period)/30 asc">파견기간 오름차순</option>
			<option value="(p.max_period-p.min_period)/30 desc">파견기간 내림차순</option>	
			</c:if>
			<c:if test="${param.dispatchSortTag1 != 'start_date' and param.dispatchSortTag2 != 'start_date'}">			
			<option value="min_period asc">파견시작일 오름차순</option>
			<option value="min_period desc">파견시작일 내림차순</option>
			</c:if>
			<c:if test="${param.dispatchSortTag1 != 'end_date' and param.dispatchSortTag2 != 'end_date'}">
			<option value="p.max_period asc">파견종료일 오름차순</option>
			<option value="p.max_period desc">파견종료일 내림차순</option>
			</c:if>
			<c:if test="${param.dispatchSortTag1 != 'end_count' and param.dispatchSortTag2 != 'end_count'}">
			<option value="(p.max_period-sysdate) asc">종료일카운트 오름차순</option>
			<option value="(p.max_period-sysdate) desc">종료일카운트 내림차순</option>		
			</c:if>
			<c:if test="${param.dispatchSortTag1 != 'cooperator_name' and param.dispatchSortTag2 != 'cooperator_name'}">		
			<option value="(select cooperator_name from code_cooperator_name ccn where p.cooperator_name = ccn.cooperator_name_code) asc">협력업체 오름차순</option>
			<option value="(select cooperator_name from code_cooperator_name ccn where p.cooperator_name = ccn.cooperator_name_code) desc">협력업체 내림차순</option>
			</c:if>
		</select>
       <select name="dispatchSort4" onchange="sortDispatchSelect4()">
			<option></option>
			<c:if test="${param.dispatchSortTag1 != 'all_dev_name' and param.dispatchSortTag2 != 'all_dev_name' and param.dispatchSortTag3 != 'all_dev_name'}">
			<option value="sub.all_dev_name asc">파견개발자명 오름차순</option>
			<option value="sub.all_dev_name desc">파견개발자명 내림차순</option>
			</c:if>
			<c:if test="${param.dispatchSortTag1 != 'prj_name' and param.dispatchSortTag2 != 'prj_name' and param.dispatchSortTag3 != 'prj_name'}">
			<option value="p.prj_name asc">프로젝트명 오름차순</option>
			<option value="p.prj_name desc">프로젝트명 내림차순</option>
			</c:if>
			<c:if test="${param.dispatchSortTag1 != 'dev_year' and param.dispatchSortTag2 != 'dev_year' and param.dispatchSortTag3 != 'dev_year'}">
			<option value="sub.dev_year asc">현재년차 오름차순</option>
			<option value="sub.dev_year desc">현재년차 내림차순</option>
			</c:if>
			<c:if test="${param.dispatchSortTag1 != 'period' and param.dispatchSortTag2 != 'period' and param.dispatchSortTag3 != 'period'}">
			<option value="(p.max_period-p.min_period)/30 asc">파견기간 오름차순</option>
			<option value="(p.max_period-p.min_period)/30 desc">파견기간 내림차순</option>	
			</c:if>
			<c:if test="${param.dispatchSortTag1 != 'start_date' and param.dispatchSortTag2 != 'start_date' and param.dispatchSortTag3 != 'start_date'}">			
			<option value="min_period asc">파견시작일 오름차순</option>
			<option value="min_period desc">파견시작일 내림차순</option>
			</c:if>
			<c:if test="${param.dispatchSortTag1 != 'end_date' and param.dispatchSortTag2 != 'end_date' and param.dispatchSortTag3 != 'end_date'}">
			<option value="p.max_period asc">파견종료일 오름차순</option>
			<option value="p.max_period desc">파견종료일 내림차순</option>
			</c:if>
			<c:if test="${param.dispatchSortTag1 != 'end_count' and param.dispatchSortTag2 != 'end_count' and param.dispatchSortTag3 != 'end_count'}">
			<option value="(p.max_period-sysdate) asc">종료일카운트 오름차순</option>
			<option value="(p.max_period-sysdate) desc">종료일카운트 내림차순</option>		
			</c:if>
			<c:if test="${param.dispatchSortTag1 != 'cooperator_name' and param.dispatchSortTag2 != 'cooperator_name' and param.dispatchSortTag3 != 'cooperator_name'}">		
			<option value="(select cooperator_name from code_cooperator_name ccn where p.cooperator_name = ccn.cooperator_name_code) asc">협력업체 오름차순</option>
			<option value="(select cooperator_name from code_cooperator_name ccn where p.cooperator_name = ccn.cooperator_name_code) desc">협력업체 내림차순</option>
			</c:if>
		</select>
		<select name="dispatchSort5" onchange="sortDispatchSelect5()">
			<option></option>
			<c:if test="${param.dispatchSortTag1 != 'all_dev_name' and param.dispatchSortTag2 != 'all_dev_name' and param.dispatchSortTag3 != 'all_dev_name' and param.dispatchSortTag4 != 'all_dev_name'}">
			<option value="sub.all_dev_name asc">파견개발자명 오름차순</option>
			<option value="sub.all_dev_name desc">파견개발자명 내림차순</option>
			</c:if>
			<c:if test="${param.dispatchSortTag1 != 'prj_name' and param.dispatchSortTag2 != 'prj_name' and param.dispatchSortTag3 != 'prj_name' and param.dispatchSortTag4 != 'prj_name'}">
			<option value="p.prj_name asc">프로젝트명 오름차순</option>
			<option value="p.prj_name desc">프로젝트명 내림차순</option>
			</c:if>
			<c:if test="${param.dispatchSortTag1 != 'dev_year' and param.dispatchSortTag2 != 'dev_year' and param.dispatchSortTag3 != 'dev_year' and param.dispatchSortTag4 != 'dev_year'}">
			<option value="sub.dev_year asc">현재년차 오름차순</option>
			<option value="sub.dev_year desc">현재년차 내림차순</option>
			</c:if>
			<c:if test="${param.dispatchSortTag1 != 'period' and param.dispatchSortTag2 != 'period' and param.dispatchSortTag3 != 'period' and param.dispatchSortTag4 != 'period'}">
			<option value="(p.max_period-p.min_period)/30 asc">파견기간 오름차순</option>
			<option value="(p.max_period-p.min_period)/30 desc">파견기간 내림차순</option>	
			</c:if>
			<c:if test="${param.dispatchSortTag1 != 'start_date' and param.dispatchSortTag2 != 'start_date' and param.dispatchSortTag3 != 'start_date' and param.dispatchSortTag4 != 'start_date'}">			
			<option value="min_period asc">파견시작일 오름차순</option>
			<option value="min_period desc">파견시작일 내림차순</option>
			</c:if>
			<c:if test="${param.dispatchSortTag1 != 'end_date' and param.dispatchSortTag2 != 'end_date' and param.dispatchSortTag3 != 'end_date' and param.dispatchSortTag4 != 'end_date'}">
			<option value="p.max_period asc">파견종료일 오름차순</option>
			<option value="p.max_period desc">파견종료일 내림차순</option>
			</c:if>
			<c:if test="${param.dispatchSortTag1 != 'end_count' and param.dispatchSortTag2 != 'end_count' and param.dispatchSortTag3 != 'end_count' and param.dispatchSortTag4 != 'end_count'}">
			<option value="(p.max_period-sysdate) asc">종료일카운트 오름차순</option>
			<option value="(p.max_period-sysdate) desc">종료일카운트 내림차순</option>		
			</c:if>
			<c:if test="${param.dispatchSortTag1 != 'cooperator_name' and param.dispatchSortTag2 != 'cooperator_name' and param.dispatchSortTag3 != 'cooperator_name' and param.dispatchSortTag4 != 'cooperator_name'}">		
			<option value="(select cooperator_name from code_cooperator_name ccn where p.cooperator_name = ccn.cooperator_name_code) asc">협력업체 오름차순</option>
			<option value="(select cooperator_name from code_cooperator_name ccn where p.cooperator_name = ccn.cooperator_name_code) desc">협력업체 내림차순</option>
			</c:if>
		</select>
		<select name="dispatchSort6" onchange="sortDispatchSelect6()">
			<option></option>
			<c:if test="${param.dispatchSortTag1 != 'all_dev_name' and param.dispatchSortTag2 != 'all_dev_name' and param.dispatchSortTag3 != 'all_dev_name' and param.dispatchSortTag4 != 'all_dev_name' and param.dispatchSortTag5 != 'all_dev_name'}">
			<option value="sub.all_dev_name asc">파견개발자명 오름차순</option>
			<option value="sub.all_dev_name desc">파견개발자명 내림차순</option>
			</c:if>
			<c:if test="${param.dispatchSortTag1 != 'prj_name' and param.dispatchSortTag2 != 'prj_name' and param.dispatchSortTag3 != 'prj_name' and param.dispatchSortTag4 != 'prj_name' and param.dispatchSortTag5 != 'prj_name'}">
			<option value="p.prj_name asc">프로젝트명 오름차순</option>
			<option value="p.prj_name desc">프로젝트명 내림차순</option>
			</c:if>
			<c:if test="${param.dispatchSortTag1 != 'dev_year' and param.dispatchSortTag2 != 'dev_year' and param.dispatchSortTag3 != 'dev_year' and param.dispatchSortTag4 != 'dev_year' and param.dispatchSortTag5 != 'dev_year'}">
			<option value="sub.dev_year asc">현재년차 오름차순</option>
			<option value="sub.dev_year desc">현재년차 내림차순</option>
			</c:if>
			<c:if test="${param.dispatchSortTag1 != 'period' and param.dispatchSortTag2 != 'period' and param.dispatchSortTag3 != 'period' and param.dispatchSortTag4 != 'period' and param.dispatchSortTag5 != 'period'}">
			<option value="(p.max_period-p.min_period)/30 asc">파견기간 오름차순</option>
			<option value="(p.max_period-p.min_period)/30 desc">파견기간 내림차순</option>	
			</c:if>
			<c:if test="${param.dispatchSortTag1 != 'start_date' and param.dispatchSortTag2 != 'start_date' and param.dispatchSortTag3 != 'start_date' and param.dispatchSortTag4 != 'start_date' and param.dispatchSortTag5 != 'start_date'}">			
			<option value="min_period asc">파견시작일 오름차순</option>
			<option value="min_period desc">파견시작일 내림차순</option>
			</c:if>
			<c:if test="${param.dispatchSortTag1 != 'end_date' and param.dispatchSortTag2 != 'end_date' and param.dispatchSortTag3 != 'end_date' and param.dispatchSortTag4 != 'end_date' and param.dispatchSortTag5 != 'end_date'}">
			<option value="p.max_period asc">파견종료일 오름차순</option>
			<option value="p.max_period desc">파견종료일 내림차순</option>
			</c:if>
			<c:if test="${param.dispatchSortTag1 != 'end_count' and param.dispatchSortTag2 != 'end_count' and param.dispatchSortTag3 != 'end_count' and param.dispatchSortTag4 != 'end_count' and param.dispatchSortTag5 != 'end_count'}">
			<option value="(p.max_period-sysdate) asc">종료일카운트 오름차순</option>
			<option value="(p.max_period-sysdate) desc">종료일카운트 내림차순</option>		
			</c:if>
			<c:if test="${param.dispatchSortTag1 != 'cooperator_name' and param.dispatchSortTag2 != 'cooperator_name' and param.dispatchSortTag3 != 'cooperator_name' and param.dispatchSortTag4 != 'cooperator_name' and param.dispatchSortTag5 != 'cooperator_name'}">		
			<option value="(select cooperator_name from code_cooperator_name ccn where p.cooperator_name = ccn.cooperator_name_code) asc">협력업체 오름차순</option>
			<option value="(select cooperator_name from code_cooperator_name ccn where p.cooperator_name = ccn.cooperator_name_code) desc">협력업체 내림차순</option>
			</c:if>
		</select>
		<select name="dispatchSort7" onchange="sortDispatchSelect7()">
			<option></option>
			<c:if test="${param.dispatchSortTag1 != 'all_dev_name' and param.dispatchSortTag2 != 'all_dev_name' and param.dispatchSortTag3 != 'all_dev_name' and param.dispatchSortTag4 != 'all_dev_name' and param.dispatchSortTag5 != 'all_dev_name' and param.dispatchSortTag6 != 'all_dev_name'}">
			<option value="sub.all_dev_name asc">파견개발자명 오름차순</option>
			<option value="sub.all_dev_name desc">파견개발자명 내림차순</option>
			</c:if>
			<c:if test="${param.dispatchSortTag1 != 'prj_name' and param.dispatchSortTag2 != 'prj_name' and param.dispatchSortTag3 != 'prj_name' and param.dispatchSortTag4 != 'prj_name' and param.dispatchSortTag5 != 'prj_name' and param.dispatchSortTag6 != 'prj_name'}">
			<option value="p.prj_name asc">프로젝트명 오름차순</option>
			<option value="p.prj_name desc">프로젝트명 내림차순</option>
			</c:if>
			<c:if test="${param.dispatchSortTag1 != 'dev_year' and param.dispatchSortTag2 != 'dev_year' and param.dispatchSortTag3 != 'dev_year' and param.dispatchSortTag4 != 'dev_year' and param.dispatchSortTag5 != 'dev_year' and param.dispatchSortTag6 != 'dev_year'}">
			<option value="sub.dev_year asc">현재년차 오름차순</option>
			<option value="sub.dev_year desc">현재년차 내림차순</option>
			</c:if>
			<c:if test="${param.dispatchSortTag1 != 'period' and param.dispatchSortTag2 != 'period' and param.dispatchSortTag3 != 'period' and param.dispatchSortTag4 != 'period' and param.dispatchSortTag5 != 'period' and param.dispatchSortTag6 != 'period'}">
			<option value="(p.max_period-p.min_period)/30 asc">파견기간 오름차순</option>
			<option value="(p.max_period-p.min_period)/30 desc">파견기간 내림차순</option>	
			</c:if>
			<c:if test="${param.dispatchSortTag1 != 'start_date' and param.dispatchSortTag2 != 'start_date' and param.dispatchSortTag3 != 'start_date' and param.dispatchSortTag4 != 'start_date' and param.dispatchSortTag5 != 'start_date' and param.dispatchSortTag6 != 'start_date'}">			
			<option value="min_period asc">파견시작일 오름차순</option>
			<option value="min_period desc">파견시작일 내림차순</option>
			</c:if>
			<c:if test="${param.dispatchSortTag1 != 'end_date' and param.dispatchSortTag2 != 'end_date' and param.dispatchSortTag3 != 'end_date' and param.dispatchSortTag4 != 'end_date' and param.dispatchSortTag5 != 'end_date' and param.dispatchSortTag6 != 'end_date'}">
			<option value="p.max_period asc">파견종료일 오름차순</option>
			<option value="p.max_period desc">파견종료일 내림차순</option>
			</c:if>
			<c:if test="${param.dispatchSortTag1 != 'end_count' and param.dispatchSortTag2 != 'end_count' and param.dispatchSortTag3 != 'end_count' and param.dispatchSortTag4 != 'end_count' and param.dispatchSortTag5 != 'end_count' and param.dispatchSortTag6 != 'end_count'}">
			<option value="(p.max_period-sysdate) asc">종료일카운트 오름차순</option>
			<option value="(p.max_period-sysdate) desc">종료일카운트 내림차순</option>		
			</c:if>
			<c:if test="${param.dispatchSortTag1 != 'cooperator_name' and param.dispatchSortTag2 != 'cooperator_name' and param.dispatchSortTag3 != 'cooperator_name' and param.dispatchSortTag4 != 'cooperator_name' and param.dispatchSortTag5 != 'cooperator_name' and param.dispatchSortTag6 != 'cooperator_name'}">		
			<option value="(select cooperator_name from code_cooperator_name ccn where p.cooperator_name = ccn.cooperator_name_code) asc">협력업체 오름차순</option>
			<option value="(select cooperator_name from code_cooperator_name ccn where p.cooperator_name = ccn.cooperator_name_code) desc">협력업체 내림차순</option>
			</c:if>
		</select>
		<select name="dispatchSort8" onchange="sortDispatchSelect8()">
			<option></option>
			<c:if test="${param.dispatchSortTag1 != 'all_dev_name' and param.dispatchSortTag2 != 'all_dev_name' and param.dispatchSortTag3 != 'all_dev_name' and param.dispatchSortTag4 != 'all_dev_name' and param.dispatchSortTag5 != 'all_dev_name' and param.dispatchSortTag6 != 'all_dev_name' and param.dispatchSortTag7 != 'all_dev_name'}">
			<option value="sub.all_dev_name asc">파견개발자명 오름차순</option>
			<option value="sub.all_dev_name desc">파견개발자명 내림차순</option>
			</c:if>
			<c:if test="${param.dispatchSortTag1 != 'prj_name' and param.dispatchSortTag2 != 'prj_name' and param.dispatchSortTag3 != 'prj_name' and param.dispatchSortTag4 != 'prj_name' and param.dispatchSortTag5 != 'prj_name' and param.dispatchSortTag6 != 'prj_name' and param.dispatchSortTag7 != 'prj_name'}">
			<option value="p.prj_name asc">프로젝트명 오름차순</option>
			<option value="p.prj_name desc">프로젝트명 내림차순</option>
			</c:if>
			<c:if test="${param.dispatchSortTag1 != 'dev_year' and param.dispatchSortTag2 != 'dev_year' and param.dispatchSortTag3 != 'dev_year' and param.dispatchSortTag4 != 'dev_year' and param.dispatchSortTag5 != 'dev_year' and param.dispatchSortTag6 != 'dev_year' and param.dispatchSortTag7 != 'dev_year'}">
			<option value="sub.dev_year asc">현재년차 오름차순</option>
			<option value="sub.dev_year desc">현재년차 내림차순</option>
			</c:if>
			<c:if test="${param.dispatchSortTag1 != 'period' and param.dispatchSortTag2 != 'period' and param.dispatchSortTag3 != 'period' and param.dispatchSortTag4 != 'period' and param.dispatchSortTag5 != 'period' and param.dispatchSortTag6 != 'period' and param.dispatchSortTag7 != 'period'}">
			<option value="(p.max_period-p.min_period)/30 asc">파견기간 오름차순</option>
			<option value="(p.max_period-p.min_period)/30 desc">파견기간 내림차순</option>	
			</c:if>
			<c:if test="${param.dispatchSortTag1 != 'start_date' and param.dispatchSortTag2 != 'start_date' and param.dispatchSortTag3 != 'start_date' and param.dispatchSortTag4 != 'start_date' and param.dispatchSortTag5 != 'start_date' and param.dispatchSortTag6 != 'start_date' and param.dispatchSortTag7 != 'start_date'}">			
			<option value="min_period asc">파견시작일 오름차순</option>
			<option value="min_period desc">파견시작일 내림차순</option>
			</c:if>
			<c:if test="${param.dispatchSortTag1 != 'end_date' and param.dispatchSortTag2 != 'end_date' and param.dispatchSortTag3 != 'end_date' and param.dispatchSortTag4 != 'end_date' and param.dispatchSortTag5 != 'end_date' and param.dispatchSortTag6 != 'end_date' and param.dispatchSortTag7 != 'end_date'}">
			<option value="p.max_period asc">파견종료일 오름차순</option>
			<option value="p.max_period desc">파견종료일 내림차순</option>
			</c:if>
			<c:if test="${param.dispatchSortTag1 != 'end_count' and param.dispatchSortTag2 != 'end_count' and param.dispatchSortTag3 != 'end_count' and param.dispatchSortTag4 != 'end_count' and param.dispatchSortTag5 != 'end_count' and param.dispatchSortTag6 != 'end_count' and param.dispatchSortTag7 != 'end_count'}">
			<option value="(p.max_period-sysdate) asc">종료일카운트 오름차순</option>
			<option value="(p.max_period-sysdate) desc">종료일카운트 내림차순</option>		
			</c:if>
			<c:if test="${param.dispatchSortTag1 != 'cooperator_name' and param.dispatchSortTag2 != 'cooperator_name' and param.dispatchSortTag3 != 'cooperator_name' and param.dispatchSortTag4 != 'cooperator_name' and param.dispatchSortTag5 != 'cooperator_name' and param.dispatchSortTag6 != 'cooperator_name' and param.dispatchSortTag7 != 'cooperator_name'}">		
			<option value="(select cooperator_name from code_cooperator_name ccn where p.cooperator_name = ccn.cooperator_name_code) asc">협력업체 오름차순</option>
			<option value="(select cooperator_name from code_cooperator_name ccn where p.cooperator_name = ccn.cooperator_name_code) desc">협력업체 내림차순</option>
			</c:if>
		</select>
       </div>
<div name="searchResult" class="searchResult">
      <div class="resultCate">
        <div>파견<br>개발자명 </div>
		<div>핸드폰</div>
		<div>이메일</div>
		<div>프로젝트명</div>
		<div>현재<br>년차</div>
		<div>역할</div>
		<div>파견기간<br>(개월)</div>
		<div>파견<br>시작일</div>
		<div>파견<br>종료일</div>
		<div>종료일<br>카운트</div>
		<div>협력<br>업체</div>
      </div>
      <div class="DispatchSearchResult_box">
         <div>
          <c:forEach var="dispatchList" items="${requestScope.dispatchListMap.dispatchList}" varStatus="vs">
        <div class="searchDetail">
            <div>${dispatchList.dev_name} </div>
            <div>${dispatchList.phone}</div>
            <div>${dispatchList.email}</div>
            <div>${dispatchList.prj_name}</div>
            <div>${dispatchList.dev_year}</div>
            <div>${dispatchList.dispatch_role}</div>
            <div>${dispatchList.period}</div>
            <div>${dispatchList.start_date}</div>
            <div>${dispatchList.end_date}</div>
            <div>${dispatchList.end_count}</div>
            <div>${dispatchList.cooperator_name}</div>
        </div>
         </c:forEach>
         </div>
      </div>
      <div class="pageNos"> 
            <span onClick="pageNoClick(1)"><i class="fa fa-angle-left" aria-hidden="true"></i><i class="fa fa-angle-left" aria-hidden="true"></i></span>
        <span onClick="pageNoClick(${requestScope.dispatchListMap.selectPageNo}-1)"><i class="fa fa-angle-left" aria-hidden="true"></i></span>
         <c:forEach var="pageNo" begin="${requestScope.dispatchListMap.begin_pageNo}" end="${requestScope.dispatchListMap.end_pageNo}">
            <c:if test="${requestScope.dispatchListMap.selectPageNo==pageNo}">
              <span class='isSelect'>
								${pageNo}
							</span>
            </c:if>
         <c:if test="${requestScope.dispatchListMap.selectPageNo!=pageNo}">
            <span style="cursor:pointer" onClick="pageNoClick(${pageNo})">[${pageNo}]</span>
         </c:if>  
      </c:forEach> 

        <span onClick="pageNoClick(${requestScope.dispatchListMap.selectPageNo}+1)"><i class="fa fa-angle-right" aria-hidden="true"></i></span>
        <span onClick="pageNoClick(${requestScope.dispatchListMap.last_pageNo})"><i class="fa fa-angle-right" aria-hidden="true"></i><i class="fa fa-angle-right" aria-hidden="true"></i></span>

            </div>
   </div>
   
    </form>
  </div>

	<div class='popup'>
    <div class="dim">
       <div class='popup_main'>
        <form name="dispatchRegForm" class="boardForm freelancerRegForm dispatchRegForm">
          <header>프로젝트 파견 등록</header>
            <div class="inform">
            <div class="title prj_title">
              <div>프로젝트 정보 검색</div>
              </div>
              
			<input type = "hidden" name="prj_num" class="prj_num">
              <div class="prj_search_desc">
              <div>
               <div class="title">파견 시작일</div>
               <input type="date" name="min_dispatch_start_date">~<input type="date" name="max_dispatch_start_date">
               <input onclick="dateEmpty(this, 'date')" type="button" class="gray_btn" value="비움">
            </div>
            <div>
               <div class="title">파견 종료일</div>
               <input type="date" name="min_dispatch_finish_date">~<input type="date" name="max_dispatch_finish_date">   
               <input type="checkbox" value="파견종료일확정">파견종료일확정   
               <input type="button" onclick="dateEmpty(this, 'date')" class="gray_btn" value="비움">   
            </div>
            <div>
               <div class="title">파견기간</div>
               <select name="min_dispatchTerm">
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
               개월
               <input type="button" onclick="dateEmpty(this, 'select')" class="gray_btn" value="비움">
            </div>
            <div>
               <div class="title">개발년차</div>
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
            </div>
            <div>
               <div class="title">운영년차</div>
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
            </div>
            <div>
               <div class="title">디자이너연차</div>
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
            </div>
            <div>
               <div class="title">퍼블리셔연차</div>
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
            </div>
            <div>
               <div class="title">자격증</div>
                  <input type="checkbox" name="license" value="1">정보처리기사필수
                  <input type="checkbox" name="license" value="2">정보처리산업기사필수
                  <input type="button" onclick="selectAll(this)" value="모두선택" class="gray_btn">&nbsp;<input type="button" onclick="dateEmpty(this, 'checkbox')"value="비우기" class="gray_btn">
            </div>
            <div>
               <div class="title">접수일자</div>
               <input type="date" name="min_reg_date">~<input type="date" name="max_reg_date">
               <input onclick="dateEmpty(this, 'date')" type="button" class="gray_btn" value="비움">
            </div>
            <div>
               <div class="title">키워드</div><input type="text" name="keyword1" maxlength="30">
               <select name="orand">
                     <option value="or">or</option>
                     <option value="and">and</option>
               </select>
               <input type="text" name="keyword2" maxlength="30">
               <input type="button" onclick="dateEmpty(this, 'text')" class="gray_btn" value="비움">
            </div><br>
            <input type="hidden" name="selectPageNo" value="1">
              <div>
                <input type="button" onclick="search()" name="searchBoard" class="desc_btn2" value="검색">
                <input type="button" onclick="reSearch2()" name="reSearch" class="desc_btn" value="초기화 후 전부검색">
                <section class="count_desc">
                  <section class="searchResultCnt">
                      검색개수 : <span class="accent">${requestScope.prjListMap.prjListCnt}</span> 
                      개
                    </section>
                  
                    <select name="rowCntPerPage" onChange="search()" class="rownum">
                          <option value="10">10 
                          <option value="15">15 
                          <option value="20">20 
                    </select>&nbsp;행 보기
                </section>
          
              </div>
              
              <input type="hidden" name="prjSortTag1">
				<input type="hidden" name="prjSortTag2">
				<input type="hidden" name="prjSortTag3">
				<input type="hidden" name="prjSortTag4">
				<input type="hidden" name="prjSortTag5">
				
			<div class="prjSort">	
			<div class="title">정렬기준</div>
				<select name="prjSort1" onchange="sortPrjSelect1()">
					<option></option>
					<option value="prj_name asc">프로젝트명 오름차순</option>
					<option value="prj_name desc">프로젝트명 내림차순</option>
					<option value="reg_date asc">접수일 오름차순</option>
					<option value="reg_date desc">접수일 내림차순</option>
					<option value="min_period asc">시작일 오름차순</option>
					<option value="min_period desc">시작일 내림차순</option>
					<option value="max_period asc">종료일 오름차순</option>
					<option value="max_period desc">종료일 내림차순</option>				
					<option value="(max_period - min_period)/30 asc">기간 오름차순</option>
					<option value="(max_period - min_period)/30 desc">기간 내림차순</option>
				</select>
				<select name="prjSort2" onchange="sortPrjSelect2()">
					<option></option>
					<c:if test="${param.prjSortTag1 != 'prj_name'}">
					<option value="prj_name asc">프로젝트명 오름차순</option>
					<option value="prj_name desc">프로젝트명 내림차순</option>
					</c:if>
					<c:if test="${param.prjSortTag1 != 'reg_date'}">
					<option value="reg_date asc">접수일 오름차순</option>
					<option value="reg_date desc">접수일 내림차순</option>
					</c:if>
					<c:if test="${param.prjSortTag1 != 'min_period'}">
					<option value="min_period asc">시작일 오름차순</option>
					<option value="min_period desc">시작일 내림차순</option>
					</c:if>
					<c:if test="${param.prjSortTag1 != 'max_period'}">
					<option value="max_period asc">종료일 오름차순</option>
					<option value="max_period desc">종료일 내림차순</option>				
					</c:if>
					<c:if test="${param.prjSortTag1 != 'period'}">
					<option value="(max_period - min_period)/30 asc">기간 오름차순</option>
					<option value="(max_period - min_period)/30 desc">기간 내림차순</option>
					</c:if>
				</select>
				<select name="prjSort3" onchange="sortPrjSelect3()">
					<option></option>
					<c:if test="${param.prjSortTag1 != 'prj_name' and param.prjSortTag2 != 'prj_name'}">
					<option value="prj_name asc">프로젝트명 오름차순</option>
					<option value="prj_name desc">프로젝트명 내림차순</option>
					</c:if>
					<c:if test="${param.prjSortTag1 != 'reg_date' and param.prjSortTag2 != 'reg_date'}">
					<option value="reg_date asc">접수일 오름차순</option>
					<option value="reg_date desc">접수일 내림차순</option>
					</c:if>
					<c:if test="${param.prjSortTag1 != 'min_period' and param.prjSortTag2 != 'min_period'}">
					<option value="min_period asc">시작일 오름차순</option>
					<option value="min_period desc">시작일 내림차순</option>
					</c:if>
					<c:if test="${param.prjSortTag1 != 'max_period' and param.prjSortTag2 != 'max_period'}">
					<option value="max_period asc">종료일 오름차순</option>
					<option value="max_period desc">종료일 내림차순</option>		
					</c:if>
					<c:if test="${param.prjSortTag1 != 'period' and param.prjSortTag2 != 'period'}">		
					<option value="(max_period - min_period)/30 asc">기간 오름차순</option>
					<option value="(max_period - min_period)/30 desc">기간 내림차순</option>
					</c:if>
				</select>
				<select name="prjSort4" onchange="sortPrjSelect4()">
					<option></option>
					<c:if test="${param.prjSortTag1 != 'prj_name' and param.prjSortTag2 != 'prj_name' and param.prjSortTag3 != 'prj_name'}">
					<option value="prj_name asc">프로젝트명 오름차순</option>
					<option value="prj_name desc">프로젝트명 내림차순</option>
					</c:if>
					<c:if test="${param.prjSortTag1 != 'reg_date' and param.prjSortTag2 != 'reg_date' and param.prjSortTag3 != 'reg_date'}">
					<option value="reg_date asc">접수일 오름차순</option>
					<option value="reg_date desc">접수일 내림차순</option>
					</c:if>
					<c:if test="${param.prjSortTag1 != 'min_period' and param.prjSortTag2 != 'min_period' and param.prjSortTag3 != 'min_period'}">
					<option value="min_period asc">시작일 오름차순</option>
					<option value="min_period desc">시작일 내림차순</option>
					</c:if>
					<c:if test="${param.prjSortTag1 != 'max_period' and param.prjSortTag2 != 'max_period' and param.prjSortTag3 != 'max_period'}">
					<option value="max_period asc">종료일 오름차순</option>
					<option value="max_period desc">종료일 내림차순</option>			
					</c:if>	
					<c:if test="${param.prjSortTag1 != 'period' and param.prjSortTag2 != 'period' and param.prjSortTag3 != 'period'}">
					<option value="(max_period - min_period)/30 asc">기간 오름차순</option>
					<option value="(max_period - min_period)/30 desc">기간 내림차순</option>
					</c:if>
				</select>
				<select name="prjSort5" onchange="sortPrjSelect5()">
					<option></option>
					<c:if test="${param.prjSortTag1 != 'prj_name' and param.prjSortTag2 != 'prj_name' and param.prjSortTag3 != 'prj_name' and param.prjSortTag4 != 'prj_name'}">
					<option value="prj_name asc">프로젝트명 오름차순</option>
					<option value="prj_name desc">프로젝트명 내림차순</option>
					</c:if>
					<c:if test="${param.prjSortTag1 != 'reg_date' and param.prjSortTag2 != 'reg_date' and param.prjSortTag3 != 'reg_date' and param.prjSortTag4 != 'reg_date'}">
					<option value="reg_date asc">접수일 오름차순</option>
					<option value="reg_date desc">접수일 내림차순</option>
					</c:if>
					<c:if test="${param.prjSortTag1 != 'min_period' and param.prjSortTag2 != 'min_period' and param.prjSortTag3 != 'min_period' and param.prjSortTag4 != 'min_period'}">
					<option value="min_period asc">시작일 오름차순</option>
					<option value="min_period desc">시작일 내림차순</option>
					</c:if>
					<c:if test="${param.prjSortTag1 != 'max_period' and param.prjSortTag2 != 'max_period' and param.prjSortTag3 != 'max_period' and param.prjSortTag4 != 'max_period'}">
					<option value="max_period asc">종료일 오름차순</option>
					<option value="max_period desc">종료일 내림차순</option>		
					</c:if>
					<c:if test="${param.prjSortTag1 != 'period' and param.prjSortTag2 != 'period' and param.prjSortTag3 != 'period' and param.prjSortTag4 != 'period'}">		
					<option value="(max_period - min_period)/30 asc">기간 오름차순</option>
					<option value="(max_period - min_period)/30 desc">기간 내림차순</option>
					</c:if>
				</select>
				</div>	
				
             <div name="searchPrjResult" class="searchResult prjResult">
            <div class="resultCate">
               <div>프로젝트명</div>
				<div>접수일</div>
				<div>시작일</div>
				<div>종료일</div>
				<div>기간<br>(개월)</div>
                <div>역할</div>
            </div>
            <div class="searchResult_box">
            <div>
               <c:forEach var="prjList" items="${prjListMap.prjList}" varStatus="vs">
               <div class="searchPrjDetail" onclick="selectPrj('<c:out value="${prjList.prj_name}" />', '<c:out value="${prjList.prj_num}" />')">
                  <div>${prjList.prj_name}</div>
                  <div>${prjList.reg_date}</div>
                  <div>${prjList.start_date}</div>
                  <div>${prjList.finish_date}</div>
                  <div>${prjList.period}개월</div>
                  
                    <div>개발 : ${prjList.dev_personnel}명,
                     운영 : ${prjList.ope_personnel}명,
                     웹디 : ${prjList.desi_personnel}명,
                     퍼블리셔 : ${prjList.perb_personnel}명</div>
                  </div>
               </c:forEach>
               </div>
            </div>
        <div class="pageNos"> 
          <span onClick="Pnc(1)"><i class="fa fa-angle-left" aria-hidden="true"></i><i class="fa fa-angle-left" aria-hidden="true"></i></span>
          <span onClick="Pnc(${requestScope.prjListMap.selectPageNo}-1)"><i class="fa fa-angle-left" aria-hidden="true"></i></span>
          <c:forEach var="pageNo" begin="${requestScope.prjListMap.begin_pageNo}" end="${requestScope.prjListMap.end_pageNo}">
            <c:if test="${requestScope.prjListMap.selectPageNo==pageNo}">
              <span class="isSelect">${pageNo}</span>
            </c:if>
            <c:if test="${requestScope.prjListMap.selectPageNo!=pageNo}">
                <span style="cursor:pointer" onClick="Pnc(${pageNo})">[${pageNo}]</span>
            </c:if>  
         </c:forEach> 
        <span onClick="Pnc(${requestScope.prjListMap.selectPageNo}+1)"><i class="fa fa-angle-right" aria-hidden="true"></i></span>
        <span onClick="Pnc(${requestScope.prjListMap.last_pageNo})"><i class="fa fa-angle-right" aria-hidden="true"></i><i class="fa fa-angle-right" aria-hidden="true"></i></span>
        </div>
         </div>
              </div>
            </div>
            <div class="search_dev_box">
            <div class="select_num">
            	<div class="all_dev_num">
            		현재 투입 중인 개발자 : ${requestScope.allDevListMap.allDevListCnt} 명
            	</div>
            </div>
              <div name="searchResult" class="searchResult devResult">
                <div class="resultCate">
                  <div>역할</div>
                  <div>개발자명</div>
                  <div>핸드폰</div>
                  <div>이메일</div>
                  <div>현채년차</div>
                  <div>등록/삭제</div>
                </div>
                
                <input type="hidden" name="all_dev_num">
                <div class="searchDevResult_box">
                  <div class="searchDevDetail">
			    		<c:forEach var="allDevList" items="${allDevListMap.allDevList}" varStatus="vs">
        					<div class="searchDetail">
			                    <div>${allDevList.dev_dispatch_role}</div>
			                    <div>${allDevList.all_dev_name}</div>
			                    <div>${allDevList.phone}</div>
			                    <div>${allDevList.email}</div>
			                    <div>${allDevList.dev_year}</div>
			                    <div onclick="selectDev('<c:out value="${allDevList.all_dev_num}" />', '<c:out value="${allDevList.all_dev_name}" />',this)" class="prj_add_btn">${allDevList.is_join}</div>
			                 </div>
			     		</c:forEach>
                  </div>
                  
                </div>
              </div>
            </div>
          </form>
        </div>
      <div class="btn_box">
        <span onclick="closePopup()" name="cancel" class="cancel">닫기</span>
      </div>
    </div>
 </div>
</body>
</html>