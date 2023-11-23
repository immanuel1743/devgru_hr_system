package com.naver.erp;

import java.util.Map;


public interface LoginDAO {
	public int getLoginIdCnt( Map<String,String> idPwd  );
}
