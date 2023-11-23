package com.naver.erp;

import java.util.List;
import java.util.Map;

import org.springframework.web.multipart.MultipartFile;
 
public class GyeoljaeDTO {
	private String gyeoljae_num;
	private String title;
	private String content;
	private String writer;
	private String docu_type;
	private String reg_date;
	private String gyeoljae_progress;
	private String gyeoljae_progress_date;
	private String result;
	private String mid;
	
	
	public String getGyeoljae_num() {
		return gyeoljae_num;
	}
	public void setGyeoljae_num(String gyeoljae_num) {
		this.gyeoljae_num = gyeoljae_num;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getDocu_type() {
		return docu_type;
	}
	public void setDocu_type(String docu_type) {
		this.docu_type = docu_type;
	}
	public String getReg_date() {
		return reg_date;
	}
	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}
	public String getGyeoljae_progress() {
		return gyeoljae_progress;
	}
	public void setGyeoljae_progress(String gyeoljae_progress) {
		this.gyeoljae_progress = gyeoljae_progress;
	}
	public String getGyeoljae_progress_date() {
		return gyeoljae_progress_date;
	}
	public void setGyeoljae_progress_date(String gyeoljae_progress_date) {
		this.gyeoljae_progress_date = gyeoljae_progress_date;
	}
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	
	
	
}
