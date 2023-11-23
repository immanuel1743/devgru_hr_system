package com.naver.erp;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.multipart.MultipartFile;

public class Util { 
	public static Map<String,Integer> getPagingMap(
			int selectPageNo 
			, int rowCntPerPage  
			, int totCnt  
	){
		Map<String,Integer> map = new HashMap<String,Integer>();
		try {
			int pageNoCntPerPage = 10;
			if(rowCntPerPage<=0) {rowCntPerPage=10;}
			if(selectPageNo<=0) {selectPageNo=1;}
			
			if(totCnt==0) {
				map.put("selectPageNo", selectPageNo);
				map.put("rowCntPerPage", rowCntPerPage);
				map.put("totCnt", totCnt);
				map.put("pageNoCntPerPage", pageNoCntPerPage); 
				map.put("last_pageNo", 0); 
				map.put("begin_rowNo", 0);
				map.put("end_rowNo", 0); 
				map.put("serialNo_asc", 0);
				map.put("serialNo_desc", 0); 
				map.put("begin_pageNo", 0);
				map.put("end_pageNo", 0);
				return map;
			}
			int last_pageNo = totCnt/rowCntPerPage;
			
				if(totCnt%rowCntPerPage>0) {last_pageNo++;}
				if(last_pageNo<selectPageNo) {selectPageNo=last_pageNo;} 
			int end_rowNo = selectPageNo * rowCntPerPage;
			int begin_rowNo = end_rowNo-rowCntPerPage+1;
				if(end_rowNo>totCnt) {end_rowNo=totCnt;} 
			int begin_pageNo = (int)Math.floor((selectPageNo-1)/pageNoCntPerPage)*pageNoCntPerPage+1;
			int end_pageNo = begin_pageNo+pageNoCntPerPage-1;
				if(end_pageNo>last_pageNo) {
					end_pageNo=last_pageNo;
				}
				map.put("selectPageNo", selectPageNo);
				map.put("rowCntPerPage", rowCntPerPage);
				map.put("totCnt", totCnt);
				map.put("pageNoCntPerPage", pageNoCntPerPage);
				map.put("last_pageNo", last_pageNo);
				map.put("begin_rowNo", begin_rowNo);   
				map.put("end_rowNo" , end_rowNo);    
				map.put("begin_serialNo_asc", begin_rowNo);
				map.put("begin_serialNo_desc", totCnt - begin_rowNo + 1 );
				map.put("begin_pageNo", begin_pageNo);
				map.put("end_pageNo", end_pageNo);
				return map;
			
		}catch(Exception ex) {
			return new HashMap<String,Integer>();
		}
	}
	 
	public static String getNewFileName(
			MultipartFile multi
	) throws Exception{ 
		if(multi==null||multi.isEmpty()) {return null;} 
		String oriFileName = multi.getOriginalFilename();
		String file_extension = oriFileName.substring(oriFileName.lastIndexOf(".")+1); 
		return UUID.randomUUID()+"."+file_extension;
	}
 
	public static String uploadDirForBoard() {
		return System.getProperty("user.dir")+"\\src\\main\\resources\\static\\img\\";
	}
	
	public static int checkUploadFile(
			MultipartFile multi
			,int fileSize
			,String[] extensions
			) {
			int no = 0;
			if(multi!=null && multi.isEmpty()==false) {
				if(multi.getSize()>fileSize) {
					no = -11;
				}
				else {
					String originalFilename = multi.getOriginalFilename();
					originalFilename = originalFilename.toUpperCase();
					int cnt = 0;
					
					for(int i=0;i<extensions.length;i++) {
						if(originalFilename.endsWith("."+extensions[i].toUpperCase())) {
							cnt++;
						}
					}
				if (cnt==0) {
					no = -12;
				}
			}
		}
		return no;
	}
	
	public static int checkUploadFileForBoard(
			MultipartFile multi	
	) {
		return checkUploadFile(
				 multi	 
				,1000000	 
				,new String[] {"jpg","png","gif"}	 
		);
	}

	public static String getErrorMsgFromBindingResult(
			BindingResult bindingResult
		) 
{ 
	String errorMsg = "";
	 
	if(bindingResult.hasErrors()) {
		 
		List<ObjectError> list = bindingResult.getAllErrors();
		
		errorMsg = errorMsg + list.get(0).getDefaultMessage();
 
	} 
	return errorMsg;
}
	
}
