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
public class BoardController {
	
	
	
	@Autowired
	private BoardDAO boardDAO;
	
	@Autowired
	private BoardService boardService;
	@RequestMapping(value="/boardList.do")
	public ModelAndView boardList(
			BoardSearchDTO boardSearchDTO
			,HttpSession session
			)
	{
		String mid = (String)session.getAttribute("mid");
		if(mid==null) {
			ModelAndView mav = new ModelAndView();
			mav.setViewName("error.jsp");	
			return mav;
		}
		Map<String,Object> boardMap = getBoardSearchResultMap(boardSearchDTO);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("boardList.jsp");	
		mav.addObject("boardMap", boardMap);
		return mav;
		
	}
	
	public Map<String,Object> getBoardSearchResultMap(
			BoardSearchDTO boardSearchDTO
	){
			Map<String,Object> resultMap = new HashMap<String,Object>();
			List<Map<String,String>> boardList;
			int boardListCnt;
			int boardListCntAll;
			Map<String,Integer> pagingMap;
			boardListCntAll = this.boardDAO.getBoardListCntAll();
			boardListCnt = this.boardDAO.getBoardListCnt(boardSearchDTO);
			pagingMap = Util.getPagingMap(
					boardSearchDTO.getSelectPageNo()
					,boardSearchDTO.getRowCntPerPage()
					,boardListCnt
			);
			boardSearchDTO.setSelectPageNo((int)pagingMap.get("selectPageNo")	);
			boardSearchDTO.setRowCntPerPage((int)pagingMap.get("rowCntPerPage")	);
			boardSearchDTO.setBegin_rowNo((int)pagingMap.get("begin_rowNo")		);
			boardSearchDTO.setEnd_rowNo((int)pagingMap.get("end_rowNo")		);
			boardList = this.boardDAO.getBoardList(boardSearchDTO);
			
			resultMap.put("boardList"		,boardList);
			resultMap.put("boardListCnt"	,boardListCnt);
			resultMap.put("boardListCntAll"	,boardListCntAll);
			resultMap.put("boardSearchDTO"	,boardSearchDTO);
			
			resultMap.put("begin_pageNo"		,pagingMap.get("begin_pageNo"));
			resultMap.put("end_pageNo"			,pagingMap.get("end_pageNo"));
			resultMap.put("selectPageNo"		,pagingMap.get("selectPageNo"));
			resultMap.put("last_pageNo"			,pagingMap.get("last_pageNo"));
			resultMap.put("begin_serialNo_asc"	,pagingMap.get("begin_serialNo_asc"));
			resultMap.put("begin_serialNo_desc"	,pagingMap.get("begin_serialNo_desc"));
			
			
			return resultMap;
	}
	
	@RequestMapping(value="/boardDetailForm.do")
	public ModelAndView boardDetailForm(
			@RequestParam(value="b_no") int b_no
			) 
	{
		BoardDTO boardDTO = this.boardService.getBoard(b_no,true);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("boardDetailForm.jsp");
		mav.addObject("boardDTO",boardDTO);
		return mav;
	}
	
	@RequestMapping(value="/boardUpDelForm.do")
	public ModelAndView boardUpDelForm(
			@RequestParam(value="b_no") int b_no
			){
		
		BoardDTO boardDTO = this.boardDAO.getBoard(b_no);

		ModelAndView mav = new ModelAndView();
		mav.setViewName("boardUpDelForm.jsp");
		mav.addObject("boardDTO",boardDTO);
		
		return mav;
	}

	@RequestMapping(
			value="/boardUpProc.do"
			,method=RequestMethod.POST
			,produces="application/json;charset=UTF-8"
			)
	@ResponseBody
	public Map<String,String> boardUpProc( 
				@Valid
				BoardDTO boardDTO 
				,BindingResult bindingResult
			
			){
			Map<String,String> responseMap = new HashMap<String,String>();
			int boardUpCnt = 0;
			String errorMsg = "";
			
			try {
				errorMsg = Util.getErrorMsgFromBindingResult(bindingResult);
				
				if(errorMsg!= null && errorMsg.length()>0) {
					boardUpCnt = -21;
				}
				
				else {

					boardUpCnt = this.boardService.updateBoard(boardDTO);
				}
			}	
			catch(Exception ex) {
				errorMsg = "게시판 수정이 실패했습니다. 관리자에게 문의 바랍니다.";
				boardUpCnt = -9;
			}
			responseMap.put("errorMsg", errorMsg);
			responseMap.put("boardUpCnt",boardUpCnt+"");
			
			
			return responseMap;
		
	}	
	
	@RequestMapping(
			value="/boardDelProc.do"
			,method=RequestMethod.POST
			,produces="application/json;charset=UTF-8"
			)
	@ResponseBody
	public int boardDelProc(		
			BoardDTO boardDTO
			) {
		int deleteBoardCnt = this.boardService.deleteBoard(boardDTO);
		
		return deleteBoardCnt;
	}
	
	@RequestMapping(value="/boardRegForm.do")
	public ModelAndView boardRegForm() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("boardRegForm.jsp");
		return mav;
	}
	
	@RequestMapping(
			value="/boardRegProc.do"
			,method=RequestMethod.POST
			,produces="application/json;charset=UTF-8"
			)
	@ResponseBody
	public Map<String,String> boardRegProc(
				BoardDTO boardDTO
			){
		Map<String,String> responseMap = new HashMap<String,String>();
		String errorMsg="";
		int boardRegCnt = 0;
		try {
			boardRegCnt= this.boardService.insertBoard(boardDTO);
		}	
		catch(Exception ex){
			errorMsg = "게시판 입력이 실패했습니다. 관리자에게 문의 바랍니다.";
			boardRegCnt = -1;		
		}
		
		responseMap.put("errorMsg", errorMsg);
		responseMap.put("boardRegCnt",boardRegCnt+"");
	
		return responseMap;
	}
	
}


