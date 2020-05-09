<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<jsp:include page="manage_top.jsp" ></jsp:include>
							<div id="content_right">
						<br />
						<br />

						<div class="btwz">
							项目详细信息
						</div>
						<br>
						<c:forEach items="${tasklist}" var="task">
						<table cellspacing="1" class="table">
							<tr>
								<td class="tb_top">
									<strong>项目名称</strong>
								</td>
								<td class="tb_mid" colspan="3">
									${task.taskname}
								</td>
							</tr>
							<tr height="40">
								<td class="tb_top">
									<strong>项目描述</strong>
								</td>
								<td class="tb_mid" colspan="3">
									${task.depict}
								</td>
							</tr>
							<tr>
								<td class="tb_top">
									<strong>开始时间</strong>
								</td>
								<td class="tb_mid">
									${task.begintime}
								</td>
								<td class="tb_top">
									<strong>结束时间</strong>
								</td>
								<td class="tb_mid">
									${task.endtime}
								</td>
							</tr>
							<tr>
								<td class="tb_top">
									<strong>实际开始时间</strong>
								</td>
								<td class="tb_mid">
									${task.realbegintime}
								</td>
								<td class="tb_top">
									<strong>实际结束时间</strong>
								</td>
								<td class="tb_mid">
									${task.realendtime}
								</td>
							</tr>
							<tr>
								<td class="tb_top">
									<strong>实施人</strong>
								</td>
								<td class="tb_mid">
									${task.implperson}
								</td>
								<td class="tb_top">
									<strong>任务状态</strong>
								</td>
								<td class="tb_mid">
									${task.state}
								</td>
							</tr>
						</table>
						</c:forEach>
						<br>
						<hr width="520" />
						<br>
						<div class="btwz">
							实施计划
						</div>
						<br>
						<form action="planlist" method="get" id="plan">
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
									${plan.planname}
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
								<td valign="middle" align="left">
									${plan.planid}
										<input type="radio" name="planid"  value="${plan.planid}"/>
								</td>
							</tr>
							</c:forEach>
						</table>
						</form>>
						<p align="right">
							<input type="button" class="button" value="详细信息"
								onclick="plandetails();" />
						</p>
						<br />
						<br />
					</div>
				<jsp:include page="public_bottom.jsp" ></jsp:include>