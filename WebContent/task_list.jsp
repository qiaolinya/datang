<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<jsp:include page="manage_top.jsp" ></jsp:include>
					<div id="content_right">
						<br />
						<br />

						<div class="btwz">
							项目列表
						</div>
						<br>
						<form action="tasklist" method="get" id="task">
						<table cellspacing="1" width="100%" class="table">
							<tr class="table_header">
								<td>
									项目名称
								</td>
								<td>
									指定人
								</td>
								<td>
									开始时间
								</td>
								<td>
									结束时间
								</td>
								<td>
									任务状态
								</td>
								<td>
								</td>
							</tr>
							<c:forEach items="${tasklist}" var="task">
							<tr class="row2" onMouseOver="this.className='row1'"
								onMouseOut="this.className='row2'">
								<td>
									${task.taskname}
								</td>
								<td>
									${task.creater}
								</td>
								<td>
									${task.begintime}
								</td>
								<td>
									${task.endtime}
								</td>
								<td>
									${task.state}
								</td>
								<td>
								${task.taskid}
									<input type="radio" name="taskid" value="${task.taskid}" />
								</td>
							</tr>
							</c:forEach>
						</table>
						</form>
						<p align="right">
							<input type="button" class="button" value="项目详细信息"
								onclick="taskdetails()" />
						</p>
						<br />
						<br />
					</div>
<jsp:include page="public_bottom.jsp" ></jsp:include>
