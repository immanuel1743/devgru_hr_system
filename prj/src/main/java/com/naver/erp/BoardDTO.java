package com.naver.erp;

import java.util.List;
import java.util.Map;

import org.springframework.web.multipart.MultipartFile;


public class BoardDTO {

	private int b_no;
	private String subject;
	private String content;
	private String writer;
	private String email;
	private String pwd;

	private int readcount;
	private String reg_date;
	private int group_no;
	private int print_no;
	private int print_level;

	private int mom_b_no;
	
	private String img_name;
	private MultipartFile img;
	
	private String isdel;

	public String getIsdel() {
		return isdel;
	}

	public void setIsdel(String isdel) {
		this.isdel = isdel;
	}

	public String getImg_name() {
		return img_name;
	}

	public void setImg_name(String img_name) {
		this.img_name = img_name;
	}

	public MultipartFile getImg() {
		return img;
	}

	public void setImg(MultipartFile img) {
		this.img = img;
	}
	
	public int getB_no() {
		return b_no;
	}

	public void setB_no(int b_no) {
		this.b_no = b_no;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public int getReadcount() {
		return readcount;
	}

	public void setReadcount(int readcount) {
		this.readcount = readcount;
	}

	public String getReg_date() {
		return reg_date;
	}

	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}

	public int getGroup_no() {
		return group_no;
	}

	public void setGroup_no(int group_no) {
		this.group_no = group_no;
	}

	public int getPrint_no() {
		return print_no;
	}

	public void setPrint_no(int print_no) {
		this.print_no = print_no;
	}

	public int getPrint_level() {
		return print_level;
	}

	public void setPrint_level(int print_level) {
		this.print_level = print_level;
	}

	public int getMom_b_no() {
		return mom_b_no;
	}

	public void setMom_b_no(int mom_b_no) {
		this.mom_b_no = mom_b_no;
	}
	
	
	
}
