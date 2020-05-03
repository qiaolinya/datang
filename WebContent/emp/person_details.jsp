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
							<font color="#E40101">吴原</font> &nbsp;&nbsp;系统管理员
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
								<a href="/cattsoft/listEmp.do">用户管理</a>
							</li>
							<li>
								<a href="/cattsoft/listStaff.do">员工管理</a>
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
							人员详细信息
						</div>
						<br>
						<table cellspacing="1" class="table">
							<tr class="tb_top">
								<td>
									<strong>姓名</strong>
								</td>
								<td>
									<strong>性别</strong>
								</td>
								<td>
									<strong>入职时间</strong>
								</td>
								<td>
									<strong>职位</strong>
								</td>
							</tr>
							<tr class="tb_mid">
								<td>
									沈东怀
								</td>
								<td>
									男
								</td>
								<td>
									2005年1月2日
								</td>
								<td>
									项目经理
								</td>
							</tr>
							<tr>
								<td class="tb_top">
									<strong>出生年月：</strong>
								</td>
								<td class="tb_mid" colspan="3">
									1987年4月23日
								</td>
							</tr>
							<tr>
								<td class="tb_top">
									<strong>学历：</strong>
								</td>
								<td class="tb_mid" colspan="3">
									硕士研究生
								</td>
							</tr>
							<tr>
								<td class="tb_top">
									<strong>专业：</strong>
								</td>
								<td class="tb_mid" colspan="3">
									计算机科学与技术
								</td>
							</tr>
							<tr height="40">
								<td class="tb_top">
									<strong>行业经历：</strong>
								</td>
								<td class="tb_mid" colspan="3">
									暂无
								</td>
							</tr>
						</table>
						<p align=right style="padding-right: 30px">
							<input type="button" class="button" value="返回 &raquo"
								onclick="location='listEmp.do'">
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
