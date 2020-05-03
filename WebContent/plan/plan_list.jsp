<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title></title>
		<link rel="stylesheet" type="text/css" href="../css/template.css" />
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
							<font color="#E40101">钟景默</font> &nbsp;&nbsp;员工
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
								<a href="/cattsoft/planOperate.do">计划管理</a>
							</li>
							<li>
								<a href="/cattsoft/beforeQueryPlan.do">查询计划</a>
							</li>
							<li>
								<a href="/cattsoft/extend.do">扩展功能</a>
							</li>
							<li>
								<a href="/cattsoft/extend.do">扩展功能</a>
							</li>
							<li>
								<a href="/cattsoft/extend.do">扩展功能</a>
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
						<table cellspacing="1" class="table">
							<tr>
								<td class="tb_top">
									任务名称 ：
								</td>
								<td class="tb_mid" colspan="3">
									人员管理
								</td>
							</tr>
							<tr>
								<td class="tb_top">
									任务描述 ：
								</td>
								<td class="tb_mid" colspan="3">
									实现人员管理模块的功能
								</td>
							</tr>
							<tr>
								<td class="tb_top">
									开始时间 ：
								</td>
								<td class="tb_mid">
									2008年8月8日
								</td>
								<td class="tb_top">
									结束时间 ：
								</td>
								<td class="tb_mid">
									2008年12月12日
								</td>
							</tr>
							<tr>
								<td class="tb_top">
									实施人 ：
								</td>
								<td class="tb_mid">
									钟景默
								</td>
								<td class="tb_top">
									任务状态 ：
								</td>
								<td class="tb_mid">
									实施中
								</td>
							</tr>
						</table>
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
							<tr class="row2" onMouseOver="this.className='row1'"
								onMouseOut="this.className='row2'">
								<td>
									<a href="/cattsoft/beforeUpdatePlan.do?id=26">删除人员</a>
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
									<input type="checkbox" name="choose" value="26" />
								</td>
							</tr>
							<tr class="row2" onMouseOver="this.className='row1'"
								onMouseOut="this.className='row2'">
								<td>
									<a href="/cattsoft/beforeUpdatePlan.do?id=25">添加人员</a>
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
								</td>
							</tr>
							<tr class="row2" onMouseOver="this.className='row1'"
								onMouseOut="this.className='row2'">
								<td>
									<a href="/cattsoft/beforeUpdatePlan.do?id=27">分配人员</a>
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
								</td>
							</tr>
						</table>
						<p align="right">
							<input type="button" class="button" value="新建"
								onclick="location='beforeAddPlan.do?id=17'" />
							<input type="button" class="button" value="删除"
								onclick="deletePlan();" />
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
