<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<jsp:include page="employee_top.jsp" ></jsp:include>
					<div id="content_right">
						<br />
						<br />

						<div class="btwz">
							查询计划
						</div>
						<br>
						<form name="QueryForm" method="post"
							action="/cattsoft/queryPlan.do">
							<table cellpadding="0" cellspacing="1" border="0"
								class="form_table">
								<tr>
									<td>
										<input type="hidden" name="id" value="17">
									</td>
								</tr>
								<tr>
									<td>
										&nbsp;计划名称 ：
									</td>
									<td>
										<input type="text" name="planName" value="" class="inputgri">
									</td>
								</tr>
								<tr>
									<td>
										&nbsp;所属任务 ：
									</td>
									<td>
										<select name="taskId">
											<option value=""></option>

											<option value="17">
												人员管理
											</option>

											<option value="19">
												计划管理
											</option>

											<option value="22">
												日志管理
											</option>
										</select>
									</td>
								</tr>
								<tr>
									<td>
									</td>
									<td>
										<div id="d3"></div>
									</td>
									<td>
										<div id="d4"></div>
									</td>
								</tr>
								<tr>
									<td>
										&nbsp;是否反馈 ：
									</td>
									<td>
										<input type="text" name="feedback" value="" class="inputgri">
									</td>
								</tr>
								<tr>
									<td>
										&nbsp;开始时间 ：
									</td>
									<td>
										从
										<input type="text" name="planBeginDate1" value=""
											class="inputgri">
										到
										<input type="text" name="planBeginDate2" value=""
											class="inputgri">
									</td>
								</tr>
								<tr>
									<td>
									</td>
									<td>
										<div id="d1"></div>
									</td>
									<td>
										<div id="d2"></div>
									</td>
								</tr>
								<tr>
									<td>
										&nbsp;结束时间 ：
									</td>
									<td>
										从
										<input type="text" name="planEndDate1" value=""
											class="inputgri">
										到
										<input type="text" name="planEndDate2" value=""
											class="inputgri">
									</td>
								</tr>
								<tr height="12">
								</tr>
							</table>
							<p align="right">
								<input type="button" class="button" onClick="return fun();"
									value="查询计划">
							</p>
						</form>
						<div id="backInfo">
						</div>
						<br />
						<br />
					</div>
<jsp:include page="public_bottom.jsp" ></jsp:include>
