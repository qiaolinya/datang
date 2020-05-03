<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:if test="${user.role==1}"><jsp:include page="admin_top.jsp" ></jsp:include></c:if>
<c:if test="${user.role==2}"><jsp:include page="manage_top.jsp" ></jsp:include></c:if>
<c:if test="${user.role==3}"><jsp:include page="employee_top.jsp" ></jsp:include></c:if>

<div id="content_right">
						<br />
						<br />
						<p id="whereami">
						</p>
						<p align="center">
							<marquee behavior=alternate hspace=20 vspace=20 width=400
								align=middle>
								<h1>
									<c:if test="${user.role==1}"><font color="#E40101">欢迎进入系统管理员页面</font></c:if>
									<c:if test="${user.role==2}"><font color="#E40101">欢迎进入主管页面</font></c:if>
									<c:if test="${user.role==3}"><font color="#E40101">欢迎进入员工页面</font></c:if>
								</h1>
							</marquee>
						</p>
						<br />
						<br />
					</div>
<jsp:include page="public_bottom.jsp" ></jsp:include>