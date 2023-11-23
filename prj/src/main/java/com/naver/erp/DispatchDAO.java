package com.naver.erp;

import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Mapper;
import org.mybatis.spring.annotation.MapperScan;

@MapperScan
@Mapper
public interface DispatchDAO {
	
	int insertDispatch(DispatchDTO dispatchDTO);

	List<Map<String,String>> getAllDevList(String prj_num);
	List<Map<String,String>> getDispatchList(DispatchSearchDTO dispatchSearchDTO);

	int getDispatchListCntAll();
	int getDispatchListCnt(DispatchSearchDTO dispatchSearchDTO);
	DispatchDTO getDispatch(int d_no);
	
	int getAllDevListCnt(String prj_num);
	int getPrjListCntAll();
	int getPrjListCnt(PrjSearchDTO prjSearchDTO);
	List<Map<String,String>> getPrjList(PrjSearchDTO prjSearchDTO);
	int insertDispatch(DispatchSearchDTO dispatchSearchDTO);
	int deleteDispatch(DispatchSearchDTO dispatchSearchDTO);
	
}












