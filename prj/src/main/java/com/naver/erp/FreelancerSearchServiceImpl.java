package com.naver.erp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
 
@Service
@Transactional
public class FreelancerSearchServiceImpl implements FreelancerSearchService{

	@Autowired
	private FreelancerDAO freelancerDAO;
 
	@Override
	public FreelancerDTO getFreeDetail(String free_uid) throws Exception {
		FreelancerDTO free = this.freelancerDAO.getFreeDetail(free_uid);
		return free;
	}
}






















