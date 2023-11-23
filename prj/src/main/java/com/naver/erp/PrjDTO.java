package com.naver.erp;

import java.util.List;

public class PrjDTO {

	private String reg_date; 					 
	private String min_prj_period;	 			 
	private String max_prj_period; 				 
	private String prj_name; 					 
	private String client_company; 					 
	private String year_dev; 						 
	private String person_num_dev; 					 
	private List<String> dev_essential_license;  
	private String year_ope; 					 
	private String person_num_ope; 					 
	private List<String> ope_essential_license; 
	private String year_perb; 					 
	private String person_num_perb; 				 
	private List<String> perb_essential_license;	 
	private String year_desi; 						 
	private String person_num_desi;				 
	private List<String> desi_essential_license; 	 
	private String work_content; 		 
	private String work_space; 				 
	private String go_work_hours; 		 
	private String go_work_minute; 		 
	private String coperator_name; 		 
	private String prj_etc; 			 
	private String upd_prj_uid;
	private String del_prj_uid;

	public String getDel_prj_uid() {
		return this.del_prj_uid;
	}

	public void setDel_prj_uid(String del_prj_uid) {
		this.del_prj_uid = del_prj_uid;
	}

	private String conperator_name;

	public String getConperator_name() {
		return this.conperator_name;
	}

	public void setConperator_name(String conperator_name) {
		this.conperator_name = conperator_name;
	}

	public String getUpd_prj_uid() {
		return this.upd_prj_uid;
	}

	public void setUpd_prj_uid(String upd_prj_uid) {
		this.upd_prj_uid = upd_prj_uid;
	}					

	public String getReg_date() {
		return reg_date;
	}
	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}
	public String getMin_prj_period() {
		return min_prj_period;
	}
	public void setMin_prj_period(String min_prj_period) {
		this.min_prj_period = min_prj_period;
	}
	public String getMax_prj_period() {
		return max_prj_period;
	}
	public void setMax_prj_period(String max_prj_period) {
		this.max_prj_period = max_prj_period;
	}
	public String getPrj_name() {
		return prj_name;
	}
	public void setPrj_name(String prj_name) {
		this.prj_name = prj_name;
	}
	public String getClient_company() {
		return client_company;
	}
	public void setClient_company(String client_company) {
		this.client_company = client_company;
	}
	public String getYear_dev() {
		return year_dev;
	}
	public void setYear_dev(String year_dev) {
		this.year_dev = year_dev;
	}
	public String getPerson_num_dev() {
		return person_num_dev;
	}
	public void setPerson_num_dev(String person_num_dev) {
		this.person_num_dev = person_num_dev;
	}
	public List<String> getDev_essential_license() {
		return dev_essential_license;
	}
	public void setDev_essential_license(List<String> dev_essential_license) {
		this.dev_essential_license = dev_essential_license;
	}
	public String getYear_ope() {
		return year_ope;
	}
	public void setYear_ope(String year_ope) {
		this.year_ope = year_ope;
	}
	public String getPerson_num_ope() {
		return person_num_ope;
	}
	public void setPerson_num_ope(String person_num_ope) {
		this.person_num_ope = person_num_ope;
	}
	public List<String> getOpe_essential_license() {
		return ope_essential_license;
	}
	public void setOpe_essential_license(List<String> ope_essential_license) {
		this.ope_essential_license = ope_essential_license;
	}
	public String getYear_perb() {
		return year_perb;
	}
	public void setYear_perb(String year_perb) {
		this.year_perb = year_perb;
	}
	public String getPerson_num_perb() {
		return person_num_perb;
	}
	public void setPerson_num_perb(String person_num_perb) {
		this.person_num_perb = person_num_perb;
	}
	public List<String> getPerb_essential_license() {
		return perb_essential_license;
	}
	public void setPerb_essential_license(List<String> perb_essential_license) {
		this.perb_essential_license = perb_essential_license;
	}
	public String getYear_desi() {
		return year_desi;
	}
	public void setYear_desi(String year_desi) {
		this.year_desi = year_desi;
	}
	public String getPerson_num_desi() {
		return person_num_desi;
	}
	public void setPerson_num_desi(String person_num_desi) {
		this.person_num_desi = person_num_desi;
	}
	public List<String> getDesi_essential_license() {
		return desi_essential_license;
	}
	public void setDesi_essential_license(List<String> desi_essential_license) {
		this.desi_essential_license = desi_essential_license;
	}
	public String getWork_content() {
		return work_content;
	}
	public void setWork_content(String work_content) {
		this.work_content = work_content;
	}
	public String getWork_space() {
		return work_space;
	}
	public void setWork_space(String work_space) {
		this.work_space = work_space;
	}
	public String getGo_work_hours() {
		return go_work_hours;
	}
	public void setGo_work_hours(String go_work_hours) {
		this.go_work_hours = go_work_hours;
	}
	public String getGo_work_minute() {
		return go_work_minute;
	}
	public void setGo_work_minute(String go_work_minute) {
		this.go_work_minute = go_work_minute;
	}
	public String getCoperator_name() {
		return coperator_name;
	}
	public void setCoperator_name(String coperator_name) {
		this.coperator_name = coperator_name;
	}
	public String getPrj_etc() {
		return prj_etc;
	}
	public void setPrj_etc(String prj_etc) {
		this.prj_etc = prj_etc;
	}
}
