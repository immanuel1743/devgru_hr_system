package com.naver.erp;

import java.io.File;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

 
@Service
@Transactional
public class GyeoljaeServiceImpl implements GyeoljaeService{

	@Autowired
	private GyeoljaeDAO  gyeoljaeDAO; 
	@Override
	public GyeoljaeDTO getGyeoljae(String gyeoljae_num) { 
		GyeoljaeDTO gyeoljae = this.gyeoljaeDAO.getGyeoljae(gyeoljae_num); 
		return gyeoljae;
	}
	

	public int updateProgress( GyeoljaeDTO gyeoljaeDTO ) throws Exception {
		int resultUpCnt  = 0;
		resultUpCnt = this.gyeoljaeDAO.updateProgress(gyeoljaeDTO);
		return resultUpCnt;
	}
	 
	@Override
	public int updateGyeoljae(GyeoljaeDTO gyeoljaeDTO) throws Exception { 
		int gyeoljaeUpCnt = 0; 
		gyeoljaeUpCnt = this.gyeoljaeDAO.updateGyeoljae(gyeoljaeDTO); 
		return gyeoljaeUpCnt;
	} 
	@Override
	public int deleteGyeoljae(GyeoljaeDTO gyeoljaeDTO) { 
		int deleteBoardCnt = 0; 
		deleteBoardCnt = this.gyeoljaeDAO.deleteGyeoljae( gyeoljaeDTO );
		return deleteBoardCnt;
	}
 
	@Override
	public int insertGyeoljae( GyeoljaeDTO gyeoljaeDTO ) throws Exception  {
		int gyeoljaeRegCnt  = 0;
		gyeoljaeRegCnt = this.gyeoljaeDAO.insertGyeoljae(gyeoljaeDTO);
		return gyeoljaeRegCnt;
	}
	

	
}






















