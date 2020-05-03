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
							新建计划
						</div>
						<br>
						<form name="planForm" method="post" action="/cattsoft/addPlan.do"
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
				</div>
			</div>
			<div id="footer">
				<div align="center" id="footer_bg">
				</div>
			</div>
		</div>
	</body>
</html>
