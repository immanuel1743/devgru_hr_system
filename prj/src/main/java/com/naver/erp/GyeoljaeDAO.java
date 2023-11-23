package com.naver.erp;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface GyeoljaeDAO { 
 	int  getGyeoljaeListCntAll(  ); 
  	int  getGyeoljaeListCnt( GyeoljaeSearchDTO gyeoljaeSearchDTO ); 
 	List<Map<String,String>> getGyeoljaeList( GyeoljaeSearchDTO gyeoljaeSearchDTO ); 
 	GyeoljaeDTO getGyeoljae(String gyeoljae_num);
 	
 	int updateProgress(GyeoljaeDTO gyeoljaeDTO);
 	 
 	int updateGyeoljae(GyeoljaeDTO gyeoljaeDTO); 
 	int deleteGyeoljae(GyeoljaeDTO gyeoljaeDTO); 
	int insertGyeoljae(GyeoljaeDTO gyeoljaeDTO);
	
	
}












