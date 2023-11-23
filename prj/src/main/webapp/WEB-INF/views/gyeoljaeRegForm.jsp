<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/common.jsp"%>

<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>결재</title>
<link href="css/gyeoljae.css" rel="stylesheet">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" integrity="sha512-5A8nwdMOWrSz20fDsjczgUidUBR8liPYU+WymTZP1lmY9G6Oc7HlZv156XqnsgNUzTyMefFTcsFH/tnJE/+xBg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
 </head>
 <script type="text/Javascript">
    $(function(){ init(); });
    function init(){
    }
    

    function inputText(){
      var formObj = $("[name='gyeoljae']");
       var docu_type = $("[name='docu_type']").val()
       if(docu_type==0){
        formObj.find("[name='content']").val('');
       }
       if(docu_type==1){
       formObj.find("[name='title']").val("지출 보고의 건")
       formObj.find("[name='content']").val("■ 작성 일시 : "
                +"\n\n\n■ 금    액 : "
                +"\n\n\n■ 지출 내용  : "
                 +"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n                                    상기와 같이 지출 내용을 보고합니다."
                 +"\n\n                                             20    년    월    일")
       }
       if(docu_type==2){
           formObj.find("[name='title']").val("업무 보고의 건")
           formObj.find("[name='content']").val("■ 작성 일시 : "
                 +"\n\n\n■ 안    건 : "
                 +"\n\n\n■ 보고 내용 : "
                 +"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n                                    상기와 같이 업무 내용을 보고합니다."
                 +"\n\n                                             20    년    월    일")
           }
       if(docu_type==3){
           formObj.find("[name='title']").val("영업 보고의 건")
           formObj.find("[name='content']").val("■ 영업 일자 : "
                 +"\n\n\n■ 영업 대상 : "
                 +"\n\n\n■ 실   적 : "
                 +"\n\n\n■ 상세 내용 : "
                 +"\n\n\n\n\n\n\n\n\n\n\n\n\n\n■ 특이 사항 : "
                 +"\n\n\n\n\n\n\n\n                                    상기와 같이 영업 내용을 보고합니다."
                 +"\n\n                                             20    년    월    일")
           }
       if(docu_type==4){
           formObj.find("[name='title']").val("연차 보고의 건")
           formObj.find("[name='content']").val("■ 성    명 : "
                 +"\n\n\n■ 직    급 : "
                 +"\n\n\n■ 연 락 처 : "
                 +"\n\n\n■ 신청기간 : "
                 +"\n\n\n■사    유 : "
                 +"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n              상기 본인은 위와 같은 사유로 보고서를 제출하오니 허락하여 주시기를 바랍니다."
                 +"\n\n                                             20    년    월    일")
           }
       if(docu_type==5){
           formObj.find("[name='title']").val("근태 보고의 건")
           formObj.find("[name='content']").val("■ 일    자 : "
                 +"\n\n\n■ 인원 현황 : "
                 +"\n\n\n\n\n\n\n\n\n\n\n\n\n■ 근태 상세내역 : "
                 +"\n\n\n\n\n\n\n\n\n\n\n\n\n■ 특이사항 : "
                 +"\n\n\n\n\n\n\n\n                                    상기와 같이 영업 내용을 보고합니다."
                 +"\n\n                                             20    년    월    일")
           }
       
      } 
    
    
    function goGyeoljaeListForm(){
		document.gyeoljaeListForm.submit();
    }
    function saveData(){
		var formObj = $("[name='gyeoljae']");
		if( confirm("결재를 등록하시겠습니까?")==false ) { return; }
		
		ajax(
				"/gyeoljaeRegProc.do"
				,"post"
				,formObj
				,function(responseJson){
					var GyeoljaeRegCnt = responseJson["GyeoljaeRegCnt"]; 
					if( GyeoljaeRegCnt==1 ){
						alert("결재가 등록되었습니다.");
						goGyeoljaeListForm();
					}
					else{
						alert( "등록에 실패하였습니다. 잠시 후에 시도해주세요.");
					}
				}
		);
    }
    
    
 </script>
 </head>
 <body>
    <form name="gyeoljae" class="header">
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
              <td class="main_cate" onclick="location.replace('/searchDispatch.do')">파견현황</td>
	          <td class="main_cate active" onclick="location.replace('/gyeoljaeList.do')">결재</td>
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
    <form name="gyeoljae">
    	<header>결재 입력</header>
    <div>    
        <div class="title">결재 정보</div>
        <div class="dev_user">
            <td>문서 종류</td>
            <td>
				<select name="docu_type" onchange="inputText()">
					<option value="0">자유양식</option>
					<option value="1">지출보고서</option>
					<option value="2">업무보고서</option>
					<option value="3">영업보고서</option>
					<option value="4">연차보고서</option>
					<option value="5">근태보고서</option>
				</select>
            </td>
        </div>
        <div>
            <td>결재자 : </td>
            <td>
				정선희 사장
            </td>
        </div>
        <div> 
            <td>제목 : </td>
			<td>
				<input type="text" name="title" size="100" maxlength="100">
            </td>
        </div>
        <div> 
            <td>내용</td>
			<td>
				<textarea name="content" class="content" maxlength="2000">
				</textarea>
            </td>
        </div>
        <input type="hidden" name="mid" value="${sessionScope.mid}">
			
    </div>
    <span onclick="location.replace('/gyeoljaeList.do')" name="cancel" class="cancel">취소</span>
    <input type="button" onclick="saveData()" class="save" value="저장">
  </form>
   <form name="gyeoljaeListForm" method="post" action="/gyeoljaeList.do">
    </form>
 </body>
 </html>