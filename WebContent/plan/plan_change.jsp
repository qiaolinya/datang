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
							更改计划
						</div>
						<br>
						<form name="planForm" method="post"
							action="/cattsoft/updatePlan.do">
							<table cellpadding="0" cellspacing="1" border="0"
								class="form_table">
								<tr>
									<td>
										<input type="hidden" name="id" value="25">
									</td>
								</tr>
								<tr>
									<td>
										&nbsp;&nbsp;计划名称 ：
									</td>
									<td>
										添加人员
									</td>
								</tr>
								<tr>
									<td>
										&nbsp;&nbsp;计划描述 ：
									</td>
									<td>
										新建一个员工信息
									</td>
								</tr>
								<tr>
									<td>
										&nbsp;&nbsp;开始时间 ：
									</td>
									<td>
										2008年8月8日
									</td>
									<td>
										&nbsp;&nbsp;结束时间 ：
									</td>
									<td>
										2008年12月12日
									</td>
								</tr>
								<tr>
									<td>
										&nbsp;&nbsp;计划状态 ：
									</td>
									<td>
										<select name="planState">
											<option value="已完成">
												已完成
											</option>
											<option value="未完成">
												未完成
											</option>
										</select>
									</td>
								</tr>
								<tr>
									<td>
										&nbsp;&nbsp;是否反馈 ：
									</td>
									<td>
										<select name="feedback">
											<option value="已反馈">
												已反馈
											</option>
											<option value="未反馈">
												未反馈
											</option>
										</select>
									</td>
								</tr>
								<tr>
									<td>
										&nbsp;&nbsp;反馈信息 ：
									</td>
									<td>
										<textarea name="planFeedback" rows="3" class="inputgri">添加人员功能已经实现</textarea>
									</td>
								</tr>
								<tr height="12">
								</tr>
							</table>

							<p align="right">
								<input type="submit" class="button" value="提交 &raquo;" />
								<input type="reset" class="button" value="重置 &raquo;" />
							</p>
						</form>
						<p>
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
