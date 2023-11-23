package com.naver.erp;

import java.util.List;

public class DispatchSearchDTO {


	private int selectPageNo;							 
	private int rowCntPerPage;						 
	private int begin_rowNo;							 
	private int end_rowNo;								 
	
	private String phone;								 
	private String email;								 
	
	private String min_worked_month;					 
	private String max_worked_month;					 
	
	private String min_dispatch_start_date1;				 
	private String max_dispatch_start_date1;				 
	
	private String min_dispatch_finish_date1;			 
	private String max_dispatch_finish_date1;			 
	
	private List<String> dispatch_finish_date;				 
 
	
	private String min_worked_year;					 
	private String max_worked_year;						 
	
	private List<String> dispatch_role;					 
	
	private String dev_dispatch_role;	
	
	private String keyword1;							 

	private String keyword2;							 
	
	private String orand;								 
	
	private String prj_num;
	
	private String all_dev_num;
	
	private String all_dev_name;
	
	private String dev_year;
	
	private String is_join;
	
	private List<String> is_retire;
	

	private String dispatchSort1;
	private String dispatchSort2;
	private String dispatchSort3;
	private String dispatchSort4;
	private String dispatchSort5;
	private String dispatchSort6;
	private String dispatchSort7;
	private String dispatchSort8;
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
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMin_worked_month() {
		return min_worked_month;
	}
	public void setMin_worked_month(String min_worked_month) {
		this.min_worked_month = min_worked_month;
	}
	public String getMax_worked_month() {
		return max_worked_month;
	}
	public void setMax_worked_month(String max_worked_month) {
		this.max_worked_month = max_worked_month;
	}
	public String getMin_dispatch_start_date1() {
		return min_dispatch_start_date1;
	}
	public void setMin_dispatch_start_date(String min_dispatch_start_date1) {
		this.min_dispatch_start_date1 = min_dispatch_start_date1;
	}
	public String getMax_dispatch_start_date1() {
		return max_dispatch_start_date1;
	}
	public void setMax_dispatch_start_date(String max_dispatch_start_date1) {
		this.max_dispatch_start_date1 = max_dispatch_start_date1;
	}
	public String getMin_dispatch_finish_date1() {
		return min_dispatch_finish_date1;
	}
	public void setMin_dispatch_finish_date1(String min_dispatch_finish_date1) {
		this.min_dispatch_finish_date1 = min_dispatch_finish_date1;
	}
	public String getMax_dispatch_finish_date1() {
		return max_dispatch_finish_date1;
	}
	public void setMax_dispatch_finish_date1(String max_dispatch_finish_date1) {
		this.max_dispatch_finish_date1 = max_dispatch_finish_date1;
	}
	public List<String> getDispatch_finish_date() {
		return dispatch_finish_date;
	}
	public void setDispatch_finish_date(List<String> dispatch_finish_date) {
		this.dispatch_finish_date = dispatch_finish_date;
	}
	public String getMin_worked_year() {
		return min_worked_year;
	}
	public void setMin_worked_year(String min_worked_year) {
		this.min_worked_year = min_worked_year;
	}
	public String getMax_worked_year() {
		return max_worked_year;
	}
	public void setMax_worked_year(String max_worked_year) {
		this.max_worked_year = max_worked_year;
	}
	public List<String> getDispatch_role() {
		return dispatch_role;
	}
	public void setDispatch_role(List<String> dispatch_role) {
		this.dispatch_role = dispatch_role;
	}
	public String getDev_dispatch_role() {
		return dev_dispatch_role;
	}
	public void setDev_dispatch_role(String dev_dispatch_role) {
		this.dev_dispatch_role = dev_dispatch_role;
	}
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
	public String getOrand() {
		return orand;
	}
	public void setOrand(String orand) {
		this.orand = orand;
	}
	public String getPrj_num() {
		return prj_num;
	}
	public void setPrj_num(String prj_num) {
		this.prj_num = prj_num;
	}
	public String getAll_dev_num() {
		return all_dev_num;
	}
	public void setAll_dev_num(String all_dev_num) {
		this.all_dev_num = all_dev_num;
	}
	public String getAll_dev_name() {
		return all_dev_name;
	}
	public void setAll_dev_name(String all_dev_name) {
		this.all_dev_name = all_dev_name;
	}
	public String getDev_year() {
		return dev_year;
	}
	public void setDev_year(String dev_year) {
		this.dev_year = dev_year;
	}
	public String getIs_join() {
		return is_join;
	}
	public void setIs_join(String is_join) {
		this.is_join = is_join;
	}
	public List<String> getIs_retire() {
		return is_retire;
	}
	public void setIs_retire(List<String> is_retire) {
		this.is_retire = is_retire;
	}
	public String getDispatchSort1() {
		return dispatchSort1;
	}
	public void setDispatchSort1(String dispatchSort1) {
		this.dispatchSort1 = dispatchSort1;
	}
	public String getDispatchSort2() {
		return dispatchSort2;
	}
	public void setDispatchSort2(String dispatchSort2) {
		this.dispatchSort2 = dispatchSort2;
	}
	public String getDispatchSort3() {
		return dispatchSort3;
	}
	public void setDispatchSort3(String dispatchSort3) {
		this.dispatchSort3 = dispatchSort3;
	}
	public String getDispatchSort4() {
		return dispatchSort4;
	}
	public void setDispatchSort4(String dispatchSort4) {
		this.dispatchSort4 = dispatchSort4;
	}
	public String getDispatchSort5() {
		return dispatchSort5;
	}
	public void setDispatchSort5(String dispatchSort5) {
		this.dispatchSort5 = dispatchSort5;
	}
	public String getDispatchSort6() {
		return dispatchSort6;
	}
	public void setDispatchSort6(String dispatchSort6) {
		this.dispatchSort6 = dispatchSort6;
	}
	public String getDispatchSort7() {
		return dispatchSort7;
	}
	public void setDispatchSort7(String dispatchSort7) {
		this.dispatchSort7 = dispatchSort7;
	}
	public String getDispatchSort8() {
		return dispatchSort8;
	}
	public void setDispatchSort8(String dispatchSort8) {
		this.dispatchSort8 = dispatchSort8;
	}
	
	
	
}
