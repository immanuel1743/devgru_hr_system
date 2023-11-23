package com.naver.erp;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class GyeoljaeController {
	
	
	
	@Autowired
	private GyeoljaeDAO gyeoljaeDAO;
	
	@Autowired
	private GyeoljaeService gyeoljaeService;
	
	@RequestMapping(value="/gyeoljaeDetailForm.do")
	public ModelAndView gyeoljaeDetailForm(
			@RequestParam(value="gyeoljae_num") String gyeoljae_num
			)
	{
		GyeoljaeDTO gyeoljaeDTO = this.gyeoljaeService.getGyeoljae(gyeoljae_num);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("gyeoljaeDetailForm.jsp");
		mav.addObject("gyeoljaeDTO",gyeoljaeDTO);
		return mav;
	}
	
	
	@RequestMapping(
			value="/gyeoljaeResult.do"
			,method=RequestMethod.POST
			,produces="application/json;charset=UTF-8"
			)
	@ResponseBody
	public Map<String, String> gyeoljaeResult(
			GyeoljaeDTO gyeoljaeDTO
			)
	{
		Map<String,String> responseMap = new HashMap<String,String>();
		int progressUpCnt = 0;
		try {
			progressUpCnt = this.gyeoljaeService.updateProgress(gyeoljaeDTO);
		}	
		catch(Exception ex){
			progressUpCnt = -1;		
		}
		
		responseMap.put("progressUpCnt",progressUpCnt+"");
	
		return responseMap;
	}
	
	@RequestMapping(value="/gyeoljaeUpDelForm.do")
	public ModelAndView gyeoljaeUpDelForm(
			@RequestParam(value="gyeoljae_num") String gyeoljae_num
			)
	{
		GyeoljaeDTO gyeoljaeDTO = this.gyeoljaeService.getGyeoljae(gyeoljae_num);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("gyeoljaeUpDelForm.jsp");
		mav.addObject("gyeoljaeDTO",gyeoljaeDTO);
		return mav;
	}
	

	@RequestMapping(
			value="/gyeoljaeUpProc.do"
			,method=RequestMethod.POST
			,produces="application/json;charset=UTF-8"
			)
	@ResponseBody
	public Map<String,String> gyeoljaeUpProc( 
			GyeoljaeDTO gyeoljaeDTO 
			
			){
			Map<String,String> responseMap = new HashMap<String,String>();
			int gyeoljaeUpCnt = 0;
			
			try {

				gyeoljaeUpCnt = this.gyeoljaeService.updateGyeoljae(gyeoljaeDTO);
			}	
			catch(Exception ex) {
				gyeoljaeUpCnt = -1;
			}
			responseMap.put("gyeoljaeUpCnt",gyeoljaeUpCnt+"");
			
			
			return responseMap;
		
	}	
	@RequestMapping(
			value="/gyeoljaeDelProc.do"
			,method=RequestMethod.POST
			,produces="application/json;charset=UTF-8"
			)
	@ResponseBody
	public int gyeoljaeDelProc(			
			GyeoljaeDTO gyeoljaeDTO
			) {
		int deleteGyeoljaeCnt = this.gyeoljaeService.deleteGyeoljae(gyeoljaeDTO);
		
		return deleteGyeoljaeCnt;
	}
	
	@RequestMapping(value="/gyeoljaeList.do")
	public ModelAndView mainGyeoljaeList(
			GyeoljaeSearchDTO gyeoljaeSearchDTO
			,HttpSession session
			)
	{
		String mid = (String)session.getAttribute("mid");
		if(mid==null) {
			ModelAndView mav = new ModelAndView();
			mav.setViewName("error.jsp");	
			return mav;
		}
		Map<String,Object> gyeoljaeMap = getGyeoljaeSearchResultMap(gyeoljaeSearchDTO);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("gyeoljaeList.jsp");	
		mav.addObject("gyeoljaeMap", gyeoljaeMap);
		return mav;
		
	}
	
	public Map<String,Object> getGyeoljaeSearchResultMap(
			GyeoljaeSearchDTO gyeoljaeSearchDTO
	){
			
			Map<String,Object> resultMap = new HashMap<String,Object>();
			List<Map<String,String>> gyeoljaeList;
			int gyeoljaeListCnt;
			int gyeoljaeListCntAll;
			Map<String,Integer> pagingMap;
			gyeoljaeListCntAll = this.gyeoljaeDAO.getGyeoljaeListCntAll();
			gyeoljaeListCnt = this.gyeoljaeDAO.getGyeoljaeListCnt(gyeoljaeSearchDTO);
			pagingMap = Util.getPagingMap(
					gyeoljaeSearchDTO.getSelectPageNo()	 
					,gyeoljaeSearchDTO.getRowCntPerPage() 
					,gyeoljaeListCnt				 
			);
			
			gyeoljaeSearchDTO.setSelectPageNo((int)pagingMap.get("selectPageNo")	);  
			gyeoljaeSearchDTO.setRowCntPerPage((int)pagingMap.get("rowCntPerPage")	);  
			gyeoljaeSearchDTO.setBegin_rowNo((int)pagingMap.get("begin_rowNo")		);  
			gyeoljaeSearchDTO.setEnd_rowNo((int)pagingMap.get("end_rowNo")		);	  
			
			gyeoljaeList = this.gyeoljaeDAO.getGyeoljaeList(gyeoljaeSearchDTO);
			
			resultMap.put("gyeoljaeList"		,gyeoljaeList);
			resultMap.put("gyeoljaeListCnt"		,gyeoljaeListCnt);
			resultMap.put("gyeoljaeListCntAll"	,gyeoljaeListCntAll);
			resultMap.put("gyeoljaeSearchDTO"	,gyeoljaeSearchDTO);
			resultMap.put("begin_pageNo"		,pagingMap.get("begin_pageNo"));
			resultMap.put("end_pageNo"			,pagingMap.get("end_pageNo"));
			resultMap.put("selectPageNo"		,pagingMap.get("selectPageNo"));
			resultMap.put("last_pageNo"			,pagingMap.get("last_pageNo"));
			resultMap.put("begin_serialNo_asc"	,pagingMap.get("begin_serialNo_asc"));
			resultMap.put("begin_serialNo_desc"	,pagingMap.get("begin_serialNo_desc"));
			
			return resultMap;
	}
	
	
	@RequestMapping(
			value="/gyeoljaeRegProc.do"
			,method=RequestMethod.POST
			,produces="application/json;charset=UTF-8"
			)
	@ResponseBody
	public Map<String,String> gyeoljaeRegProc(
			GyeoljaeDTO gyeoljaeDTO
			){
		Map<String,String> responseMap = new HashMap<String,String>();
		int GyeoljaeRegCnt = 0;
		try {
			GyeoljaeRegCnt= this.gyeoljaeService.insertGyeoljae(gyeoljaeDTO);
		}	
		catch(Exception ex){
			GyeoljaeRegCnt = -1;		
		}
		
		responseMap.put("GyeoljaeRegCnt",GyeoljaeRegCnt+"");
	
		return responseMap;
	}
}


