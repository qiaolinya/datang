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
							人员列表
						</div>
						<br>
						<form name="form1" action="deleteEmp.do" method="post">
							<table cellspacing="1" class="table">
								<tr class="table_header">
									<td valign="middle" align="left">
										姓名
									</td>
									<td valign="middle" align="left">
										性别
									</td>
									<td valign="middle" align="left">
										入职时间
									</td>
									<td valign="middle" align="left">
										职位
									</td>
									<td valign="middle" align="left">
										详细信息
									</td>
									<td valign="middle" align="left">
									</td>
								</tr>
								<tr class="row2" onMouseOver="this.className='row1'"
									onMouseOut="this.className='row2'">
									<td valign="middle" align="left">
										沈东怀
									</td>
									<td valign="middle" align="left">
										男
									</td>
									<td valign="middle" align="left">
										2005年1月2日
									</td>
									<td valign="middle" align="left">
										项目经理
									</td>
									<td valign="middle" align="left">
										<input type="radio" name="choose" onClick="getRadio('D001');" />
									</td>
									<td valign="middle" align="left">
										<input type="checkbox" name="empId" value="D001">
									</td>
								</tr>
								<tr class="row2" onMouseOver="this.className='row1'"
									onMouseOut="this.className='row2'">
									<td valign="middle" align="left">
										常效弈
									</td>
									<td valign="middle" align="left">
										男
									</td>
									<td valign="middle" align="left">
										2008年12月2日
									</td>
									<td valign="middle" align="left">
										销售经理
									</td>
									<td valign="middle" align="left">
										<input type="radio" name="choose" onClick="getRadio('D002');" />
									</td>
									<td valign="middle" align="left">
										<input type="checkbox" name="empId" value="D002">
									</td>
								</tr>
								<tr class="row2" onMouseOver="this.className='row1'"
									onMouseOut="this.className='row2'">
									<td valign="middle" align="left">
										樊玉群
									</td>
									<td valign="middle" align="left">
										男
									</td>
									<td valign="middle" align="left">
										2005年1月2日
									</td>
									<td valign="middle" align="left">
										软件设计师
									</td>
									<td valign="middle" align="left">
										<input type="radio" name="choose" onClick="getRadio('S001');" />
									</td>
									<td valign="middle" align="left">
										<input type="checkbox" name="empId" value="S001">
									</td>
								</tr>
								<tr class="row2" onMouseOver="this.className='row1'"
									onMouseOut="this.className='row2'">
									<td valign="middle" align="left">
										李茹婧
									</td>
									<td valign="middle" align="left">
										女
									</td>
									<td valign="middle" align="left">
										2005年1月2日
									</td>
									<td valign="middle" align="left">
										软件测试师
									</td>
									<td valign="middle" align="left">
										<input type="radio" name="choose" onClick="getRadio('S002');" />
									</td>
									<td valign="middle" align="left">
										<input type="checkbox" name="empId" value="S002">
									</td>
								</tr>
								<tr class="row2" onMouseOver="this.className='row1'"
									onMouseOut="this.className='row2'">
									<td valign="middle" align="left">
										钟景默
									</td>
									<td valign="middle" align="left">
										男
									</td>
									<td valign="middle" align="left">
										2005年1月2日
									</td>
									<td valign="middle" align="left">
										软件设计师
									</td>
									<td valign="middle" align="left">
										<input type="radio" name="choose" onClick="getRadio('S003');" />
									</td>
									<td valign="middle" align="left">
										<input type="checkbox" name="empId" value="S003">
									</td>
								</tr>
							</table>
						</form>
						<p align="right">
							<input type="button" class="button" value="添加人员"
								onclick="location='showEmpForm.do'" />
							<input type="button" class="button" value="详细信息"
								onClick="detailEmp();" />
							<input type="button" Class="button" value=" 删  除 "
								onClick="deleteEmp();" />
						</p>
						<p class="paging">

							&lt;&lt; 首页 &lt; 上一页
							<strong>第1页/共2页</strong>
							<a href="listEmp.do?page=2"> 下一页 &gt;</a>
							<a href="listEmp.do?page=2">末页 &gt;&gt;</a>
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
