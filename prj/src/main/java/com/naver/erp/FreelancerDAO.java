package com.naver.erp;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.mybatis.spring.annotation.MapperScan;

@MapperScan
@Mapper
public interface FreelancerDAO {
	 
	int insertFreeInfo(FreelancerDTO freelancerDTO); 
  	int free_can_work_location_info(FreelancerDTO freelancerDTO);
	int free_favorite_part_code(FreelancerDTO freelancerDTO); 
	int free_license(FreelancerDTO freelancerDTO);
	int free_skill_category(FreelancerDTO freelancerDTO);
	int free_year_info(FreelancerDTO freelancerDTO);
	int is_black_info(FreelancerDTO freelancerDTO);

	int getFreelancerListCntAll();
	int getFreelancerListCnt(FreelancerSearchDTO freelancerSearchDTO);
	List<Map<String,String>> getFreelancerList(FreelancerSearchDTO freelancerSearchDTO);
	FreelancerDTO getFreelancer(int d_no);

	List<Map<String, Object>> getFreeDetailInfo(FreelancerSearchDTO freelancerSearchDTO);
	FreelancerDTO getFreeDetail(String free_uid);

	int getDel_free_uid();
	int getUpd_free_uid();
	int deleteFreeInfo(FreelancerDTO freelancerDTO);
	int delete_free_favorite_part(FreelancerDTO freelancerDTO);
	int delete_free_license(FreelancerDTO freelancerDTO);
	int delete_free_skill_category(FreelancerDTO freelancerDTO);
	int delete_free_year_info(FreelancerDTO freelancerDTO);
	int delete_is_black_info(FreelancerDTO freelancerDTO);
	int delete_free_can_work_location(FreelancerDTO freelancerDTO);
	int updateFreeInfo(FreelancerDTO freelancerDTO);
	int updateFreeYearInfo(FreelancerDTO freelancerDTO);
	int getBoardCnt(int del_free_uid);
}