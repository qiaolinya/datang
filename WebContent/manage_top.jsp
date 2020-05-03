<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title></title>
		<link rel="stylesheet" type="text/css" href="css/template.css" />
	</head>
	<body>
	<%!
	public
		Date d = new Date();
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String now = df.format(d);
	%>
		<div id="wrap">
			<div>
				<div>
					<div id="banner">
					</div>
					<div id="banner_bt">
						<div id="banner_left">
							当前用户：
							<font color="#E40101">${user.name}</font> &nbsp;&nbsp;主管

						</div>
						<div id="banner_right">
							系统当前日期： <%=now %>&nbsp;&nbsp;
						</div>
					</div>
				</div>

				<div id="content">
					<div id="navigation">
						<ul>
							<li>
								<a href="tasklist?pagesize=5&page=1">查看任务</a>
							</li>
							<li>
								<a href="/cattsoft/showTaskForm.do">制定任务</a>
							</li>
							<li>
								<a href="/cattsoft/beforeAdjustTask.do">调整任务</a>
							</li>
							<li>
								<a href="/cattsoft/beforeTraceTask.do">跟踪任务</a>
							</li>
							<li>
								<a href="/cattsoft/directorListStaff.do">查看人员</a>
							</li>
							<li>
								<a href="/cattsoft/logonOff.do">退出系统</a>
							</li>
						</ul>
						<img src="img/nav_bg1.gif" />
					</div>
