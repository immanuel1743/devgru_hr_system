package com.naver.erp;

import java.util.Map;

public interface BoardService {
	
	BoardDTO getBoard(int b_no, boolean isBoardDetailForm);
	
	int updateBoard(BoardDTO boardDTO)throws Exception;
	int deleteBoard(BoardDTO boardDTO);
	int insertBoard(BoardDTO boardDTO) throws Exception;	
	
}
