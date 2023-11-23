<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/common.jsp"%>

<!doctype html>
<html>
<head>
   <meta charset="UTF-8">
   <title>프로젝트 검색</title>
   <link href="css/searchPrj.css" rel="stylesheet">

   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" integrity="sha512-5A8nwdMOWrSz20fDsjczgUidUBR8liPYU+WymTZP1lmY9G6Oc7HlZv156XqnsgNUzTyMefFTcsFH/tnJE/+xBg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
 </head>
 <script type="text/Javascript">
  window.onload = function () {search1()};
  

  function setMaxDate(e, minMax){
   var getMax = $(e).siblings('input');
   getMax.attr(minMax, $(e).val());
   }
   
  function showDesc(e) {
   $('.desc_box').slideToggle();
   $('.filter').toggleClass('active');
  }

 function reSearch2(){
	 location.reload();
 }
 	function Pnc(
         clickPageNo
         ){
      var formObj=$(".searchPrjForm");
      formObj.find("[name='selectPageNo']").val(clickPageNo);
      search1();
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
		  search1();
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
		  search1();
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
		  search1();
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
		  search1();
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
		  search1();
	}
 	
 	
 	
   function search1(){
	   var formObj = $("[name='prj_search']");                                         		      
       
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
	     }
	
	    if(checkObj_keyword2.val()!=""){
	        var a = checkObj_keyword2.val().trim();
	        checkObj_keyword2.val(a);
	     }
	   
      ajax(
            "/searchPrj.do"
            ,"post"
            ,$(".searchPrjForm")
            ,function(responseHtml){

               var obj = $(responseHtml);
               var sort = obj.find(".sort").html();
               var searchResultCnt = obj.find(".searchResultCnt").html();
               var searchResult = obj.find(".searchResult").html();
               var pageNos = obj.find(".pageNos").html();
               var ascDesc1 =$("[name='prjSort1']").val();
               var ascDesc2 =$("[name='prjSort2']").val();
               var ascDesc3 =$("[name='prjSort3']").val();
               var ascDesc4 =$("[name='prjSort4']").val();
               var ascDesc5 =$("[name='prjSort5']").val();

               var html = 
                  '<div class="isEmpty"><i class="fa fa-search" aria-hidden="true"></i>검색 결과가 없습니다.</div>';

                  $(".searchResultCnt").html(searchResultCnt);
                  $(".searchResult").html(searchResult);
                  $(".pageNos").html(pageNos);
                  $(".sort").html(sort);
                  $("[name='prjSort1']").val(ascDesc1);
                  $("[name='prjSort2']").val(ascDesc2);
                  $("[name='prjSort3']").val(ascDesc3);
                  $("[name='prjSort4']").val(ascDesc4);
                  $("[name='prjSort5']").val(ascDesc5);
                  $('.resultCate').show();
                  $('.pageNos').show();

                  if($('.impect').text() == 0 || $('.impect').text() == '0') {
                    $(".searchResult_box").html( html );
                    $('.resultCate').hide();
                    $('.pageNos').hide();
                  } 
            }
      );
   }

   function selectAll(e) {
      $(e).siblings('input[type=checkbox]').prop('checked', true);
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

   function deleteInfo() {
		var formObj = $('[name="deletePrjInFo"]');

		ajax(
				"/deletePrjInfo.do"
				,"post"
				,formObj
				,function( boardDelCnt ){
               console.log(boardDelCnt);
					if( boardDelCnt>=1 ){
						alert("프로젝트 정보가 삭제되었습니다.");
						closePopup();
						search1();
					} else alert("WAS 접속 실패입니다. 관리자에게 문의 바랍니다.");
				}
		);
   }

   function setToday(e) {
      var getVal = $(e).siblings('input'),
            getDate = new Date(),
            getY = getDate.getFullYear(),
            getM = getDate.getMonth() +1,
            getD = getDate.getDate();

      if(getD<10) {
        getD = 0+getD.toString();
      }

      var returnD = getY+'-'+getM+'-'+getD.toString();
          
      getVal.val(returnD);
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
      var getHead = $('.registPrjForm').find('header');
      
         getHead.text('프로젝트 상세 정보');
         $('.save').text('수정');
         $('.save').attr('onclick', 'alterInfo(this)');
         $('.popup').find('input:not(.not)').val('');
         $('.popup').find('textarea').val('');
         $('.popup').find('input').prop('checked', false);
         $('.popup').hide();
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

   function showPopup(prj_num){
      $('.registPrjForm').find('input').css('pointer-events', 'none');
      $('.registPrjForm').find('textarea').css('pointer-events', 'none');
      $('.registPrjForm').find('select').css('pointer-events', 'none');
      $('.alterBtn, .empty_btn, .today_btn').css('pointer-events', 'none');
      $('input[type=radio]').prop('checked', false);
      $(".popup_main").animate({ scrollTop: 0 }, "fast");
      $('.popup').show();   

      $('.prj_uid, .upd_prj_uid, .del_prj_uid').val(prj_num);

      ajax(
         "/searchPrjDetail.do"
         ,"post"
         ,$("[name='searchPrjDevDetailForm']")
         ,function(json){
         var data = json.prjList[0],
						 obj = $('.registPrjForm');
						 

				 obj.find('[name="prj_name"]').val(data.prj_name);
				 obj.find('[name="client_company"]').val(data.client_company);
				 obj.find('[name="reg_date"]').val(data.reg_date);
				 obj.find('[name="min_prj_period"]').val(data.min_period);
				 obj.find('[name="max_prj_period"]').val(data.max_period);
				 obj.find('[name="work_content"]').val(data.work_content);
				 obj.find('[name="work_space"]').val(data.work_place);
				 obj.find('[name="conperator_name"]').val(data.cooperator_name);
				 obj.find('[name="year_dev"]').val(data.dev_person_year);
				 obj.find('[name="person_num_dev"]').val(data.dev_person_num);
				 obj.find('[name="year_ope"]').val(data.oper_person_year);
				 obj.find('[name="person_num_ope"]').val(data.oper_person_num);
				 obj.find('[name="year_perb"]').val(data.publ_person_year);
				 obj.find('[name="person_num_perb"]').val(data.publ_person_num);
				 obj.find('[name="year_desi"]').val(data.desi_person_year);
				 obj.find('[name="person_num_desi"]').val(data.desi_person_num);

				 var goWorkH = data.go_work_time.substring(0,2),
					   goWorkM = data.go_work_time.substring(2,4);

        obj.find('[name="go_work_hours"]').val(goWorkH);
        obj.find('[name="go_work_minute"]').val(goWorkM);

				 if(data.prj_etc!=null || data.prj_etc!='') obj.find('[name="prj_etc"]').val(data.prj_etc);

				 if(typeof data.dev_license!= 'undefined') {
          var devLicense = data.dev_license;

          if(data.dev_license.length>1) {
            devLicense = data.dev_license.split(',');

            for(var i=0; i<devLicense.length; i++) {
              if(devLicense[i]==1) obj.find('[name="dev_essential_license"]:first-of-type').prop('checked', true);
              if(devLicense[i]==2)	obj.find('[name="dev_essential_license"]:last-of-type').prop('checked', true);
            }
          } else {
            if(devLicense == 1) obj.find('[name="dev_essential_license"]:first-of-type').prop('checked', true);
            if(devLicense == 2) obj.find('[name="dev_essential_license"]:last-of-type').prop('checked', true);
          }
				}

				 if(typeof data.oper_license!= 'undefined') {
          var operLicense = data.oper_license;

          if(data.oper_license.length>1) {
            operLicense = data.oper_license.split(',');

            for(var i=0; i<operLicense.length; i++) {
              if(operLicense[i]==1) obj.find('[name="ope_essential_license"]:first-of-type').prop('checked', true);
              if(operLicense[i]==2)	obj.find('[name="ope_essential_license"]:last-of-type').prop('checked', true);
            }
          } else {
            if(operLicense == 1) obj.find('[name="ope_essential_license"]:first-of-type').prop('checked', true);
            if(operLicense == 2) obj.find('[name="ope_essential_license"]:last-of-type').prop('checked', true);
          }
				}

        if(typeof data.publ_license!= 'undefined') {
          var publLicense = data.publ_license;

          if(data.publ_license.length>1) {
            publLicense = data.publ_license.split(',');

            for(var i=0; i<publLicense.length; i++) {
							if(publLicense[i]==1) obj.find('[name="perb_essential_license"]:first-of-type').prop('checked', true);
							if(publLicense[i]==2)	obj.find('[name="perb_essential_license"]:last-of-type').prop('checked', true);
						}
           } else {
            if(publLicense == 1) obj.find('[name="perb_essential_license"]:first-of-type').prop('checked', true);
            if(publLicense == 2) obj.find('[name="perb_essential_license"]:last-of-type').prop('checked', true);
           }
					}

				 if(typeof data.desi_license!= 'undefined') {
          var desiLicense = data.desi_license;

          if(data.desi_license.length>1) {
            desiLicense = data.desi_license.split(',');
            for(var i=0; i<desiLicense.length; i++) {
                if(desiLicense[i]==1) obj.find('[name="desi_essential_license"]:first-of-type').prop('checked', true);
                if(desiLicense[i]==2)	obj.find('[name="desi_essential_license"]:last-of-type').prop('checked', true);
              }
           } else {
            if(desiLicense == 1) obj.find('[name="desi_essential_license"]:first-of-type').prop('checked', true);
            if(desiLicense == 2) obj.find('[name="desi_essential_license"]:last-of-type').prop('checked', true);
           }
          }
          $('.registPrjForm').find('[name="max_prj_period"]').attr('min', $('[name="min_prj_period"]').val());
          $('.registPrjForm').find('[name="min_prj_period"]').attr('max', $('[name="max_prj_period"]').val());
         }
    	)
   }


   function alterInfo(e) {
      var getHead = $('.registPrjForm').find('header'),
          value = $('.alter_name').val();
      
      $(".popup_main").animate({ scrollTop: 0 }, "fast");
      getHead.text('프로젝트 정보 수정');
      $('.registPrjForm').find('input').css('pointer-events', 'all');
      $('.registPrjForm').find('textarea').css('pointer-events', 'all');
      $('.registPrjForm').find('select').css('pointer-events', 'all');
      $('.alterBtn, .empty_btn, .today_btn').css('pointer-events', 'all');
      $('[name="reg_date"] ').focus();
      $('.alter_name').val('');
      $('.alter_name').val(value);
      $(e).text('완료');
      $(e).attr('onclick', 'update()');
   }

   function setNextInput(e) {
    if($(e).val()!=null || $(e).val()!='') $(e).siblings('select').removeAttr('');
    if($(e).val()==null || $(e).val()=='') $(e).siblings('select').attr('' , true);
   }
   
	 function update() {
		var formObj = $('.registPrjForm');

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
    var checkObj_coperator_name = formObj.find("[name='conperator_name']");  
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
				"/updatePrjInfo.do"
				,"post"
				,formObj
				,function( boardDelCnt ){
               console.log(boardDelCnt);

					if( boardDelCnt>=1){
                  alert('프로젝트 정보가 수정되었습니다.');
                  closePopup();
						search1();
					} else alert("WAS 접속 실패입니다. 관리자에게 문의 바랍니다.");
				}
		);
	 };

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
              <td class="main_cate" onclick="location.replace('/searchDev.do')">정규직 개발자</td>
              <td class="main_cate active" onclick="location.replace('/searchPrj.do')">프로젝트</td>
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
      <div>
         <form class="searchPrjForm">
            <header>
               <div>프로젝트 현황 검색 </div>
               <small>프로젝트 검색 시 <small>최소치</small> 입력과  <small>최대치</small> 입력에 유의하여 검색해 주세요.</small>
             </header>
             <div class="search_bar_box">
               <tr>
                 <td>
                   <input type="text" name="keyword1" maxlength="30" >
                   <select name="orand">
                         <option value="or">or
                         <option value="and">and
                   </select>
                   <input type="text" name="keyword2" maxlength="30" >
                   <input onclick="dateEmpty(this, 'text')" type="button" name="grad_reset" value="비움">
                   <input type="button" onclick="search1()" name="search" class="search" value="검색">
                 </td>
               </tr>
               <div class="button_box">
								<input type="button" onclick="reSearch2()" name="research" class="desc_btn" value="초기화 후 전부검색">
								<input type="button" name="freeSearch" class="freeSearch desc_btn"  onclick="location.replace('/registPrj.do')" value="[프로젝트] 입력">
                 <span class='filter' onclick="showDesc(this)"><i class="fa fa-angle-down" aria-hidden="true"></i></span>
               </div>
             </div>

             <div class="desc_box">
                <div>
                   <div class="title">파견 시작일</div>
                   <input type="date" name="min_dispatch_start_date">~<input type="date" name="max_dispatch_start_date">
                   <input onclick="dateEmpty(this, 'date')" type="button" value="비움">
                </div>
                <div>
                   <div class="title">파견 종료일</div>
                   <input type="date" name="min_dispatch_finish_date">~<input type="date" name="max_dispatch_finish_date">   
                   <input type="checkbox" value="파견종료일확정">파견종료일확정   
                   <input type="button" onclick="dateEmpty(this, 'date')"  value="비움">   
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
                   <input type="button" onclick="dateEmpty(this, 'select')" value="비움">
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
                      <input type="button" onclick="selectAll(this)" value="모두선택" >&nbsp;<input type="button" onclick="dateEmpty(this, 'checkbox')"value="비우기">
                </div>
                <div>
                   <div class="title">접수일자</div>
                   <input type="date" name="min_reg_date">~<input type="date" name="max_reg_date">
                   <input onclick="dateEmpty(this, 'date')" type="button" value="비움">
                </div>
            </div>
            
         	<input type="hidden" name="selectPageNo" value="1">
          <table>
						<section class="count_desc">
							<section class="searchResultCnt">
									검색개수 : <span class="accent impect">${requestScope.prjListMap.prjListCnt}</span> 
									개
								</section>
							
								<select name="rowCntPerPage" onChange="search1()" class="rownum">
											<option value="10">10 
											<option value="15">15 
											<option value="20">20 
								</select>&nbsp;행 보기
						</section>
             </table>       
            		<input type="hidden" name="prjSortTag1">
					<input type="hidden" name="prjSortTag2">
					<input type="hidden" name="prjSortTag3">
					<input type="hidden" name="prjSortTag4">
					<input type="hidden" name="prjSortTag5">
					
				<div class="sort">	
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
					
					
         <div name="searchResult" class="searchResult">
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
                     <div class="searchDetail" onclick="showPopup('${prjList.prj_num}')">
                        <div>${prjList.prj_name}</div>
                        <div>${prjList.reg_date}</div>
                        <div>${prjList.start_date}</div>
                        <div>${prjList.finish_date}</div>
                        <div>${prjList.period}</div>
                        
                        <div>
                           개발 : ${prjList.dev_personnel}명,
                           운영 : ${prjList.ope_personnel}명,
                           웹디 : ${prjList.desi_personnel}명,
                           퍼블리셔 : ${prjList.perb_personnel}명
                        </div>
                     </div>
                  </c:forEach>
                  </div>
            </div>
      	<div class="pageNos"> 
					<span onclick="Pnc(1)"><i class="fa fa-angle-left" aria-hidden="true"></i><i class="fa fa-angle-left" aria-hidden="true"></i></span>
       	 <span onclick="Pnc(${requestScope.prjListMap.selectPageNo}-1)"><i class="fa fa-angle-left" aria-hidden="true"></i></span>
         <c:forEach var="pageNo" begin="${requestScope.prjListMap.begin_pageNo}" end="${requestScope.prjListMap.end_pageNo}">
						<c:if test="${requestScope.prjListMap.selectPageNo==pageNo}">
							<span class='isSelect'>
								${pageNo}
							</span>
						</c:if>
						<c:if test="${requestScope.prjListMap.selectPageNo!=pageNo}">
								<span style="cursor:pointer" onclick="Pnc(${pageNo})">[${pageNo}]</span>
						</c:if>  
					</c:forEach> 

       	 		<span onclick="Pnc(${requestScope.prjListMap.selectPageNo}+1)"><i class="fa fa-angle-right" aria-hidden="true"></i></span>
       			<span onclick="Pnc(${requestScope.prjListMap.last_pageNo})"><i class="fa fa-angle-right" aria-hidden="true"></i><i class="fa fa-angle-right" aria-hidden="true"></i></span>
					</div>
         </div>
         </form>
      <div class='popup'>
      <div class="dim">
        <div class='popup_main'>
               <form name="registPrjForm" class="boardForm registPrjForm">
                  <input type="hidden" name="del_prj_uid" class="del_prj_uid">
                  <header>프로젝트 정보 입력</header>
                  <div>    
                     <div class="title">프로젝트 정보</div>
                     <div class="dev_user">
                           <td>접수일자</td>
                           <td>
                              <input type="date" name="reg_date">
                              <span onclick="setToday(this)" class="today_btn" class="alterBtn" style="cursor: pointer;">오늘 날짜로</span>
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
                        <td>프로젝트명</td>
                        <td>
                           <input type="text" name="prj_name" maxlength="30">
                           <span onclick="dateEmpty(this, 'text')" style="cursor: pointer;" class="empty_btn">비움</span>
                        </td>
                     </div>
                     <div>
                        <tr>
                           <td>고객사</td>
                           <input type="text" name="client_company" maxlength="30">
                           <span onclick="dateEmpty(this, 'text')" style="cursor: pointer;" class="empty_btn">비움</span>
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
                           <select name="person_num_dev" >
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
                           <input type="checkbox" name="dev_essential_license" class="not" value="1"> 정보처리기사필수
                           <input type="checkbox" name="dev_essential_license" class="not" value="2"> 정보처리산업기사필수
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
                           <input type="checkbox" name="ope_essential_license" class="not" value="1"> 정보처리기사필수
                           <input type="checkbox" name="ope_essential_license" class="not" value="2"> 정보처리산업기사필수
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
                           <select name="person_num_perb" >
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
                           <input type="checkbox" name="perb_essential_license" class="not" value="1"> 정보처리기사필수
                           <input type="checkbox" name="perb_essential_license" class="not" value="2"> 정보처리산업기사필수
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
                           <select name="person_num_desi" >
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
                           <input type="checkbox" name="desi_essential_license" class="not" value="1"> 정보처리기사필수
                           <input type="checkbox" name="desi_essential_license" class="not" value="2"> 정보처리산업기사필수
                        </tr>
                     </div>
                     <line class="line"></line>
                     <div>
                        <tr>
                           <td>업무내용</td>
                           <input type="text" name="work_content">
                           <span onclick="dateEmpty(this, 'text')" style="cursor: pointer;" class="empty_btn">비움</span>
                     </div>
                     <div>
                        <tr>
                           <td>업무장소</td>
                           <input type="text" name="work_space"s>
                           <span onclick="dateEmpty(this, 'text')" style="cursor: pointer;" class="empty_btn">비움</span>
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
                          <select name="conperator_name" id="">
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
                           <span onclick="dateEmpty(this, 'text')" style="cursor: pointer;" class="empty_btn">비움</span>
                     </div>
               </div>
               <span onclick="closePopup()" name="cancel" class="cancel">닫기</span>
               <span onclick="deleteInfo()" name="delete" class="delete">삭제</span>
               <span onclick="alterInfo(this)" name="save" class="save">수정</span>
            </form>
        </div>
        </div>
    </div>

    <div>
      <form name="searchPrjDevDetailForm" action="/PrjDetailForm.do" post="post">
         <input type="hidden" name="prj_uid" class="prj_uid" value="">
      </form>

      <form name="deletePrjInFo" action="/deletePrjInFo.do" post="post">
         <input type="hidden" name="del_prj_uid" class="del_prj_uid">
      </form>
    </div>
 </body>
 </html>