<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title></title>
		<link rel="stylesheet" type="text/css" href="css/template.css" />
	</head>
	<body>
		<div id="wrap">
			<div>
				<div>
					<div id="banner">
					</div>
					<div id="banner_bt">
						<div id="banner_left">
							当前用户：
							<font color="#E40101">沈东怀</font> &nbsp;&nbsp;主管

						</div>
						<div id="banner_right">
							系统当前日期： 2009年02月11日&nbsp;&nbsp;
						</div>
					</div>
				</div>
				<div id="content">
					<div id="navigation">
						<ul>
							<li>
								<a href="/cattsoft/listTask.do">查看任务</a>
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
						<img src="../img/nav_bg1.gif" />
					</div>
					<div id="content_right">
						<br />
						<br />

						<div class="btwz">
							任务详细信息
						</div>
						<br>
						<form name="taskForm" method="post"
							action="/cattsoft/alertTask.do">
							<table cellspacing="1" class="table">
								<input type="hidden" name="id" value="17">
								<tr>
									<td class="tb_top">
										任务名称
									</td>
									<td class="tb_mid" colspan="3">
										人员管理
									</td>
								</tr>
								<tr>
									<td class="tb_top">
										任务描述
									</td>
									<td class="tb_mid" colspan="3">
										实现人员管理模块的功能
									</td>
								</tr>
								<tr>
									<td class="tb_top">
										开始时间
									</td>
									<td class="tb_mid">
										2008年8月8日
									</td>
									<td class="tb_top">
										结束时间
									</td>
									<td class="tb_mid">
										2008年12月12日
									</td>
								</tr>
								<tr>
									<td class="tb_top">
										实施人
									</td>
									<td class="tb_mid">
										钟景默
									</td>
									<td class="tb_top">
										任务状态
									</td>
									<td class="tb_mid">
										<select name="taskState">
											<option value="实施中">
												实施中
											</option>
											<option value="已完成">
												已完成
											</option>
										</select>
									</td>
								</tr>
							</table>
							<p align="right">
								<input type="submit" class="button" value="提交 &raquo;" />
							</p>
						</form>
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
									分配人员
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
									<input type="checkbox" name="planId" value="27" />
								</td>
							</tr>
							<tr class="row2" onMouseOver="this.className='row1'"
								onMouseOut="this.className='row2'">
								<td>
									添加人员
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
									<input type="checkbox" name="planId" value="25" />
								</td>
							</tr>
							<tr class="row2" onMouseOver="this.className='row1'"
								onMouseOut="this.className='row2'">
								<td>
									删除人员
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
								</td>
							</tr>
						</table>
						<div id="remessage">
						</div>
						<p align="right">
							<input type="button" Class="button" value="反馈信息" size="8"
								onClick="showMessage();" />
						</p>
						<br />
						<br />
					</div>
				</div>
			</div>
			<div id="footer">
				<div align="center" id="footer_bg">
				</div>
			</div>
		</div>
	</body>
</html>
