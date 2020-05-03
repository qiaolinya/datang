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
							跟踪任务
						</div>
						<br>
						<table cellspacing="1" class="table">
							<tr class="table_header">
								<td>
									任务名称
								</td>
								<td>
									实施人
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
							<tr class="row2" onMouseOver="this.className='row1'"
								onMouseOut="this.className='row2'">
								<td>
									人员管理
								</td>
								<td>
									钟景默
								</td>
								<td>
									2008年8月8日
								</td>
								<td>
									2008年12月12日
								</td>
								<td>
									实施中
								</td>
								<td>
									<input type="radio" name="choose" onClick="getRadio(17);" />
								</td>
							</tr>
							<tr class="row2" onMouseOver="this.className='row1'"
								onMouseOut="this.className='row2'">
								<td>
									任务管理
								</td>
								<td>
									张铭段
								</td>
								<td>
									2008年8月8日
								</td>
								<td>
									2008年12月12日
								</td>
								<td>
									实施中
								</td>
								<td>
									<input type="radio" name="choose" onClick="getRadio(18);" />
								</td>
							</tr>
						</table>
						<p align="right">
							<input type="button" class="button" value="计划信息"
								onClick="detailTask();" />
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
