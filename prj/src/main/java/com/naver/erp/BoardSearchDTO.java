package com.naver.erp;

import java.util.List;

public class BoardSearchDTO {

	private String keyword1; 
	private String keyword2;
	private int selectPageNo;	 
	private int rowCntPerPage;	 
	private int begin_rowNo; 
	private int end_rowNo;		 

	private List<String> date;
	
	private String orand;
	
	private String sort;


	public String getKeyword1() {
		return keyword1;
	}

	public void setKeyword1(String keyword1) {
		this.keyword1 = keyword1;
	}

	public String getKeyword2() {
		return keyword2;
	}

	public void setKeyword2(String keyword2) {
		this.keyword2 = keyword2;
	}

	public int getSelectPageNo() {
		return selectPageNo;
	}

	public void setSelectPageNo(int selectPageNo) {
		this.selectPageNo = selectPageNo;
	}

	public int getRowCntPerPage() {
		return rowCntPerPage;
	}

	public void setRowCntPerPage(int rowCntPerPage) {
		this.rowCntPerPage = rowCntPerPage;
	}

	public int getBegin_rowNo() {
		return begin_rowNo;
	}

	public void setBegin_rowNo(int begin_rowNo) {
		this.begin_rowNo = begin_rowNo;
	}

	public int getEnd_rowNo() {
		return end_rowNo;
	}

	public void setEnd_rowNo(int end_rowNo) {
		this.end_rowNo = end_rowNo;
	}

	public List<String> getDate() {
		return date;
	}

	public void setDate(List<String> date) {
		this.date = date;
	}

	public String getOrand() {
		return orand;
	}

	public void setOrand(String orand) {
		this.orand = orand;
	}

	public String getSort() {
		return sort;
	}

	public void setSort(String sort) {
		this.sort = sort;
	}

}