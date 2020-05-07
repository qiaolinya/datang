package com.entity;

public class Task {
	private Integer taskid;
	private String taskname;
	private String depict;
	private String begintime;
	private String endtime;
	private String realbegintime;
	private String realendtime;
	private String implperson; // 实施人
	private Integer state;
	private Integer creater; // 制定人
	public Integer getTaskid() {
		return taskid;
	}
	public void setTaskid(Integer taskid) {
		this.taskid = taskid;
	}
	public String getTaskname() {
		return taskname;
	}
	public void setTaskname(String taskname) {
		this.taskname = taskname;
	}
	public String getDepict() {
		return depict;
	}
	public void setDepict(String depict) {
		this.depict = depict;
	}
	public String getBegintime() {
		return begintime;
	}
	public void setBegintime(String begintime) {
		this.begintime = begintime;
	}
	public String getEndtime() {
		return endtime;
	}
	public void setEndtime(String endtime) {
		this.endtime = endtime;
	}
	public String getRealbegintime() {
		return realbegintime;
	}
	public void setRealbegintime(String realbegintime) {
		this.realbegintime = realbegintime;
	}
	public String getRealendtime() {
		return realendtime;
	}
	public void setRealendtime(String realendtime) {
		this.realendtime = realendtime;
	}
	public String getImplperson() {
		return implperson;
	}
	public void setImplperson(String implperson) {
		this.implperson = implperson;
	}
	public Integer getState() {
		return state;
	}
	public void setState(Integer state) {
		this.state = state;
	}
	public Integer getCreater() {
		return creater;
	}
	public void setCreater(Integer creater) {
		this.creater = creater;
	}
	public Task(Integer taskid,String taskname, String begintime, String endtime, Integer state, Integer creater) {
		super();
		this.taskname = taskname;
		this.begintime = begintime;
		this.endtime = endtime;
		this.state = state;
		this.creater = creater;
		this.taskid=taskid;
	}
	public Task(Integer taskid, String taskname, String depict, String begintime, String endtime, String realbegintime,
			String realendtime, String implperson, Integer state, Integer creater) {
		super();
		this.taskid = taskid;
		this.taskname = taskname;
		this.depict = depict;
		this.begintime = begintime;
		this.endtime = endtime;
		this.realbegintime = realbegintime;
		this.realendtime = realendtime;
		this.implperson = implperson;
		this.state = state;
		this.creater = creater;
	}
	public Task() {
		super();
	}
}
