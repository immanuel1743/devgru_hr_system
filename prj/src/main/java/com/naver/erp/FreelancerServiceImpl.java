package com.naver.erp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
 
@Service
@Transactional
public class FreelancerServiceImpl implements FreelancerService{
	@Autowired
	private FreelancerDAO freelancerDAO;
 
	@Override
	public int insertFreeInfo( FreelancerDTO freelancerDTO )  throws Exception {
		int freelancerRegCnt  = 0;
		
		freelancerRegCnt = this.freelancerDAO.insertFreeInfo(freelancerDTO);
		freelancerRegCnt = this.freelancerDAO.free_can_work_location_info(freelancerDTO);
		freelancerRegCnt = this.freelancerDAO.free_favorite_part_code(freelancerDTO);
		if(freelancerDTO.getLicense_code()!=null&& freelancerDTO.getLicense_code().size()>0) {
			freelancerRegCnt = this.freelancerDAO.free_license(freelancerDTO);
		}
		freelancerRegCnt = this.freelancerDAO.free_skill_category(freelancerDTO);
		freelancerRegCnt = this.freelancerDAO.free_year_info(freelancerDTO);
		if(freelancerDTO.getBlack_reason_name()!=null&& freelancerDTO.getBlack_reason_name().size()>0) {
			this.freelancerDAO.is_black_info(freelancerDTO);
		}
		
		return freelancerRegCnt;
	}


	@Override
	public int deleteFreeInfo(FreelancerDTO freelancerDTO) {
		int deleteBoardCnt = 0;

		deleteBoardCnt = this.freelancerDAO.delete_free_favorite_part( freelancerDTO );
		deleteBoardCnt = this.freelancerDAO.delete_free_license( freelancerDTO );
		deleteBoardCnt = this.freelancerDAO.delete_free_skill_category( freelancerDTO ); 
		deleteBoardCnt = this.freelancerDAO.delete_free_year_info( freelancerDTO );
		deleteBoardCnt = this.freelancerDAO.delete_is_black_info( freelancerDTO );
		deleteBoardCnt = this.freelancerDAO.delete_free_can_work_location( freelancerDTO );
		deleteBoardCnt = this.freelancerDAO.deleteFreeInfo( freelancerDTO );
		
		return deleteBoardCnt;
	}

	
	@Override
	public int updateFreeInfo(FreelancerDTO freelancerDTO) {
		int updateFreeCnt = 0;

		updateFreeCnt = this.freelancerDAO.updateFreeInfo( freelancerDTO );
		updateFreeCnt = this.freelancerDAO.updateFreeYearInfo(freelancerDTO);

		updateFreeCnt = this.freelancerDAO.delete_free_license(freelancerDTO);
		updateFreeCnt = this.freelancerDAO.delete_is_black_info(freelancerDTO);

		if(freelancerDTO.getLicense_code()!=null && freelancerDTO.getLicense_code().size()>0) {
			updateFreeCnt = this.freelancerDAO.free_license(freelancerDTO);
		}
		if(freelancerDTO.getBlack_reason_name()!=null && freelancerDTO.getBlack_reason_name().size()>0) {
			updateFreeCnt = this.freelancerDAO.is_black_info(freelancerDTO);
		}

		updateFreeCnt = this.freelancerDAO.delete_free_skill_category(freelancerDTO);
		updateFreeCnt = this.freelancerDAO.delete_free_favorite_part(freelancerDTO);

		updateFreeCnt = this.freelancerDAO.delete_free_can_work_location(freelancerDTO);

		updateFreeCnt = this.freelancerDAO.free_skill_category(freelancerDTO);
		updateFreeCnt = this.freelancerDAO.free_favorite_part_code(freelancerDTO);
		
		updateFreeCnt = this.freelancerDAO.free_can_work_location_info(freelancerDTO);
		
		return updateFreeCnt;
	}

}






















