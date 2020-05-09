package com.entity;

public class Plan {
	private Integer planid;
	private String planname;
	private String planinfo;
	private String begintime;
	private String endtime;
	private Integer taskid; // 任务id
	private String isfeedback;
	private String state;
	private String feedback;
	private Integer creater; // 计划制定人
	public Integer getPlanid() {
		return planid;
	}
	public void setPlanid(Integer planid) {
		this.planid = planid;
	}
	public String getPlanname() {
		return planname;
	}
	public void setPlanname(String planname) {
		this.planname = planname;
	}
	public String getPlaninfo() {
		return planinfo;
	}
	public void setPlaninfo(String planinfo) {
		this.planinfo = planinfo;
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
	public Integer getTaskid() {
		return taskid;
	}
	public void setTaskid(Integer taskid) {
		this.taskid = taskid;
	}
	public String getIsfeedback() {
		return isfeedback;
	}
	public void setIsfeedback(String isfeedback) {
		this.isfeedback = isfeedback;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getFeedback() {
		return feedback;
	}
	public void setFeedback(String feedback) {
		this.feedback = feedback;
	}
	public Integer getCreater() {
		return creater;
	}
	public void setCreater(Integer creater) {
		this.creater = creater;
	}
	public Plan(Integer planid, String planname, String planinfo, String begintime, String endtime, Integer taskid,
			String isfeedback, String state, String feedback, Integer creater) {
		super();
		this.planid = planid;
		this.planname = planname;
		this.planinfo = planinfo;
		this.begintime = begintime;
		this.endtime = endtime;
		this.taskid = taskid;
		this.isfeedback = isfeedback;
		this.state = state;
		this.feedback = feedback;
		this.creater = creater;
	}
	public Plan() {
		super();
	}
	public Plan(Integer planid,String planname, String begintime, String endtime, String isfeedback, String state) {
		super();
		this.planid = planid;
		this.planname = planname;
		this.begintime = begintime;
		this.endtime = endtime;
		this.isfeedback = isfeedback;
		this.state = state;
	}
	public Plan(String planname, String planinfo, String begintime, String endtime, Integer taskid, String isfeedback,String state,String feedback,Integer creater) {
		super();
		this.planname = planname;
		this.planinfo = planinfo;
		this.begintime = begintime;
		this.endtime = endtime;
		this.taskid = taskid;
		this.isfeedback=isfeedback;
		this.state = state;
		this.feedback=feedback;
		this.creater=creater;
	}
	
	
}