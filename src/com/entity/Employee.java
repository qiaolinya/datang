package com.entity;

public class Employee {
private Integer userid;
private String username;
private String md5pwd;
private String name;
private Integer boss; 
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
public String getMd5pwd() {
	return md5pwd;
}
public void setMd5pwd(String md5pwd) {
	this.md5pwd = md5pwd;
}
public Employee(String username, String name, String md5pwd,String sex,
		String birthday, String job, String entrytime, String role, String education, String speciality,
		String experience) {
	super();
	this.username = username;
	this.md5pwd = md5pwd;
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
public Employee( Integer userid,String username, String name, String md5pwd,Integer boss,String sex,
		String birthday, String job, String entrytime, String role, String education, String speciality,
		String experience) {
	super();
	this.userid = userid;
	this.username = username;
	this.md5pwd = md5pwd;
	this.name = name;
	this.boss = boss;
	this.sex = sex;
	this.birthday = birthday;
	this.job = job;
	this.entrytime = entrytime;
	this.role = role;
	this.education = education;
	this.speciality = speciality;
	this.experience = experience;

	
}
public Employee(Integer userid, String username, String md5pwd, String role) {
	super();
	this.userid = userid;
	this.username = username;
	this.md5pwd = md5pwd;
	this.role = role;
}
public Employee(Integer userid,String username, String sex, String entrytime, String job) {
	this.userid = userid;
	this.username = username;
	this.sex = sex;
	this.entrytime = entrytime;
	this.job = job;
}
public Employee(Integer userid, Integer boss) {
	super();
	this.userid = userid;
	this.boss = boss;
}
public Employee() {
	super();
}
}
