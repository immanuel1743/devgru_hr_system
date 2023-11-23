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
public class DispatchController {

   @Autowired
   private DispatchDAO dispatchDAO;  

   @Autowired
   private DispatchService dispatchService; 
   
   
   
   @RequestMapping(value="/searchDispatch.do")
   public ModelAndView searchDispatch(
		   DispatchSearchDTO  dispatchSearchDTO
		   ,PrjSearchDTO prjSearchDTO
		   ,HttpSession session
		   ,@RequestParam(value="prj_num", required=false) String prj_num
   ) {
      Map<String,Object> dispatchListMap = getDispatchListMap(dispatchSearchDTO);

      Map<String,Object> prjListMap = getPrjListMap(prjSearchDTO);

      
      ModelAndView mav = new ModelAndView();
      mav.setViewName("searchDispatch.jsp");
      mav.addObject("dispatchListMap" , dispatchListMap);

      mav.addObject("prjListMap" , prjListMap);
      if( prj_num!=null|| prj_num==""){
      Map<String,Object> allDevListMap = getAllDevListMap(prj_num);
      mav.addObject("allDevListMap" , allDevListMap);
      }
			

      return mav;
      }

   public Map<String, Object> getDispatchListMap(DispatchSearchDTO dispatchSearchDTO) {
      Map<String, Object> resultMap = new HashMap<String, Object>();
      List<Map<String,String>> dispatchList;
      int dispatchListCnt;
      int dispatchListCntAll;
      
      Map<String, Integer> pagingMap;
      
      dispatchListCntAll = this.dispatchDAO.getDispatchListCntAll();
      dispatchListCnt = this.dispatchDAO.getDispatchListCnt(dispatchSearchDTO);
      

      pagingMap = Util.getPagingMap(
    		  dispatchSearchDTO.getSelectPageNo()
    		  ,dispatchSearchDTO.getRowCntPerPage()
    		  ,dispatchListCnt
            );
      dispatchSearchDTO.setSelectPageNo((int)pagingMap.get("selectPageNo"));
      dispatchSearchDTO.setRowCntPerPage((int)pagingMap.get("rowCntPerPage"));
      dispatchSearchDTO.setBegin_rowNo((int)pagingMap.get("begin_rowNo"));
      dispatchSearchDTO.setEnd_rowNo((int)pagingMap.get("end_rowNo"));


      dispatchList = this.dispatchDAO.getDispatchList(dispatchSearchDTO);
      
      resultMap.put("dispatchList", dispatchList);
      resultMap.put("dispatchListCnt", dispatchListCnt);
      resultMap.put("dispatchListCntAll", dispatchListCntAll);
      resultMap.put("dispatchSearchDTO", dispatchSearchDTO);

      resultMap.put("begin_pageNo", pagingMap.get("begin_pageNo"));
      resultMap.put("end_pageNo", pagingMap.get("end_pageNo"));
      resultMap.put("selectPageNo", pagingMap.get("selectPageNo"));
      resultMap.put("last_pageNo", pagingMap.get("last_pageNo"));
      resultMap.put("begin_serialNo_asc", pagingMap.get("begin_serialNo_asc"));
      resultMap.put("begin_serialNo_desc", pagingMap.get("begin_serialNo_desc"));

      return resultMap;
   }
   
   public Map<String, Object> getAllDevListMap(String prj_num) {
	      Map<String, Object> resultMap = new HashMap<String, Object>();
	      List<Map<String,String>> allDevList;
	      int allDevListCnt;
	      allDevList = this.dispatchDAO.getAllDevList(prj_num);
	      allDevListCnt = this.dispatchDAO.getAllDevListCnt(prj_num);
	      resultMap.put("allDevList", allDevList);
	      resultMap.put("allDevListCnt", allDevListCnt);
	      
	      return resultMap;
	   }
   
   public Map<String, Object> getPrjListMap(PrjSearchDTO prjSearchDTO) {
	     Map<String, Object> resultMap = new HashMap<String, Object>();
	     List<Map<String, String>> prjList; 
	     int prjListCnt; 
	     int prjListCntAll;
	     Map<String, Integer> pagingMap;
	     prjListCntAll = this.dispatchDAO.getPrjListCntAll();
	     prjListCnt = this.dispatchDAO.getPrjListCnt(prjSearchDTO); 
	     pagingMap = Util.getPagingMap(
	    		 prjSearchDTO.getSelectPageNo() 
	    		 ,prjSearchDTO.getRowCntPerPage() 
	    		 ,prjListCnt
	     );
	     
	     prjSearchDTO.setSelectPageNo((int) pagingMap.get("selectPageNo"));
	     prjSearchDTO.setRowCntPerPage((int) pagingMap.get("rowCntPerPage"));
	     prjSearchDTO.setBegin_rowNo((int) pagingMap.get("begin_rowNo"));
	     prjSearchDTO.setEnd_rowNo((int) pagingMap.get("end_rowNo"));
	     
	     prjList = this.dispatchDAO.getPrjList(prjSearchDTO);

	     resultMap.put("prjList", prjList); 
	     resultMap.put("prjListCnt", prjListCnt);
	     resultMap.put("prjListCntAll", prjListCntAll); 
	     resultMap.put("prjSearchDTO", prjSearchDTO); 
	     resultMap.put("begin_pageNo", pagingMap.get("begin_pageNo")); 
	     resultMap.put("end_pageNo", pagingMap.get("end_pageNo")); 
	     resultMap.put("selectPageNo", pagingMap.get("selectPageNo")); 
	     resultMap.put("last_pageNo",pagingMap.get("last_pageNo"));
	     resultMap.put("begin_serialNo_asc", pagingMap.get("begin_serialNo_asc")); 
	     resultMap.put("begin_serialNo_desc", pagingMap.get("begin_serialNo_desc"));
	     
	     return resultMap; 
	     }
   
   
   @RequestMapping(
         value="/insertDispatch.do" 
         ,method=RequestMethod.POST
         ,produces="application/json;charset=UTF-8"
   )
   @ResponseBody
   public int insertDispatch(  
		   DispatchSearchDTO dispatchSearchDTO

   ){
      int insertDispatchCnt = 0;
      
      try{	
    	  insertDispatchCnt = this.dispatchService.insertDispatch(dispatchSearchDTO);
      	}
      catch(Exception ex){
    	  insertDispatchCnt = -1;
      }
      return insertDispatchCnt;
   }
   @RequestMapping(
	         value="/deleteDispatch.do" 
	         ,method=RequestMethod.POST
	         ,produces="application/json;charset=UTF-8"
	   )
	   @ResponseBody
	   public int deleteDispatch(  
			   DispatchSearchDTO dispatchSearchDTO

	   ){
	      int deleteDispatchCnt = 0;
	      
	      try{	
	    	  deleteDispatchCnt = this.dispatchService.deleteDispatch(dispatchSearchDTO);
	      	}
	      catch(Exception ex){
	    	  deleteDispatchCnt = -1;
	      }
	      return deleteDispatchCnt;
	   }
   
   
   
}

