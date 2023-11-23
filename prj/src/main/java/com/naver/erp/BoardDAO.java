package com.naver.erp;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface BoardDAO {
	int  getBoardListCntAll(  );
	int  getBoardListCnt( BoardSearchDTO boardSearchDTO );
	List<Map<String,String>> getBoardList( BoardSearchDTO boardSearchDTO );
	int updateReadcount(int b_no);	
	BoardDTO getBoard(int b_no);
	int getBoardCnt(int b_no);
	int getBoardPwdCnt( BoardDTO boardDTO);
	int updateBoard(BoardDTO board);
	int getBoardChildrenCnt(BoardDTO boardDTO);
	int updateBoardEmpty(BoardDTO board);
	int deleteBoard(BoardDTO board);
	int upPrintNo(BoardDTO boardDTO);
	int insertBoard(BoardDTO boardDTO);
	
	
}












