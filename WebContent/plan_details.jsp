<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<jsp:include page="manage_top.jsp" ></jsp:include>
							<div id="content_right">
						<br />
						<br />
						<div class="btwz">
							计划详细信息
						</div>
						<br>
						<c:forEach items="${planlist}" var="plan">
						<table cellspacing="1" class="table">
							<tr>
								<td class="tb_top">
									<strong>计划名称：</strong>
								</td>
								<td class="tb_mid" colspan="3">
									${plan.planname}
								</td>
							</tr>
							<tr>
								<td class="tb_top">
									<strong>计划描述：</strong>
								</td>
								<td class="tb_mid" colspan="3">
									${plan.planinfo}
								</td>
							</tr>
							<tr>
								<td class="tb_top">
									<strong>开始时间：</strong>
								</td>
								<td class="tb_mid">
									${plan.begintime}
								</td>
								<td class="tb_top">
									<strong>结束时间：</strong>
								</td>
								<td class="tb_mid">
									${plan.endtime}
								</td>
							</tr>
							<tr>
								<td class="tb_top">
									<strong>所属任务：</strong>
								</td>
								<td class="tb_mid">
									${plan.feedback}
								</td>
								<td class="tb_top">
									<strong>计划状态：</strong>
								</td>
								<td class="tb_mid">
									${plan.state}
								</td>
							</tr>
							<tr>
								<td class="tb_top">
									<strong>反馈信息：</strong>
								</td>
								<td class="tb_mid" colspan="3">
									${plan.isfeedback}
								</td>
							</tr>
						</table>
						</c:forEach>
						<p align=right style="padding-right: 30px">
							<input type="button" class="button" value="返回 &raquo"
								onclick="location='listTask.do'">
						</p>
						<br />
						<br />
					</div>
				<jsp:include page="public_bottom.jsp" ></jsp:include>