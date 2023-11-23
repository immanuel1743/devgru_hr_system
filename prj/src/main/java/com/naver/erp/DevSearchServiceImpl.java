package com.naver.erp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
 
@Service
@Transactional
public class DevSearchServiceImpl implements DevSearchService{

	@Autowired
	private DevDAO devDAO;
 
	
	@Override
	public DevDTO getDevDetail(String dev_uid) throws Exception {
		DevDTO dev = this.devDAO.getdevDetail(dev_uid);
		return dev;
	}
}






















