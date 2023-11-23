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
public class DispatchServiceImpl implements DispatchService{

	@Autowired
	private DispatchDAO dispatchDAO;
	@Override
	public int insertDispatch(DispatchSearchDTO dispatchSearchDTO) throws Exception{
		int dispatchRegCnt  = 0;
		dispatchRegCnt = this.dispatchDAO.insertDispatch(dispatchSearchDTO);
		return dispatchRegCnt;
		
	};
	@Override
	public int deleteDispatch(DispatchSearchDTO dispatchSearchDTO) {
		int dispatchDelCnt  = 0;
		dispatchDelCnt = this.dispatchDAO.deleteDispatch(dispatchSearchDTO);
		return dispatchDelCnt;
	};
	
}






















