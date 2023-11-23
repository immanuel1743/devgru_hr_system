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
public class PrjController {

   @Autowired
   private PrjDAO prjDAO;

   @Autowired
   private PrjService prjService;

   @RequestMapping(value = "/searchPrj.do")
   public ModelAndView searchPrj(
         PrjSearchDTO prjSearchDTO
         ,HttpSession session
   ) {
       Map<String, Object> prjListMap = getPrjListMap(prjSearchDTO);
      ModelAndView mav = new ModelAndView();
      mav.setViewName("searchPrj.jsp");
      mav.addObject("prjListMap", prjListMap);
      return mav;
   }
   
   public Map<String, Object> getPrjListMap(PrjSearchDTO prjSearchDTO) {
	 Map<String, Object> resultMap = new HashMap<String, Object>();
	 List<Map<String, String>> prjList; 
	 int prjListCnt; 
	 int prjListCntAll;
	 Map<String, Integer> pagingMap;
	 
	 prjListCntAll = this.prjDAO.getPrjListCntAll();
	 prjListCnt = this.prjDAO.getPrjListCnt(prjSearchDTO); 
	 pagingMap = Util.getPagingMap(
			 prjSearchDTO.getSelectPageNo() 
			 ,prjSearchDTO.getRowCntPerPage() 
			 ,prjListCnt
	 );
	 
	 prjSearchDTO.setSelectPageNo((int) pagingMap.get("selectPageNo"));
	 prjSearchDTO.setRowCntPerPage((int) pagingMap.get("rowCntPerPage"));
	 prjSearchDTO.setBegin_rowNo((int) pagingMap.get("begin_rowNo"));
	 prjSearchDTO.setEnd_rowNo((int) pagingMap.get("end_rowNo"));
	 
	 prjList = this.prjDAO.getPrjList(prjSearchDTO);
	 
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

   @RequestMapping(value = "/registPrjProc.do"
         ,method = RequestMethod.POST
         ,produces = "application/json;charset=UTF-8"
   )
   @ResponseBody
   public Map<String, String> PrjRegProc(
         PrjDTO prjDTO
) {
      Map<String, String> responseMap = new HashMap<String, String>();
      int prjRegCnt = 0;
      try {   
         prjRegCnt = this.prjService.insertPrjInfo(prjDTO);
      } catch (Exception ex) {
         prjRegCnt = -1;
      }
      responseMap.put("prjRegCnt", prjRegCnt + "");
      return responseMap;
   }

	@RequestMapping(
		 value="/searchPrjDetail.do",
		 method = RequestMethod.POST,
		 produces ="application/json;charset=UTF-8"
	)
	@ResponseBody
	public Map<String, Object> searchPrjDetail(
			PrjSearchDTO prjSearchDTO,
			@RequestParam(value="prj_uid") String prj_uid
	){
		Map<String, Object> prjListDetailMap = getPrjListDetailMap( prjSearchDTO );
		return prjListDetailMap;
	}

	public Map<String, Object> getPrjListDetailMap(PrjSearchDTO prjSearchDTO){
		Map<String, Object> resultMap = new HashMap<String, Object>();
		List<Map<String, Object>> prjList;
		int prjListCnt;
		int prjListCntAll;
		Map<String,Integer> pagingMap;

		prjListCntAll =  this.prjDAO.getPrjListCntAll();
		prjListCnt =  this.prjDAO.getPrjListCnt(prjSearchDTO);

		pagingMap = Util.getPagingMap(
				prjSearchDTO.getSelectPageNo()
				, prjSearchDTO.getRowCntPerPage()
				, prjListCnt
		);

		prjSearchDTO.setSelectPageNo((int)pagingMap.get("selectPageNo"));
		prjSearchDTO.setRowCntPerPage((int)pagingMap.get("rowCntPerPage"));
		prjSearchDTO.setBegin_rowNo((int)pagingMap.get("begin_rowNo"));
		prjSearchDTO.setEnd_rowNo((int)pagingMap.get("end_rowNo"));
		
		prjList = this.prjDAO.getPrjDetailInfo( prjSearchDTO  );

		resultMap.put("prjList", prjList);
		return resultMap;
	}

	@RequestMapping(
		 value="/updatePrjInfo.do",
		 method = RequestMethod.POST,
		 produces ="application/json;charset=UTF-8"
	)
	@ResponseBody
	public int updatePrjDetail(
			PrjDTO prjDTO,
			@RequestParam(value="del_prj_uid") String del_prj_uid
	) throws Exception {

		int updateBoarCnt = 0;

		try {
				updateBoarCnt = this.prjService.updatePrjDetail(prjDTO);
      }
      catch (Exception e) {
			updateBoarCnt = -1;
		}
		return updateBoarCnt;
	}
	

	@RequestMapping(
		 value="/deletePrjInfo.do",
		 method = RequestMethod.POST,
		 produces ="application/json;charset=UTF-8"
	)
	@ResponseBody
	public int deletePrjDetail(
			PrjDTO prjDTO,
			@RequestParam(value="del_prj_uid") String del_prj_uid
	) throws Exception {

		int deleteBoarCnt = 0;

        
		try {
      deleteBoarCnt = this.prjService.deletePrj(prjDTO);

		} catch (Exception e) {
			deleteBoarCnt = -1;
		}


		return deleteBoarCnt;
	}
}