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
									<strong>任务描述</strong>
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
						<br>
						<hr width="520" />
						<br>
						<div class="btwz">
							实施计划
						</div>
						<br>
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
							<tr class="row2" onMouseOver="this.className='row1'"
								onMouseOut="this.className='row2'">
								<td>
									查看任务
								</td>
								<td>
									未完成
								</td>
								<td>
									已反馈
								</td>
								<td>
									2008年8月8日
								</td>
								<td>
									2008年12月12日
								</td>
								<td>
									<input type="radio" name="choose" onClick="getRadio(29);" />
								</td>
							</tr>
							<tr class="row2" onMouseOver="this.className='row1'"
								onMouseOut="this.className='row2'">
								<td>
									查看人员
								</td>
								<td>
									未完成
								</td>
								<td>
									未反馈
								</td>
								<td>
									2008年8月8日
								</td>
								<td>
									2008年12月12日
								</td>
								<td>
									<input type="radio" name="choose" onClick="getRadio(32);" />
								</td>
							</tr>
							<tr class="row2" onMouseOver="this.className='row1'"
								onMouseOut="this.className='row2'">
								<td>
									跟踪任务
								</td>
								<td>
									未完成
								</td>
								<td>
									未反馈
								</td>
								<td>
									2008年8月8日
								</td>
								<td>
									2008年12月12日
								</td>
								<td>
									<input type="radio" name="choose" onClick="getRadio(30);" />
								</td>
							</tr>
							<tr class="row2" onMouseOver="this.className='row1'"
								onMouseOut="this.className='row2'">
								<td>
									调整任务
								</td>
								<td>
									未完成
								</td>
								<td>
									未反馈
								</td>
								<td>
									2008年8月8日
								</td>
								<td>
									2008年12月12日
								</td>
								<td>
									<input type="radio" name="choose" onClick="getRadio(31);" />
								</td>
							</tr>
							<tr class="row2" onMouseOver="this.className='row1'"
								onMouseOut="this.className='row2'">
								<td>
									制定任务
								</td>
								<td>
									已完成
								</td>
								<td>
									已反馈
								</td>
								<td>
									2008年8月8日
								</td>
								<td>
									2008年12月12日
								</td>
								<td>
									<input type="radio" name="choose" onClick="getRadio(28);" />
								</td>
							</tr>
						</table>
						</c:forEach>
						<p align="right">
							<input type="button" class="button" value="详细信息"
								onClick="detailPlan();" />
						</p>
						<br />
						<br />
					</div>
				<jsp:include page="public_bottom.jsp" ></jsp:include>