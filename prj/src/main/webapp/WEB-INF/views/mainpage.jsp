<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/common.jsp"%>

<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/mainpage.css">
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" integrity="sha512-5A8nwdMOWrSz20fDsjczgUidUBR8liPYU+WymTZP1lmY9G6Oc7HlZv156XqnsgNUzTyMefFTcsFH/tnJE/+xBg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<script>
google.charts.load("current", {packages:["corechart"]});
google.charts.setOnLoadCallback(drawChart);


$(function(){init();})

function init(){ 
    search(); 
   gyeoljae();
}

function drawChart() {
	var data1 = google.visualization.arrayToDataTable([
        ['Task', 'Hours per Day'],
        ['파견 중',  ${requestScope.mainListMap.mainList[0].on_dispatch_dev}],
        ['파견 예정', ${requestScope.mainListMap.mainList[0].due_dispatch_dev}],
        ['파견가능',  ${requestScope.mainListMap.mainList[0].can_dispatch_dev}]
      ]);
  var data2 = google.visualization.arrayToDataTable([
	  ['Task', 'Hours per Day'],
      ['파견 중',  ${requestScope.mainListMap.mainList[0].on_dispatch_free}],
      ['파견 예정', ${requestScope.mainListMap.mainList[0].due_dispatch_free}],
      ['파견가능',  ${requestScope.mainListMap.mainList[0].can_dispatch_free}]
    ]);
  var data3 = google.visualization.arrayToDataTable([
      ['Task', 'Hours per Day'],
      ['진행 예정', ${requestScope.mainListMap.mainList[0].due_prj}],
      ['진행 중',  ${requestScope.mainListMap.mainList[0].on_prj}],
      ['진행 완료', ${requestScope.mainListMap.mainList[0].end_prj}]
    ]);

  var options = {
    pieHole: 0.4,
    colors: ['#58ACFA', '#A9BCF5', '#5882FA'],
    pieSliceTextStyle: {
        color: 'black',
      }
  };

	var chart1 = new google.visualization.PieChart(document.getElementById('donutchart_dev'));
		chart1.draw(data1, options);
		
	var chart2 = new google.visualization.PieChart(document.getElementById('donutchart_free'));
		chart2.draw(data2, options);
	
	var chart3 = new google.visualization.PieChart(document.getElementById('donutchart_prj'));
		chart3.draw(data3, options);
	
}


function show_all(){
    $(".search_list_all").show();
}


 function search(){
   ajax(
         "/boardList.do"
         ,"post"
         ,$("[name='boardSearchForm']")
         ,function(responseHtml){
            var obj = $(responseHtml);
            var searchResultCnt = obj.find(".searchResultCnt").html();
            var searchResult = obj.find(".search_list").html();

            var html = 
            '<div class="isEmpty"><i class="fa fa-search" aria-hidden="true"></i>검색 결과가 없습니다.</div>';

            $(".searchResultCnt").html( searchResultCnt );
            $(".search_list").html( searchResult );
            
            
         }
   );
   
} 
function gyeoljae(){

   ajax(
         "/gyeoljaeList.do"
         ,"post"
         ,$("[name='gyeoljaeSearchForm']")
         ,function(responseHtml){
            var obj = $(responseHtml);
            var searchResultCnt = obj.find(".searchResultCnt2").html();
            var searchResult = obj.find(".search_list").html();

            var html = 
            '<div class="isEmpty"><i class="fa fa-search" aria-hidden="true"></i>검색 결과가 없습니다.</div>';

            $(".searchResultCnt2").html( searchResultCnt );
            $(".search_list_all").html( searchResult );
            
         }
   );
}

function goBoardDetailForm(b_no){
   $("[name='boardDetailForm'] [name='b_no']").val(b_no);
   
   document.boardDetailForm.submit();
}

function goGyeoljaeDetailForm(gyeoljae_num){
   $("[name='gyeoljaeDetailForm'] [name='gyeoljae_num']").val(gyeoljae_num);
   document.gyeoljaeDetailForm.submit();
}

</script>

