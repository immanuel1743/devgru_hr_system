package com.naver.erp;

import java.io.File;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;


@Service
@Transactional
public class BoardServiceImpl implements BoardService{

	@Autowired
	private BoardDAO  boardDAO;

	@Override
	public BoardDTO getBoard(int b_no , boolean isBoardDetailForm ) {
		if( isBoardDetailForm ) {
			int updateCount = this.boardDAO.updateReadcount(b_no);
		}
		BoardDTO board = this.boardDAO.getBoard(b_no);
		return board;
	}
	
	@Override
	public int updateBoard(BoardDTO boardDTO) throws Exception {
		int boardUpCnt = 0;
		MultipartFile multi = boardDTO.getImg();
		boolean isFile = multi!=null && multi.isEmpty()==false;
		String newFileName = Util.getNewFileName(multi);
		
		String isdel = boardDTO.getIsdel();
		String old_img_name = boardDTO.getImg_name();
		
		int boardCnt = this.boardDAO.getBoardCnt(boardDTO.getB_no());
		if(boardCnt==0) {return 0;}
		if(isFile) {		
			boardDTO.setImg_name(newFileName);	
		}
		else {	
			if(isdel!=null) {
				boardDTO.setImg_name(null);
			}
		}
		boardUpCnt = this.boardDAO.updateBoard(boardDTO);
		
		if(isFile) {
			File file = new File(Util.uploadDirForBoard() + newFileName);
			multi.transferTo(file);
		}
		
		if(old_img_name!=null && old_img_name.length()>0) {
			if(isdel!=null && isdel.length()>0 || isFile) {
				new File(Util.uploadDirForBoard() + old_img_name).delete();
			}
		}
		return boardUpCnt;
	}
	
	@Override
	public int deleteBoard(BoardDTO boardDTO) {
		int deleteBoardCnt = 0;
		
		String img_name = boardDTO.getImg_name();
		int boardCnt = this.boardDAO.getBoardCnt( boardDTO.getB_no() );
		if( boardCnt==0 ) {
			return 0;
		}
		deleteBoardCnt = this.boardDAO.deleteBoard( boardDTO );
		if(img_name!=null && img_name.length()>0) {
		new File(Util.uploadDirForBoard() + img_name).delete();
		}
		deleteBoardCnt = this.boardDAO.deleteBoard( boardDTO );
		return deleteBoardCnt;
	}
	
	@Override
	public int insertBoard( BoardDTO boardDTO ) throws Exception  {
		int boardRegCnt  = 0;
		
		MultipartFile multi = boardDTO.getImg();
		boolean isFile = multi!=null && multi.isEmpty()==false;
		String newFileName = Util.getNewFileName(multi);

		boardDTO.setImg_name(newFileName);
		boardRegCnt = this.boardDAO.insertBoard(boardDTO);
		
		if(isFile) {
			File file = new File(Util.uploadDirForBoard() + newFileName);
			multi.transferTo(file);
		}
		return boardRegCnt;
	}
}






















