<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title></title>
		<link rel="stylesheet" type="text/css" href="css/template.css" />
		<script type="text/javascript" charset="utf-8" src="js/delete_changeServlet.js"></script>
		<script type="text/javascript" charset="utf-8" src="js/userdetails_showServlet.js"></script>
		<script type="text/javascript" charset="utf-8" src="js/empdetails_changeServlet.js"></script>
		<script type="text/javascript" charset="utf-8" src="js/changeManager.js"></script>
		<script type="text/javascript" charset="utf-8" src="js/onchange.js"></script>
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
							<font color="#E40101">${user.name}</font> &nbsp;&nbsp;系统管理员

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
								<a href="admin_userlist?pagesize=5&page=1">用户管理</a>
							</li>
							<li>
								<a href="admin_emplist?pagesize=5&page=1">员工管理</a>
							</li>
							<li>
								<a href="login.jsp">退出系统</a>
							</li>
						</ul>
						<img src="img/nav_bg1.gif" />
					</div>
				