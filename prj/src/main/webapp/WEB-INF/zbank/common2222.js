
//MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
// <파일업로드> 파일업로드 있던 없던 비동기 방식으로 웹서버에 접속하는 함수 선언.
//MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
function ajax(
	url2          // 비동기 방식으로 접속할 때 사용할 URL 주소
	,post_or_get  // "post" 또는 "get".  웹서버에 접속할 때 데이터를 가져가는 방법
	,formObj      // 입력양식 태그가 내포된 form 태그를 관리하는 JQuery 객체
	,func         // 웹서버와 비동기 방식으로 통신에 성공한 후 호출되는 익명함수

){
	try{
		//---------------------------------------------
		// form 태그 내부에 파일 입력 양식이 존재여부 얻기
		//---------------------------------------------
		var isfile = formObj.find("[type=file]").length>0;
		//---------------------------------------------
		// form 태그 내부에 파일 입력 양식이 존하면
		//---------------------------------------------
		if( isfile ){
				//------------------------------------
				// form 태그에 파일업로드에 필요한 enctype="multipart/form-data"  삽입하기
				//------------------------------------
				formObj.attr( "enctype","multipart/form-data" );
				//--------------------------------------
				// 현재 화면에서 페이지 이동 없이(=비동기 방식으로)
				// 웹서버에 접속하기
				//--------------------------------------
				$.ajax({
						//--------------------------------------
						// 서버 쪽 호출 URL 주소 지정
						//--------------------------------------
						url : url2
						//--------------------------------------
						// form 태그 안의 입력양식 데이터 즉, 파라미터값을 보내는 방법 지정
						//--------------------------------------
						, type : post_or_get
						//--------------------------------------
						// 파일업로드를 위한 설정
						//--------------------------------------
						//-------
						// 서버로 보내는 데이터에 파일이 있으므로
						// 전송하는 파라미터명, 파라미터값을 serialize를 하여 Query String으로 변경하지 않케 설정하기.
						// 서버로 보내는 데이터에 파일이 없으면  processData: false 을 생략한다.
						//-------
						,processData:false
						//-------
						// 서버로 보내는 데이터에 파일이 있으므로
						// 현재 form 태그에 설정된 enctype 속성값을 Content-Type 으로 사용하도록 설정하기.
						// 이게 없으면 현재 form 태그에 설정된 enctype 속성값과 관계없이 무조건 enctype 이 application/x-www-form-urlencoded 로 설정된다.
						// 서버로 보내는 데이터에 파일이 없으면  ,contentType: false  을 생략한다.
						//-------
						,contentType:false
						//-------
						// 서버로 보내는 데이터  설정하기.
						// 서버로 보내는 데이터에 파일이 있으므로 FormData 객체 설정.
						//-------
						,data:new FormData(  formObj.get(0)  )     // 커마부문
	
	
						//----------------------------------------------------------
						// 서버의 응답을 성공적으로 받았을 경우 실행할 익명함수 설정.
						//----------------------------------------------------------
						, success : function(responseData){ func(responseData) }
						//----------------------------------------------------------
						// 서버의 응답을 못 받았을 경우 실행할 익명함수 설정
						//----------------------------------------------------------
						, error : function(){
							alert("웹서버 접속 실패! 관리자에게 문의 바람니다.");
						}
				});
		}
		else{
			$.ajax({
					//--------------------------------------
					// 서버 쪽 호출 URL 주소 지정
					//--------------------------------------
					url : url2
					//--------------------------------------
					// form 태그 안의 입력양식 데이터 즉, 파라미터값을 보내는 방법 지정
					//--------------------------------------
					, type : post_or_get
					//--------------------------------------
					// 서버로 보내는 데이터  설정하기.
					//--------------------------------------
					,data:formObj.serialize( )
					//----------------------------------------------------------
					// 서버의 응답을 성공적으로 받았을 경우 실행할 익명함수 설정.
					//----------------------------------------------------------
					, success : function(responseData){ func(responseData) }
					//----------------------------------------------------------
					// 서버의 응답을 못 받았을 경우 실행할 익명함수 설정
					//----------------------------------------------------------
					, error : function(){
						alert("웹서버 접속 실패! 관리자에게 문의 바람니다.");
					}
			});
		}
	}catch(e){
		alert( "ajax 함수 호출 시 예외 발생! " + e.message )
	}
}
	
//mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm
// 매개변수로 들어온 String 형 데이터가 
// null 이거나, 공백으로만 구성되어 있거나, 길이가 없는 문자라면
// true 리턴하는 메소드 선언
//mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm
function isEmpty( str ) {
	try{
		if(str==null) { return true; }
		str = str.trim();
		return str.length==0;
	}catch(e){
		alert( "isEmpty 함수 호출 시 예외 발생! " + e.message )
	}
}

//mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm
// 매개변수로 들어온 JQuery 객체가 관리하는 
// 태그에 입력된 문자의 앞뒤 공백을 제거하고 다시 넣어 주기 
//mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm
function inputAfterBlankDel( obj ) {
	try{
		if( obj.length==0 ){
			alert("inputAfterBlankDel 함수 호출 시 "
					+"1번째 매개변수로 들어오는 JQuery 객체가 관리하는 태그가 없습니다.");
			return;
		}
		if( obj.is(":checkbox") || obj.is(":radio") ){
			alert("inputAfterBlankDel 함수 호출 시 "
					+"1번째 매개변수로 들어오는 JQuery 객체가 관리하는 태그는 "
					+"[체크박스] 도 아니고 [라디오버튼]도 아닙니다.");
			return;
		}
		var val = obj.val( );
		if( typeof(val)=='string' ){
			obj.val( val.trim()  );
		}
	}
	catch(e){
		alert( "inputAfterBlankDel함수 호출 시 예외 발생! " + e.message )
	}
	
}







//MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
//MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
// 입력 영식 태그의 유효성 체크 함수 들
//MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
//MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM

//MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
// 체크박스 또는 라디오버튼 제외한 
// 입력 양식 태그의 입력값이 합당하면 true 리턴 하는 함수 선언
//MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
function checkVal(
	obj      // 입력 양식 태그 관리 JQuery 객체 메위주
	,msg     // 경고 메시지 문자
	,regExp  // RegExp 객체 메위주
){
	try{
		if( obj.length!=1 ){
			alert("checkVal 함수 호출 시 에러 발생!. "
					+"1번째 매개변수로 들러오는 JQuery 객체가 관리하는 태그가 1개가 아닙니다.");
			return false;
		}
		if( obj.is(":checkbox") || obj.is(":radio") ){
			alert("checkVal 함수 호출 시 에러 발생!. "
					+"1번째 매개변수로 들러오는 JQuery 객체가 관리하는 태그는 "
					+"체크박스 또는 라디오버튼이 아니어야 합니다.");
			return false;
		}
		//--------------------------------
		var val = obj.val( );
		if( typeof(val)!="string" ){ val = ""; }
		val = val.trim();
		obj.val( val );
		//--------------------------------
		if( regExp.test(val)==false ){
			alert(msg);
			return false;
		}
		return true;
	}
	catch(e){
		alert( "checkVal 함수 호출 시 예외 발생! " + e.message )
	}
}


	
//MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
// 체크박스 또는 라디오버튼 입력 양식 태그의 
// 체크 개수가 합당하면 true 리턴 하는 함수 선언
//MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
function checkChecked(
	obj             // 입력 양식 태그 관리 JQuery 객체 메위주
	,msg            // 경고 메시지 문자
	,minCheckedCnt  // 최소 체크 개수
	,maxCheckedCnt  // 최대 체크 개수
){
	try{
		if( !obj.is(":checkbox") && !obj.is(":radio") ){
			alert("checkChecked 함수 호출 시 에러 발생!. "
					+"1번째 매개변수로 들러오는 JQuery 객체가 관리하는 태그는 "
					+"체크박스 또는 라디오버튼 이어야합니다.");
			return false;
		}
		var checkedCnt = obj.filter(":checked").length;
		if( minCheckedCnt<=checkedCnt && checkedCnt<=maxCheckedCnt ){
			return true;
		}
		else{
			alert(msg);
			return false;
		}
	}
	catch(e){
		alert( "checkChecked 함수 호출 시 예외 발생! " + e.message )
	}
}


//MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
// 작성자 입력 양식 태그의 입력값이 합당하면 true 리턴 하는 함수 선언
//MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
function checkWriter(
	obj   // 입력 양식 태그 관리 JQuery 객체 메위주
){
	return checkVal(
		obj    
		,"작성자는 2~15자 한글이어야합니다."
		,/^[가-힣]{2,15}$/
	);
}
//MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
// 암호 입력 양식 태그의 입력값이 합당하면 true 리턴 하는 함수 선언
//MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
function checkPwd(
	obj   // 입력 양식 태그 관리 JQuery 객체 메위주
){
	return checkVal(
		obj    
		,"암호는 영소문 또는 숫자로 4자 이어야 합니다."
		,/^[0-9a-z]{4}$/
	);;
}
//MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
// 이메일 입력 양식 태그의 입력값이 합당하면 true 리턴 하는 함수 선언
//MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
function checkEmail(
	obj   // 입력 양식 태그 관리 JQuery 객체 메위주
){
	return checkVal(
		obj    
		,"이메일 형식이 아닙니다. 재입력 바랍니다."
		,/^([0-9a-zA-Z_-]+)@([0-9a-zA-Z_-]+)(\.[0-9a-zA-Z_-]+){1,2}$/
	);
}
//MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
// 제목 입력 양식 태그의 입력값이 합당하면 true 리턴 하는 함수 선언
//MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
function checkSubject(
	obj   // 입력 양식 태그 관리 JQuery 객체 메위주
){
	return checkVal(
		obj    
		,"제목은 임의 문자 2~30자 입력해야합니다."
		,/^.{2,30}$/
	);
}
//MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
// 내용 입력 양식 태그의 입력값이 합당하면 true 리턴 하는 함수 선언
//MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
function checkContent(
	obj   // 입력 양식 태그 관리 JQuery 객체 메위주
){
	return checkVal(
		obj    
		,"내용은 임의 문자 2~500자 입력해야합니다."
		//,/^[^ ](.|\n){0,498}[^ ]$/
		,/^(.|\n){1,500}$/
	);
}















