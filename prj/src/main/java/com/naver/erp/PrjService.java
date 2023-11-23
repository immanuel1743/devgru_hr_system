package com.naver.erp;
 

public interface PrjService {
	int insertPrjInfo(PrjDTO prjDTO) throws Exception;
	int deletePrj(PrjDTO prjDTO) throws Exception;
	int updatePrjDetail(PrjDTO prjDTO) throws Exception;
}
