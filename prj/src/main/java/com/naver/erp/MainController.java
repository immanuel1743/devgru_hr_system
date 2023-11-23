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
public class MainController {
	@Autowired
	private MainDAO mainDAO;
	
	
	@RequestMapping( value="/mainpage.do")
	public ModelAndView mainpage(
	){
		Map<String, Object> mainListMap = getMainListMap();
		ModelAndView mav = new ModelAndView();
		mav.setViewName("mainpage.jsp");
	      mav.addObject("mainListMap", mainListMap);
		return mav;}

	   public Map<String, Object> getMainListMap() {
		 Map<String, Object> resultMap = new HashMap<String, Object>();
		 List<Map<String, String>> mainList; 
		 
		 
		 mainList = this.mainDAO.getMainList();
		 
		 resultMap.put("mainList", mainList); 

		 return resultMap; 
		 }
	
	@RequestMapping( value="/registFreeDev.do")
	public ModelAndView registFreeDev(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("registFreeDev.jsp");
		return mav;}
	
	@RequestMapping( value="/registDev.do")
		public ModelAndView registDev(
				){
					ModelAndView mav = new ModelAndView();
					mav.setViewName("registDev.jsp");
					return mav;}
	@RequestMapping( value="/registPrj.do")
	public ModelAndView registPrj( 
			){
				ModelAndView mav = new ModelAndView();
				mav.setViewName("registPrj.jsp");
				return mav;}
	
	@RequestMapping( value="/gyeoljaeRegForm.do")
	public ModelAndView gyeoljaeRegForm( 
			){
				ModelAndView mav = new ModelAndView();
				mav.setViewName("gyeoljaeRegForm.jsp");
				return mav;}
	
}


