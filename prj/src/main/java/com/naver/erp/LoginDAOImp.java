package com.naver.erp;

import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
 
@Repository
public class LoginDAOImp implements LoginDAO{ 
	@Autowired
	private SqlSessionTemplate sqlSession; 
	@Override
	public int getLoginIdCnt(  
			Map<String,String> idPwd 
	) { 
		int loginIdCnt = this.sqlSession.selectOne( 
				"com.naver.erp.LoginDAO.getLoginIdCnt"  
				, idPwd
		); 
		return loginIdCnt;
	}
}
