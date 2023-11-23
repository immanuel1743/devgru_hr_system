package com.naver.erp;

import java.util.List;

public class DevDTO {
	
	private String id;						 
	private String pwd;								 
	private String dName;						 
	
	private String jumin_num1;						 
	private String jumin_num2;						 
	
	private String phone;								 
	
	private String email;								 
	
	private String go_army;								 
	
	private String address;							 
	
	private String emergency_name;				 
	private String emergency_relation;				 
	private String emergency_phone;					 
	
	private String salary_bank;						 
	private String account_num;							 
	
	
	private String highSchool_name;						 
	private String juniorCollege_name;					 
	private String university_name;						 
	private String transfer;						 
	private String master_name;							 
	private String doctor_name;						 
	
	private String juniorCollege_hakbu;					 
	private String university_hakbu;					 
	private String master_hakbu;						 
	private String doctor_hakbu;						 
	
	private String juniorCollege_major;			 
	private String university_major;				 
	private String master_major;				 
	private String doctor_major;					 
	
	private String juniorCollege_minor;				 
	private String university_minor;				 
	private String master_minor;					 
	private String doctor_minor;					 
	
	private String highSchool_graduate_date;			 
	private String juniorCollege_graduate_date;		 
	private String university_graduate_date;		 
	private String master_graduate_date;				 
	private String doctor_graduate_date;				 

	
	private String family_relation1;						 
	private String family_name1;						 
	private String family_job1;							 
	private String family_birth_year1;				 
	private String is_live_together1;					 

	private String family_relation2;					 
	private String family_name2;							 
	private String family_job2;						 
	private String family_birth_year2;					 
	private String is_live_together2;					 

	private String family_relation3;					
	private String family_name3;				 
	private String family_job3;					 
	private String family_birth_year3;				 
	private String is_live_together3;				 

	private String family_relation4;					 
	private String family_name4;						 
	private String family_job4;							 
	private String family_birth_year4;				 
	private String is_live_together4;		 

	private String family_relation5;						 
	private String family_name5;							 
	private String family_job5;						 
	private String family_birth_year5;					 
	private String is_live_together5;					 
 
	
	private String past_company_name1;				 
	private String duty1;								 
	private String part1;								 
	private String dep1;								 
	private String position1;							 
	private String hire_type1;							 
	private String salary1;								 
	private String hired_date1;							 
	private String resign_date1;							 
	
	
	private List<String> license;		 

	
	private List<String> can_reading_language;			 
	private List<String> can_speaking_language;			 
 
	
	private String itCenter_name;				 
	private String edu_period;						 
	private String eduFinish_date;				 
	private String eduFinish_subject;				 
 
	
	private String smoke;								 
	private String soju;					 
	private String beer;							 
	private List<String> interest;						 
 
	
	private String past_prj_name;							 
	private String prj_start_date;						 
	private String prj_finish_date;						 
	private String dispatch_level;						 
	private String client_company_name;					 
	private String work_company_name;					 
	private String dispatch_role;						 
	private List<String> server_computer1;
	private List<String> OS1;
	private List<String> it_language1;
	private List<String> DBMS1;
	private List<String> tool1;

	public List<String> getServer_computer1() {
		return this.server_computer1;
	}

	public void setServer_computer1(List<String> server_computer1) {
		this.server_computer1 = server_computer1;
	}

	public List<String> getOS1() {
		return this.OS1;
	}

	public void setOS1(List<String> OS1) {
		this.OS1 = OS1;
	}

	public List<String> getIt_language1() {
		return this.it_language1;
	}

	public void setIt_language1(List<String> it_language1) {
		this.it_language1 = it_language1;
	}

	public List<String> getDBMS1() {
		return this.DBMS1;
	}

	public void setDBMS1(List<String> DBMS1) {
		this.DBMS1 = DBMS1;
	}

	public List<String> getTool1() {
		return this.tool1;
	}

	public void setTool1(List<String> tool1) {
		this.tool1 = tool1;
	}
		 
	private int del_dev_uid;

	public int getDel_dev_uid() {
		return this.del_dev_uid;
	}

