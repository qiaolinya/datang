<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>登录</title>
		<link rel="stylesheet" type="text/css" href="css/login.css" />
		<link rel="stylesheet" type="text/css" href="css/template.css" />
	</head>

	<body>
		<div id="denglu_bg">
			<div id="dl_content">
				<div id="dl_content_line1">
					<b></b>
				</div>
				<br>
				<form name="empForm" method="post" action="login"
					onsubmit="return logon();">
					<table>
						<tr>
							<td class="pd">
								用户名:

							</td>
							<td class="pd">
								<input type="text" name="username" value="qian" class="inputgri">
								&nbsp;
							</td>
							<td class="pd" id="eid"></td>
						</tr>
						<tr>
							<td class="pd">
								密&nbsp;&nbsp;码:
							</td>
							<td class="pd">
								<input type="password" name="password" value="admin" class="inputgri">
								&nbsp;
							</td>
							<td class="pd" id="epwd"></td>
						</tr>
						<tr>
							<td class="pd">
								角&nbsp;&nbsp;色:
							</td>
							<td class="pd">
								<select name="role" class="inputgri">
									<option value="1">
										系统管理员
									</option>
									<option value="2">
										主管
									</option>
									<option value="3" selected="selected">
										员工
									</option>
								</select>
							</td>
						</tr>
						
						<tr>
							<td class="pd">
								验证码：
							</td>
							<td class="pd">
								<input type="text" name="code"/><img src="CodeServlet" alt="imgcode" />
							</td>
							</tr>
					</table>
					<p>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="submit" value="登 录" class="button">
						&nbsp;&nbsp;&nbsp;
						<input type="reset" value="重 置" class="button">
					</p>
				</form>
			</div>
		</div>
	</body>
</html>
