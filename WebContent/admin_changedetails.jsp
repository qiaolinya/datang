<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<jsp:include page="admin_top.jsp" ></jsp:include>
					<div id="content_right">
						<br />
						<br />

						<div class="btwz">
							修改信息
						</div>
						<br />	
						<%  
        
        request.setAttribute("${users.userid}","userid");  
        %>  	
						<form name="form1" method="get" action="admin_changedetails" id="form1">
						<c:forEach items="${userlist}" var="users">
							<table cellpadding="0" cellspacing="1" border="0"
								class="form_table">
								<tr>
									<td>
										&nbsp;&nbsp;&nbsp;&nbsp;用户名 (id:${users.userid})：
									</td>
									<td>
										<input type="text" name="username" value="${users.username}" onblur="check();"
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
										&nbsp;&nbsp;&nbsp;&nbsp;密码 ：
									</td>
									<td>
										<input type="text" name="password" value="" onblur="check();"
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
										<input type="text" name="name" value="${users.name}" class="inputgri">
										&nbsp;
										<font color="red" size="2">*</font>
									</td>
									<td id="d1"></td>
								</tr>
								
								<tr>
									<td>
										&nbsp;&nbsp;&nbsp;&nbsp;性别 ：
									</td>
									<td>
										<input type="radio" name="sex" value="1">
										男
										<input type="radio" name="sex" value="2">
										女
									</td>
								</tr>
								<tr>
									<td>
										&nbsp;&nbsp;&nbsp;&nbsp;出生年月 ：
									</td>
									<td>
										<input type="text" name="birthday" value="${users.birthday}" class="inputgri">
										&nbsp;
										<font color="red" size="2">*</font>
									</td>
									<td id="d3"></td>
								</tr>
								<tr>
									<td>
										&nbsp;&nbsp;&nbsp;&nbsp;主管 ：
									</td>
									<td>
										<input type="text" name="boss" value="${users.boss}" class="inputgri">
										&nbsp;
										<font color="red" size="2">*</font>
									</td>
									<td id="d4"></td>
								</tr>
								<tr>
									<td>
										&nbsp;&nbsp;&nbsp;&nbsp;职位 ：
									</td>
									<td>
										<input type="text" name="job" value="${users.job}" class="inputgri">
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
										<input type="text" name="entrytime" value="${users.entrytime}" class="inputgri">
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
										<select name="role">
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
										<input type="text" name="education" value="${users.education}"
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
										<input type="text" name="speciality" value="${users.speciality}"
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
										<textarea name="experience" rows="3" class="inputgri">${users.experience}</textarea>
										&nbsp;
										<font color="red" size="2">*</font>
									</td>
									<td id="d8"></td>
								</tr>
							</table>
							</c:forEach>
							<p align="center">
								<input type="submit" class="button" value="提交 &raquo;" 
								/>
								&nbsp;
								<input type="reset" class="button" value="重置 &raquo;" />
								&nbsp;
								<input type="button" class="button" value="返回 &raquo;"
									onclick="window.location.href='admin_userlist'">
							</p>
						</form>
						<br />
						<br />
					</div>
<jsp:include page="public_bottom.jsp" ></jsp:include>				
