package com.vo;

public class EmpVO {
	private Integer userid;
	private String username;
	private String password;
	private String name;
	private Integer boss; //Íâ¼ü
	private String sex;
	private String birthday;
	private String job;
	private String entrytime;
	private String role;
	private String education;
	private String speciality;
	private String experience;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getBoss() {
		return boss;
	}
	public void setBoss(Integer boss) {
		this.boss = boss;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	public String getEntrytime() {
		return entrytime;
	}
	public void setEntrytime(String entrytime) {
		this.entrytime = entrytime;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String getEducation() {
		return education;
	}
	public void setEducation(String education) {
		this.education = education;
	}
	public String getSpeciality() {
		return speciality;
	}
	public void setSpeciality(String speciality) {
		this.speciality = speciality;
	}
	public String getExperience() {
		return experience;
	}
	public void setExperience(String experience) {
		this.experience = experience;
	}
	public Integer getUserid() {
		return userid;
	}
	public void setUserid(Integer userid) {
		this.userid = userid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public EmpVO(String username, String password, String name,String sex,
			String birthday, String job, String entrytime, String role, String education, String speciality,
			String experience) {
		super();
		this.username = username;
		this.password = password;
		this.name = name;
		this.sex = sex;
		this.birthday = birthday;
		this.job = job;
		this.entrytime = entrytime;
		this.role = role;
		this.education = education;
		this.speciality = speciality;
		this.experience = experience;
	}

	public EmpVO(Integer userid, String username, String password, String role) {
		super();
		this.userid = userid;
		this.username = username;
		this.password = password;
		this.role = role;
	}
	public EmpVO(Integer userid,String username, String sex, String entrytime, String job) {
		this.userid = userid;
		this.username = username;
		this.sex = sex;
		this.entrytime = entrytime;
		this.job = job;
	}
	public EmpVO() {
		super();
	}
}
