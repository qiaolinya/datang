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
							新建用户
						</div>
						<br />
						<form name="empForm" method="post" action="/cattsoft/createEmp.do"
							onsubmit="return add();">
							<table cellpadding="0" cellspacing="1" border="0"
								class="form_table">
								<tr>
									<td>
										&nbsp;&nbsp;&nbsp;&nbsp;用户名 ：
									</td>
									<td>
										<input type="text" name="id" value="" onblur="check();"
											class="inputgri">
										&nbsp;
										<font color="red" size="2">*</font>
									</td>
									<td>
										<div id="some"></div>
									</td>
								</tr>
								<tr>
									<td>
										&nbsp;&nbsp;&nbsp;&nbsp;姓名 ：
									</td>
									<td>
										<input type="text" name="username" value="" class="inputgri">
										&nbsp;
										<font color="red" size="2">*</font>
									</td>
									<td id="d1"></td>
								</tr>
								<tr>
									<td>
										&nbsp;&nbsp;&nbsp;&nbsp;密码 ：
									</td>
									<td>
										<input type="password" name="password" value=""
											class="inputgri">
										&nbsp;
										<font color="red" size="2">*</font>
									</td>
									<td id="d2"></td>
								</tr>
								<tr>
									<td>
										&nbsp;&nbsp;&nbsp;&nbsp;性别 ：
									</td>
									<td>
										<input type="radio" name="sex" value="男">
										男
										<input type="radio" name="sex" value="女">
										女
									</td>
								</tr>
								<tr>
									<td>
										&nbsp;&nbsp;&nbsp;&nbsp;出生年月 ：
									</td>
									<td>
										<input type="text" name="birthday" value="" class="inputgri">
										&nbsp;
										<font color="red" size="2">*</font>
									</td>
									<td id="d3"></td>
								</tr>
								<tr>
									<td>
										&nbsp;&nbsp;&nbsp;&nbsp;职位 ：
									</td>
									<td>
										<input type="text" name="position" value="" class="inputgri">
										&nbsp;
										<font color="red" size="2">*</font>
									</td>
									<td id="d4"></td>
								</tr>
								<tr>
									<td>
										&nbsp;&nbsp;&nbsp;&nbsp;入职时间 ：
									</td>
									<td>
										<input type="text" name="hireDate" value="" class="inputgri">
										&nbsp;
										<font color="red" size="2">*</font>
									</td>
									<td id="d5"></td>
								</tr>
								<tr>
									<td>
										&nbsp;&nbsp;&nbsp;&nbsp;角色 ：
									</td>
									<td>
										<select name="flag">
											<option value="2">
												主管
											</option>
											<option value="3">
												员工
											</option>
										</select>
									</td>
								</tr>
								<tr>
									<td>
										&nbsp;&nbsp;&nbsp;&nbsp;学历 ：
									</td>
									<td>
										<input type="text" name="qualification" value=""
											class="inputgri">
										&nbsp;
										<font color="red" size="2">*</font>
									</td>
									<td id="d6"></td>
								</tr>
								<tr>
									<td>
										&nbsp;&nbsp;&nbsp;&nbsp;专业 ：
									</td>
									<td>
										<input type="text" name="professional" value=""
											class="inputgri">
										&nbsp;
										<font color="red" size="2">*</font>
									</td>
									<td id="d7"></td>
								</tr>
								<tr>
									<td>
										&nbsp;&nbsp;&nbsp;&nbsp;行业经历 ：
									</td>
									<td>
										<textarea name="experience" rows="3" class="inputgri"></textarea>
										&nbsp;
										<font color="red" size="2">*</font>
									</td>
									<td id="d8"></td>
								</tr>
							</table>
							<p align="center">
								<input type="submit" class="button" value="提交 &raquo;" />
								&nbsp;
								<input type="reset" class="button" value="重置 &raquo;" />
								&nbsp;
								<input type="button" class="button" value="返回 &raquo;"
									onclick="location='listEmp.do'">
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
