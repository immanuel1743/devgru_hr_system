package com.naver.erp;

import java.util.List;

public interface DevService { 
	int insertDevInfo(DevDTO devDTO)  throws Exception;
	 
	int deleteDevInfo(DevDTO devDTO) throws Exception;
	 
	int updateDevInfo(DevDTO devDTO) throws Exception;
}









