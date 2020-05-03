<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<jsp:include page="admin_top.jsp" ></jsp:include>
					<div id="content_right">
						<br />
						<br />

						<div class="btwz">
							新建计划
						</div>
						<br>
						<form name="planForm" method="post" action="emp_planadd"
							onsubmit="return add();">
							<table cellpadding="0" cellspacing="1" border="0"
								class="form_table">
								<tr>
									<td>
										<input type="hidden" name="id" value="17">
									</td>
								</tr>
								<tr>
									<td>
										&nbsp;&nbsp;计划名称 ：
									</td>
									<td>
										<input type="text" name="planName" value="" class="inputgri">
									</td>
									<td id="ename"></td>
								</tr>
								<tr>
									<td>
										&nbsp;&nbsp;计划描述 ：
									</td>
									<td>
										<textarea name="planDescription" rows="3" class="inputgri"></textarea>
									</td>
								</tr>
								<tr>
									<td>
										&nbsp;&nbsp;开始时间 ：
									</td>
									<td>
										<input type="text" name="planBeginDate" value=""
											class="inputgri">
									</td>
									<td>
										&nbsp;&nbsp;结束时间 ：
									</td>
									<td>
										<input type="text" name="planEndDate" value=""
											class="inputgri">
									</td>
								</tr>
								<tr>
									<td></td>
									<td id="esdate"></td>

									<td></td>
									<td id="eedate"></td>
								</tr>
								<tr>
									<td>
										&nbsp;&nbsp;计划状态 ：
									</td>
									<td>
										未完成
									</td>
								</tr>
								<tr>
									<td>
										&nbsp;&nbsp;是否反馈 ：
									</td>
									<td>
										未反馈
									</td>
								</tr>
								<tr height="8">
								</tr>
							</table>

							<p align="center">
								<input type="submit" class="button" value="提交 &raquo;" />
								&nbsp;
								<input type="reset" class="button" value="重置 &raquo;" />
							</p>
						</form>
						<br />
						<br />
					</div>
<jsp:include page="public_bottom.jsp" ></jsp:include>
