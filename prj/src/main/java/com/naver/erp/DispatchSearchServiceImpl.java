package com.naver.erp;

import java.io.File;
import java.util.Map;

import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;
import java.lang.Override;

@Service
@Transactional
public class DispatchSearchServiceImpl implements DispatchSearchService{

	@Autowired
	private DispatchDAO dispatchDAO;
	@Override
	public DispatchDTO getDispatch(int d_no) {
		DispatchDTO dispatch = this.dispatchDAO.getDispatch(d_no);
		return dispatch;
	}
	
	
	
	
}






