<title>메인</title>
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
          <tr>
          <td class="main_cate" onclick="location.replace('/searchFreeDev.do')">프리랜서 개발자</td>
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
  <div class="middle">
    <div class="main_info_stats">
    <div class="dev_box state_box">
      <div class="box_title">
        <div class="doc_more more" style="cursor: pointer;" onclick="location.replace('/searchDev.do')">
          <i class="fa fa-plus-square-o" aria-hidden="true"></i>
        </div>
      </div>
      <div class="list_title">정규직</div>
      <div class="list_perAll">
        ${requestScope.mainListMap.mainList[0].dev_count}<small>명</small>
      </div>
      <small class="list_notice">통계기준은 24시간을 기준으로 반영됩니다.</small>
        <div class="list">
          <div id="donutchart_dev" style="width: 900px; height: 300px;"></div>
        </div>
    </div>
    
    <div class="free_box state_box">
      <div class="box_title">
      <div class="doc_more more" style="cursor: pointer;" onclick="location.replace('/searchFreeDev.do')">
              <i class="fa fa-plus-square-o" aria-hidden="true"></i>
        </div>
        </div>
        <div class="list_title">프리랜서</div>
        <div class="list_perAll">
          ${requestScope.mainListMap.mainList[0].free_count}<small>명</small>
        </div>
        <small class="list_notice">통계기준은 24시간을 기준으로 반영됩니다.</small>
          
        <div class="list">
        <div id="donutchart_free" style="width: 900px; height: 300px;"></div>
         </div>
    </div>
    
      <div class="prj_box state_box">
      <div class="box_title">
      <div class="doc_more more" style="cursor: pointer;" onclick="location.replace('/searchPrj.do')">
              <i class="fa fa-plus-square-o" aria-hidden="true"></i>
        </div>
        </div>
        <div class="list_title">프로젝트</div>
        <div class="list_perAll">
          ${requestScope.mainListMap.mainList[0].prj_count}<small>건</small>
        </div>
        <small class="list_notice">통계기준은 24시간을 기준으로 반영됩니다.</small>

        <div class="list">
        <div id="donutchart_prj" style="width: 900px; height: 300px;"></div>
         </div>
         </div>
      </div>
      <div class="main_info">
        <div class="notice_box">
          <div class="box_title">공지사항 
            <div class="doc_more more" style="cursor: pointer;" onclick="location.replace('/boardList.do')">
              <i class="fa fa-plus-square-o" aria-hidden="true"></i>
            </div>
          </div>
          <div class="list">
    
          <form name="boardSearchForm" class="boardForm">
            <span  style="display:none;" class="searchResultCnt" >
          </span>
            <div class="search_list" style="cursor: pointer;">
             <div>
                <c:forEach var="board" items="${requestScope.boardMap.boardList}" varStatus="vs">
                <div class="searchDetail">
                   <div onClick="goBoardDetailForm(${board.b_no})" class="search_con">
                      <div class="b_no">${requestScope.boardMap.begin_serialNo_desc-vs.index}</div> 
                      <div class="subject">${board.subject}</div>
                      <div class="writer">${board.writer}</div>
                      <div class="view_i">
                        <div class="reg_date list_reg">
                          <i class="fa fa-calendar-o" aria-hidden="true"></i>
                          <span class="reg_date">${board.reg_date}</span>
                        </div>
                        <div class="readcount">
                          <i class="fa fa-eye" aria-hidden="true"></i>
                          <span>${board.readcount}</span>
                        </div> 
                      </div>
                   </div>
                   </div>
                </c:forEach>
             </div>
          </div>
          </form>
          </div>
        </div>
        
        <div class="document_box">
          <div class="box_title">결재 문서
            <div class="notice_more more" onclick="location.replace('/gyeoljaeList.do')">
              <i class="fa fa-plus-square-o" aria-hidden="true"></i>
            </div>
          </div>
          <div class="list">
           <form name="gyeoljaeSearchForm" class="boardForm" action="hh">
           <span class="searchResultCnt" style="display:none;">
         </span>
          <div class="search_list_all">   
             <div>
                <c:forEach var="gyeoljae" items="${requestScope.gyeoljaeMap.gyeoljaeList}" varStatus="vs">
                <div class="searchDetail">
                   <c:if test="${sessionScope.mid eq 'xyz' || sessionScope.mid eq gyeoljae.writer}">
                    <div onclick="goGyeoljaeDetailForm('${gyeoljae.gyeoljae_num}')" class="search_con">
                        <div class="gyeoljae_progress">${gyeoljae.gyeoljae_progress}</div> 
                        <div class="subject1">${gyeoljae.title}</div>
                        <div class="writer1">정선희 사장  ${gyeoljae.writer }</div>
                        <div class="view_i1">
                          <div class="reg_date list_reg">
                            <i class="fa fa-calendar-o" aria-hidden="true"></i>
                            <span class="reg_date">${gyeoljae.reg_date}</span>
                          </div>
                        </div>
                    </div>
                   </c:if>
                   </div>
                </c:forEach>
             </div>
          </div>   
          
          
          
           </form>
          </div>
        </div>
      </div>
    </div>
    </div>
    <form name="boardDetailForm" action="/boardDetailForm.do" post="post">
     <input type="hidden" name="b_no">
    </form>
    <form name="gyeoljaeDetailForm" action="/gyeoljaeDetailForm.do" post="post">
     <input type="hidden" name="gyeoljae_num">
    </form>
  </div>
  
  <div class="footer">
    <div class="footer_box">
      <div>DEVGRU INC</div>
      <div class="addr">
        A 서울특별시 금천구 가산동 549-1 한라 원앤원 타워 지식산업센터
      </div>
      <div class="tel">
        T 02-1004-1004 | F 02-1004-1004
      </div>
    </div>
  </div>
</body>
</html>