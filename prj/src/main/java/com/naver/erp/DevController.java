package com.naver.erp;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class DevController {

   @Autowired
   private DevDAO devDAO;  

   @Autowired
   private DevService devService; 
   
   @RequestMapping(value="/searchDev.do")
   public ModelAndView searchDev(
         DevSearchDTO  devSearchDTO
         ,HttpSession session
   ) {
      Map<String,Object> devListMap = getDevListMap(devSearchDTO);
      ModelAndView mav = new ModelAndView();
      mav.setViewName("searchDev.jsp");
      mav.addObject("devListMap" , devListMap);
      return mav;
      }

   
	@RequestMapping(
		 value="/searchDevDetail.do",
		 method = RequestMethod.POST,
		 produces ="application/json;charset=UTF-8"
	)
	@ResponseBody
	public Map<String, Object> searchDevDetail(
			DevSearchDTO devSearchDTO,
			@RequestParam(value="dev_uid") String dev_uid
	){
		Map<String, Object> devListDetailMap = getDevListDetailMap( devSearchDTO );	
		return devListDetailMap;
	}    
   
	public Map<String, Object> getDevListDetailMap(DevSearchDTO devSearchDTO){
		Map<String, Object> resultMap = new HashMap<String, Object>();
		List<Map<String, Object>> devList;
		int devListCnt;
		int devListCntAll;
		Map<String,Integer> pagingMap;
		
		devListCntAll =  this.devDAO.getDevListCntAll(   );
		devListCnt =  this.devDAO.getDevListCnt(devSearchDTO);

		pagingMap = Util.getPagingMap(
				devSearchDTO.getSelectPageNo()
				, devSearchDTO.getRowCntPerPage()
				, devListCnt
		);

		devSearchDTO.setSelectPageNo((int)pagingMap.get("selectPageNo"));
		devSearchDTO.setRowCntPerPage((int)pagingMap.get("rowCntPerPage"));
		devSearchDTO.setBegin_rowNo((int)pagingMap.get("begin_rowNo"));
		devSearchDTO.setEnd_rowNo((int)pagingMap.get("end_rowNo"));
		
		devList = this.devDAO.getDevDetailInfo( devSearchDTO  );

		resultMap.put("devList", devList);
		return resultMap;
	}   
	
	@RequestMapping(
			value="/deleteDevInfo.do"
			,method=RequestMethod.POST
			,produces="application/json;charset=UTF-8"
			)
	@ResponseBody
	public int deleteDevInfo(
			DevDTO devDTO,
			@RequestParam(value="del_dev_uid") int del_dev_uid
			) throws Exception {
		int deleteDevCnt = 0;
				
		try {
			deleteDevCnt = this.devService.deleteDevInfo(devDTO);
		
		} catch (Exception e) {
			deleteDevCnt = -0;
		}
		
		return deleteDevCnt;
	}	
	
	@RequestMapping(
			value="/updateDevInfo.do"
			,method=RequestMethod.POST
			,produces="application/json;charset=UTF-8"
			)
	@ResponseBody
	public int updateDevInfo(
			DevDTO devDTO,
			@RequestParam(value="del_dev_uid") int del_dev_uid
			) throws Exception {

		int updateDevCnt = 0;

		try {
			updateDevCnt = this.devService.updateDevInfo(devDTO);
		} catch (Exception e) {
			updateDevCnt = -1;
		}

		return updateDevCnt;
	}	
	
	public Map<String,Object> getDevListMap(DevSearchDTO devSearchDTO){
		Map<String,Object> resultMap = new HashMap<String,Object>();
		List<Map<String,String>> devList;
		int devListCnt;
		int devListCntAll;
		Map<String,Integer> pagingMap;
		
		devListCntAll =  this.devDAO.getDevListCntAll(   );
		devListCnt =  this.devDAO.getDevListCnt(  devSearchDTO );
		
		
		pagingMap = Util.getPagingMap(
				devSearchDTO.getSelectPageNo()
				, devSearchDTO.getRowCntPerPage()
				, devListCnt
		);
		

		devSearchDTO.setSelectPageNo((int)pagingMap.get("selectPageNo"));
		devSearchDTO.setRowCntPerPage((int)pagingMap.get("rowCntPerPage"));
		devSearchDTO.setBegin_rowNo((int)pagingMap.get("begin_rowNo"));
		devSearchDTO.setEnd_rowNo((int)pagingMap.get("end_rowNo"));
		
		
		devList =  this.devDAO.getDevList( devSearchDTO  );
		
		resultMap.put("devList"			,devList);
		resultMap.put("devListCnt"		,devListCnt);
		resultMap.put("devListCntAll"	,devListCntAll);
		resultMap.put("devSearchDTO"	,devSearchDTO);
		
		resultMap.put("begin_pageNo"		,pagingMap.get("begin_pageNo"));
		resultMap.put("end_pageNo"			,pagingMap.get("end_pageNo"));
		resultMap.put("selectPageNo"		,pagingMap.get("selectPageNo"));
		resultMap.put("last_pageNo"			,pagingMap.get("last_pageNo"));
		resultMap.put("begin_serialNo_asc"	,pagingMap.get("begin_serialNo_asc"));
		resultMap.put("begin_serialNo_desc"	,pagingMap.get("begin_serialNo_desc"));

		return resultMap;
	}	
	
	@RequestMapping(
	         value="/registDevProc.do" 
	         ,method=RequestMethod.POST
	         ,produces="application/json;charset=UTF-8"
	   )
	   @ResponseBody
	   public Map<String,String> DevRegProc(  
	         DevDTO  devDTO

	   ){
	      Map<String,String> responseMap = new HashMap<String,String>();
	      int devRegCnt = 0;
	            try{

	               devRegCnt = this.devService.insertDevInfo(devDTO);
	               if(devRegCnt==11) {responseMap.put("devRegCnt" , devRegCnt+"" );
	               		return responseMap;
	               }
	            }
	            catch(Exception ex){
	                devRegCnt = -1;
	             
	             }
	      responseMap.put("devRegCnt" , devRegCnt+"" );
		return responseMap;
		}	
	
   
}

