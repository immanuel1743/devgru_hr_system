package com.naver.erp;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.mybatis.spring.annotation.MapperScan;

@MapperScan
@Mapper
public interface DevDAO {
	
	int getBoard(DevDTO devDTO);
	int insertDevInfo(DevDTO devDTO); 
	int idCheckInfo(DevDTO devDTO);
	int dev_emergency_line(DevDTO devDTO); 
	int highSchool_info(DevDTO devDTO); 
	int juniorCollege_info(DevDTO devDTO); 
	int university_info(DevDTO devDTO); 
	int master_info(DevDTO devDTO); 
	int doctor_info(DevDTO devDTO); 
	int past_company_info(DevDTO devDTO); 
	int dev_family_info1(DevDTO devDTO); 
	int dev_family_info2(DevDTO devDTO); 
	int dev_family_info3(DevDTO devDTO); 
	int dev_family_info4(DevDTO devDTO); 
	int dev_family_info5(DevDTO devDTO); 
	int dev_license(DevDTO devDTO); 
	int dev_reading_language_info(DevDTO devDTO); 
	int dev_speaking_language_info(DevDTO devDTO); 
	int itCenter_info(DevDTO devDTO); 
	int dev_liking_info(DevDTO devDTO); 
	int dev_interest_info(DevDTO devDTO); 
	int dev_past_prj_info(DevDTO devDTO); 
	int dev_server_computer_info(DevDTO devDTO);
	int dev_OS_info(DevDTO devDTO);
	int dev_it_language_info(DevDTO devDTO);
	int dev_DBMS_info(DevDTO devDTO);
	int dev_tool_info(DevDTO devDTO);
	
	
	
	int getDevListCntAll();
	int getDevListCnt(DevSearchDTO devSearchDTO);
	List<Map<String,String>> getDevList(DevSearchDTO devSearchDTO);
	DevDTO getDev(int d_no);
	
	List<Map<String, Object>> getDevDetailInfo(DevSearchDTO devSearchDTO);
	DevDTO getdevDetail(String dev_uid);	

	int getDel_dev_uid();
	int getUpd_dev_uid();
	int deleteDevInfo(DevDTO devDTO);
	int delete_dev_emergency_line(DevDTO devDTO);
	int delete_highSchool_info(DevDTO devDTO);
	int delete_juniorCollege_info(DevDTO devDTO);
	int delete_university_info(DevDTO devDTO); 
	int delete_master_info(DevDTO devDTO); 
	int delete_doctor_info(DevDTO devDTO);
	int delete_past_company_info(DevDTO devDTO); 
	int delete_dev_family_info(DevDTO devDTO); 
	int delete_dev_license(DevDTO devDTO); 
	int delete_reading_language_info(DevDTO devDTO); 
	int delete_dev_speaking_language_info(DevDTO devDTO); 
	int delete_itCenter_info(DevDTO devDTO); 
	int delete_dev_liking_info(DevDTO devDTO); 
	int delete_dev_past_prj_info(DevDTO devDTO); 
	int delete_dev_server_computer_info(DevDTO devDTO);
	int delete_dev_OS_info(DevDTO devDTO);
	int delete_dev_it_language_info(DevDTO devDTO);
	int delete_dev_DBMS_info(DevDTO devDTO);
	int delete_dev_tool_info(DevDTO devDTO);
	int delete_interest_info(DevDTO devDTO);
	
	int updateDevInfo(DevDTO devDTO);
	int updateDevEmergencyInfo(DevDTO devDTO);
	int updateDevLikingInfo(DevDTO devDTO);
	int updateDevPastPrjInfo(DevDTO devDTO);
	int updateDevItcenterInfo(DevDTO devDTO);
	int updateDevPastCompanyInfo(DevDTO devDTO);	
	int updateDevHighschoolInfo(DevDTO devDTO);
	int updateDevjuniorcollegeInfo(DevDTO devDTO);
	int updateDevUniversityInfo(DevDTO devDTO);
	int updateDevMasterInfo(DevDTO devDTO);
	int updateDevDoctorInfo(DevDTO devDTO);
	int updateDevFamilyInfo(DevDTO devDTO);
	
	int getBoardCnt(int del_dev_uid);
  DevDTO getDevComName(String dev_uid);
  List<String> getDevComName(DevSearchDTO devSearchDTO);	
	
}












