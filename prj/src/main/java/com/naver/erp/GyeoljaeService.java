package com.naver.erp;

import java.util.Map; 

public interface GyeoljaeService { 
	GyeoljaeDTO getGyeoljae(String gyeoljae_num); 
 	int updateGyeoljae(GyeoljaeDTO gyeoljaeDTO)throws Exception; 
	int deleteGyeoljae(GyeoljaeDTO gyeoljaeDTO); 
	int insertGyeoljae(GyeoljaeDTO gyeoljaeDTO) throws Exception;
	int updateProgress(GyeoljaeDTO gyeoljaeDTO ) throws Exception;	
	
}
