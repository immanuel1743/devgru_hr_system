package com.naver.erp;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.mybatis.spring.annotation.MapperScan;

@MapperScan
@Mapper
public interface PrjDAO {
	
	int insertPrjInfo(PrjDTO prjDTO);
	int prj_dev_person_info(PrjDTO prjDTO); 
	int prj_dev_license_info(PrjDTO prjDTO); 
	int prj_oper_person_info(PrjDTO prjDTO); 
	int prj_oper_license_info(PrjDTO prjDTO); 
	int prj_publ_person_info(PrjDTO prjDTO); 
	int prj_publ_license_info(PrjDTO prjDTO); 
	int prj_desi_person_info(PrjDTO prjDTO);
	int prj_desi_license_info(PrjDTO prjDTO);

	int getPrjListCntAll();
	int getPrjListCnt(PrjSearchDTO prjSearchDTO);
	List<Map<String,String>> getPrjList(PrjSearchDTO prjSearchDTO);
	PrjDTO getPrj(int d_no);
	List<Map<String, Object>> getPrjDetailInfo(PrjSearchDTO prjSearchDTO);

	int updatePrjDetail(PrjDTO prjDTO);
	int deletePrj(PrjDTO prjDTO);
	int deletePrjJoin(PrjDTO prjDTO);
	int deletePubl(PrjDTO prjDTO);
	int deleteDesi(PrjDTO prjDTO);
	int deleteDev(PrjDTO prjDTO);
	int deleteOper(PrjDTO prjDTO);
	int deletePublLicens(PrjDTO prjDTO);
	int deleteDesiLicens(PrjDTO prjDTO);
	int deleteDevLicens(PrjDTO prjDTO);
	int deleteOperLicens(PrjDTO prjDTO);
	int getDel_prj_uid(Object prjDTO);
	int getBoardCnt(int del_prj_uid);
	int getDel_prj_uid();

	int updatePrjDev(PrjDTO prjDTO); 
	int updatePrjDevLicens(PrjDTO prjDTO);
}