	public void setDel_dev_uid(int del_dev_uid) {
		this.del_dev_uid = del_dev_uid;
	}

	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getdName() {
		return dName;
	}
	public void setdName(String dName) {
		this.dName = dName;
	}
	public String getJumin_num1() {
		return jumin_num1;
	}
	public void setJumin_num1(String jumin_num1) {
		this.jumin_num1 = jumin_num1;
	}
	public String getJumin_num2() {
		return jumin_num2;
	}
	public void setJumin_num2(String jumin_num2) {
		this.jumin_num2 = jumin_num2;
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
	public String getGo_army() {
		return go_army;
	}
	public void setGo_army(String go_army) {
		this.go_army = go_army;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getEmergency_name() {
		return emergency_name;
	}
	public void setEmergency_name(String emergency_name) {
		this.emergency_name = emergency_name;
	}
	public String getEmergency_relation() {
		return emergency_relation;
	}
	public void setEmergency_relation(String emergency_relation) {
		this.emergency_relation = emergency_relation;
	}
	public String getEmergency_phone() {
		return emergency_phone;
	}
	public void setEmergency_phone(String emergency_phone) {
		this.emergency_phone = emergency_phone;
	}
	public String getSalary_bank() {
		return salary_bank;
	}
	public void setSalary_bank(String salary_bank) {
		this.salary_bank = salary_bank;
	}
	public String getAccount_num() {
		return account_num;
	}
	public void setAccount_num(String account_num) {
		this.account_num = account_num;
	}
	public String getHighSchool_name() {
		return highSchool_name;
	}
	public void setHighSchool_name(String highSchool_name) {
		this.highSchool_name = highSchool_name;
	}
	public String getJuniorCollege_name() {
		return juniorCollege_name;
	}
	public void setJuniorCollege_name(String juniorCollege_name) {
		this.juniorCollege_name = juniorCollege_name;
	}
	public String getUniversity_name() {
		return university_name;
	}
	public void setUniversity_name(String university_name) {
		this.university_name = university_name;
	}
	public String getTransfer() {
		return transfer;
	}
	public void setTransfer(String transfer) {
		this.transfer = transfer;
	}
	public String getMaster_name() {
		return master_name;
	}
	public void setMaster_name(String master_name) {
		this.master_name = master_name;
	}
	public String getDoctor_name() {
		return doctor_name;
	}
	public void setDoctor_name(String doctor_name) {
		this.doctor_name = doctor_name;
	}
	public String getJuniorCollege_hakbu() {
		return juniorCollege_hakbu;
	}
	public void setJuniorCollege_hakbu(String juniorCollege_hakbu) {
		this.juniorCollege_hakbu = juniorCollege_hakbu;
	}
	public String getUniversity_hakbu() {
		return university_hakbu;
	}
	public void setUniversity_hakbu(String university_hakbu) {
		this.university_hakbu = university_hakbu;
	}
	public String getMaster_hakbu() {
		return master_hakbu;
	}
	public void setMaster_hakbu(String master_hakbu) {
		this.master_hakbu = master_hakbu;
	}
	public String getDoctor_hakbu() {
		return doctor_hakbu;
	}
	public void setDoctor_hakbu(String doctor_hakbu) {
		this.doctor_hakbu = doctor_hakbu;
	}
	public String getJuniorCollege_major() {
		return juniorCollege_major;
	}
	public void setJuniorCollege_major(String juniorCollege_major) {
		this.juniorCollege_major = juniorCollege_major;
	}
	public String getUniversity_major() {
		return university_major;
	}
	public void setUniversity_major(String university_major) {
		this.university_major = university_major;
	}
	public String getMaster_major() {
		return master_major;
	}
	public void setMaster_major(String master_major) {
		this.master_major = master_major;
	}
	public String getDoctor_major() {
		return doctor_major;
	}
	public void setDoctor_major(String doctor_major) {
		this.doctor_major = doctor_major;
	}
	public String getJuniorCollege_minor() {
		return juniorCollege_minor;
	}
	public void setJuniorCollege_minor(String juniorCollege_minor) {
		this.juniorCollege_minor = juniorCollege_minor;
	}
	public String getUniversity_minor() {
		return university_minor;
	}
	public void setUniversity_minor(String university_minor) {
		this.university_minor = university_minor;
	}
	public String getMaster_minor() {
		return master_minor;
	}
	public void setMaster_minor(String master_minor) {
		this.master_minor = master_minor;
	}
	public String getDoctor_minor() {
		return doctor_minor;
	}
	public void setDoctor_minor(String doctor_minor) {
		this.doctor_minor = doctor_minor;
	}
	public String getHighSchool_graduate_date() {
		return highSchool_graduate_date;
	}
	public void setHighSchool_graduate_date(String highSchool_graduate_date) {
		this.highSchool_graduate_date = highSchool_graduate_date;
	}
	public String getJuniorCollege_graduate_date() {
		return juniorCollege_graduate_date;
	}
	public void setJuniorCollege_graduate_date(String juniorCollege_graduate_date) {
		this.juniorCollege_graduate_date = juniorCollege_graduate_date;
	}
	public String getUniversity_graduate_date() {
		return university_graduate_date;
	}
	public void setUniversity_graduate_date(String university_graduate_date) {
		this.university_graduate_date = university_graduate_date;
	}
	public String getMaster_graduate_date() {
		return master_graduate_date;
	}
	public void setMaster_graduate_date(String master_graduate_date) {
		this.master_graduate_date = master_graduate_date;
	}
	public String getDoctor_graduate_date() {
		return doctor_graduate_date;
	}
	public void setDoctor_graduate_date(String doctor_graduate_date) {
		this.doctor_graduate_date = doctor_graduate_date;
	}
	public String getFamily_relation1() {
		return family_relation1;
	}
	public void setFamily_relation1(String family_relation1) {
		this.family_relation1 = family_relation1;
	}
	public String getFamily_name1() {
		return family_name1;
	}
	public void setFamily_name1(String family_name1) {
		this.family_name1 = family_name1;
	}
	public String getFamily_job1() {
		return family_job1;
	}
	public void setFamily_job1(String family_job1) {
		this.family_job1 = family_job1;
	}
	public String getFamily_birth_year1() {
		return family_birth_year1;
	}
	public void setFamily_birth_year1(String family_birth_year1) {
		this.family_birth_year1 = family_birth_year1;
	}
	public String getIs_live_together1() {
		return is_live_together1;
	}
	public void setIs_live_together1(String is_live_together1) {
		this.is_live_together1 = is_live_together1;
	}
	public String getFamily_relation2() {
		return family_relation2;
	}
	public void setFamily_relation2(String family_relation2) {
		this.family_relation2 = family_relation2;
	}
	public String getFamily_name2() {
		return family_name2;
	}
	public void setFamily_name2(String family_name2) {
		this.family_name2 = family_name2;
	}
	public String getFamily_job2() {
		return family_job2;
	}
	public void setFamily_job2(String family_job2) {
		this.family_job2 = family_job2;
	}
	public String getFamily_birth_year2() {
		return family_birth_year2;
	}
	public void setFamily_birth_year2(String family_birth_year2) {
		this.family_birth_year2 = family_birth_year2;
	}
	public String getIs_live_together2() {
		return is_live_together2;
	}
	public void setIs_live_together2(String is_live_together2) {
		this.is_live_together2 = is_live_together2;
	}
	public String getFamily_relation3() {
		return family_relation3;
	}
	public void setFamily_relation3(String family_relation3) {
		this.family_relation3 = family_relation3;
	}
	public String getFamily_name3() {
		return family_name3;
	}
	public void setFamily_name3(String family_name3) {
		this.family_name3 = family_name3;
	}
	public String getFamily_job3() {
		return family_job3;
	}
	public void setFamily_job3(String family_job3) {
		this.family_job3 = family_job3;
	}
	public String getFamily_birth_year3() {
		return family_birth_year3;
	}
	public void setFamily_birth_year3(String family_birth_year3) {
		this.family_birth_year3 = family_birth_year3;
	}
	public String getIs_live_together3() {
		return is_live_together3;
	}
	public void setIs_live_together3(String is_live_together3) {
		this.is_live_together3 = is_live_together3;
	}
	public String getFamily_relation4() {
		return family_relation4;
	}
	public void setFamily_relation4(String family_relation4) {
		this.family_relation4 = family_relation4;
	}
	public String getFamily_name4() {
		return family_name4;
	}
	public void setFamily_name4(String family_name4) {
		this.family_name4 = family_name4;
	}
	public String getFamily_job4() {
		return family_job4;
	}
	public void setFamily_job4(String family_job4) {
		this.family_job4 = family_job4;
	}
	public String getFamily_birth_year4() {
		return family_birth_year4;
	}
	public void setFamily_birth_year4(String family_birth_year4) {
		this.family_birth_year4 = family_birth_year4;
	}
	public String getIs_live_together4() {
		return is_live_together4;
	}
	public void setIs_live_together4(String is_live_together4) {
		this.is_live_together4 = is_live_together4;
	}
	public String getFamily_relation5() {
		return family_relation5;
	}
	public void setFamily_relation5(String family_relation5) {
		this.family_relation5 = family_relation5;
	}
	public String getFamily_name5() {
		return family_name5;
	}
	public void setFamily_name5(String family_name5) {
		this.family_name5 = family_name5;
	}
	public String getFamily_job5() {
		return family_job5;
	}
	public void setFamily_job5(String family_job5) {
		this.family_job5 = family_job5;
	}
	public String getFamily_birth_year5() {
		return family_birth_year5;
	}
	public void setFamily_birth_year5(String family_birth_year5) {
		this.family_birth_year5 = family_birth_year5;
	}
	public String getIs_live_together5() {
		return is_live_together5;
	}
	public void setIs_live_together5(String is_live_together5) {
		this.is_live_together5 = is_live_together5;
	}
	public String getPast_company_name1() {
		return past_company_name1;
	}
	public void setPast_company_name1(String past_company_name1) {
		this.past_company_name1 = past_company_name1;
	}
	public String getDuty1() {
		return duty1;
	}
	public void setDuty1(String duty1) {
		this.duty1 = duty1;
	}
	public String getPart1() {
		return part1;
	}
	public void setPart1(String part1) {
		this.part1 = part1;
	}
	public String getDep1() {
		return dep1;
	}
	public void setDep1(String dep1) {
		this.dep1 = dep1;
	}
	public String getPosition1() {
		return position1;
	}
	public void setPosition1(String position1) {
		this.position1 = position1;
	}
	public String getHire_type1() {
		return hire_type1;
	}
	public void setHire_type1(String hire_type1) {
		this.hire_type1 = hire_type1;
	}
	public String getSalary1() {
		return salary1;
	}
	public void setSalary1(String salary1) {
		this.salary1 = salary1;
	}
	public String getHired_date1() {
		return hired_date1;
	}
	public void setHired_date1(String hired_date1) {
		this.hired_date1 = hired_date1;
	}
	public String getResign_date1() {
		return resign_date1;
	}
	public void setResign_date1(String resign_date1) {
		this.resign_date1 = resign_date1;
	}
	public List<String> getLicense() {
		return license;
	}
	public void setLicense(List<String> license) {
		this.license = license;
	}
	public List<String> getCan_reading_language() {
		return can_reading_language;
	}
	public void setCan_reading_language(List<String> can_reading_language) {
		this.can_reading_language = can_reading_language;
	}
	public List<String> getCan_speaking_language() {
		return can_speaking_language;
	}
	public void setCan_speaking_language(List<String> can_speaking_language) {
		this.can_speaking_language = can_speaking_language;
	}
	public String getItCenter_name() {
		return itCenter_name;
	}
	public void setItCenter_name(String itCenter_name) {
		this.itCenter_name = itCenter_name;
	}
	public String getEdu_period() {
		return edu_period;
	}
	public void setEdu_period(String edu_period) {
		this.edu_period = edu_period;
	}
	public String getEduFinish_date() {
		return eduFinish_date;
	}
	public void setEduFinish_date(String eduFinish_date) {
		this.eduFinish_date = eduFinish_date;
	}
	public String getEduFinish_subject() {
		return eduFinish_subject;
	}
	public void setEduFinish_subject(String eduFinish_subject) {
		this.eduFinish_subject = eduFinish_subject;
	}
	public String getSmoke() {
		return smoke;
	}
	public void setSmoke(String smoke) {
		this.smoke = smoke;
	}
	public String getSoju() {
		return soju;
	}
	public void setSoju(String soju) {
		this.soju = soju;
	}
	public String getBeer() {
		return beer;
	}
	public void setBeer(String beer) {
		this.beer = beer;
	}
	public List<String> getInterest() {
		return interest;
	}
	public void setInterest(List<String> interest) {
		this.interest = interest;
	}
	public String getPast_prj_name() {
		return past_prj_name;
	}
	public void setPast_prj_name(String past_prj_name) {
		this.past_prj_name = past_prj_name;
	}
	public String getPrj_start_date() {
		return prj_start_date;
	}
	public void setPrj_start_date(String prj_start_date) {
		this.prj_start_date = prj_start_date;
	}
	public String getPrj_finish_date() {
		return prj_finish_date;
	}
	public void setPrj_finish_date(String prj_finish_date) {
		this.prj_finish_date = prj_finish_date;
	}
	public String getDispatch_level() {
		return dispatch_level;
	}
	public void setDispatch_level(String dispatch_level) {
		this.dispatch_level = dispatch_level;
	}
	public String getClient_company_name() {
		return client_company_name;
	}
	public void setClient_company_name(String client_company_name) {
		this.client_company_name = client_company_name;
	}
	public String getWork_company_name() {
		return work_company_name;
	}
	public void setWork_company_name(String work_company_name) {
		this.work_company_name = work_company_name;
	}
	public String getDispatch_role() {
		return dispatch_role;
	}
	public void setDispatch_role(String dispatch_role) {
		this.dispatch_role = dispatch_role;
	}
	// public List<String> getServer_computer() {
	// 	return server_computer;
	// }
	// public void setServer_computer(List<String> server_computer) {
	// 	this.server_computer = server_computer;
	// }
	// public List<String> getOS() {
	// 	return OS;
	// }
	// public void setOS(List<String> oS) {
	// 	OS = oS;
	// }
	// public List<String> getIt_language() {
	// 	return it_language;
	// }
	// public void setIt_language(List<String> it_language) {
	// 	this.it_language = it_language;
	// }
	// public List<String> getDBMS() {
	// 	return DBMS;
	// }
	// public void setDBMS(List<String> dBMS) {
	// 	DBMS = dBMS;
	// }
	// public List<String> getTool() {
	// 	return tool;
	// }
	// public void setTool(List<String> tool) {
	// 	this.tool = tool;
	// }
}
