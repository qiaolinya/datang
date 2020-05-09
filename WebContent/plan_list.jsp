<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<jsp:include page="employee_top.jsp" ></jsp:include>
					<div id="content_right">
						<br />
						<br />

						<div class="btwz">
							计划详细信息
						</div>
						<br>
						<form name="taskForm" method="get" action="emp_planlist" id="task">
						<c:forEach items="${Tlist}" var="Tl">		
						<table cellspacing="1" class="table">
							<tr>
								<td class="tb_top">
									任务名称 ：
								</td>
								<td class="tb_mid" colspan="3">
									${Tl.taskname}
								</td>
							</tr>
							<tr>
								<td class="tb_top">
									任务描述 ：
								</td>
								<td class="tb_mid" colspan="3">
									${Tl.depict}
								</td>
							</tr>
							<tr>
								<td class="tb_top">
									开始时间 ：
								</td>
								<td class="tb_mid">
									${Tl.begintime}
								</td>
								<td class="tb_top">
									结束时间 ：
								</td>
								<td class="tb_mid">
									${Tl.endtime}
								</td>
							</tr>
							<tr>
								<td class="tb_top">
									实施人 ：
								</td>
								<td class="tb_mid">
									${Tl.creater}
								</td>
								<td class="tb_top">
									任务状态 ：
								</td>
								<td class="tb_mid">
									${Tl.state}
								</td>
							</tr>
						</table>
						</c:forEach>
						<br />
						<hr width="520" />
						<br />
						<div class="btwz">
							计划列表
						</div>
						<br />
						<table cellspacing="1" class="table">
							<tr class="table_header">
								<td>
									计划名称
								</td>
								<td>
									完成状态
								</td>
								<td>
									是否反馈
								</td>
								<td>
									开始时间
								</td>
								<td>
									结束时间
								</td>
								<td>
								</td>
							</tr>
							<c:forEach items="${planlist}" var="plan">
							<tr class="row2" onMouseOver="this.className='row1'"
								onMouseOut="this.className='row2'">
								<td>
									<a href="/cattsoft/beforeUpdatePlan.do?id=26">${plan.planname}</a>
								</td>
								<td>
									${plan.state}
								</td>
								<td>
									${plan.isfeedback}
								</td>
								<td>
									${plan.begintime}
								</td>
								<td>
									${plan.endtime}
								</td>
								<td>
								${plan.planid}
									<input type="checkbox" name="planid" value="${plan.planid}" />
								</td>
							</tr>
							</c:forEach>
						</table>
						</form>
						<p align="right">
							<input type="button" class="button" value="新建"
								onclick="window.location.href='plan_add.jsp'" />
							<input type="button" class="button" value="删除"
								onclick="delete2()" />
						</p>
						<br />
						<br />
					</div>
				<jsp:include page="public_bottom.jsp" ></jsp:include>