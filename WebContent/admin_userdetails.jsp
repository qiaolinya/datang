<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<jsp:include page="admin_top.jsp" ></jsp:include>
					<div id="content_right">
						<br />
						<br />
						<div class="btwz">
							人员详细信息
						</div>
						<br>
						<c:forEach items="${userlist}" var="users">
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
									${users.name}
								</td>
								<td>
									${users.sex}
								</td>
								<td>
									${users.entrytime}
								</td>
								<td>
									${users.job}
								</td>
							</tr>
							<tr>
								<td class="tb_top">
									<strong>出生年月：</strong>
								</td>
								<td class="tb_mid" colspan="3">
									${users.birthday}
								</td>
							</tr>
							<tr>
								<td class="tb_top">
									<strong>学历：</strong>
								</td>
								<td class="tb_mid" colspan="3">
									${users.education}
								</td>
							</tr>
							<tr>
								<td class="tb_top">
									<strong>专业：</strong>
								</td>
								<td class="tb_mid" colspan="3">
									${users.speciality}
								</td>
							</tr>
							<tr height="40">
								<td class="tb_top">
									<strong>行业经历：</strong>
								</td>
								<td class="tb_mid" colspan="3">
									${users.experience}
								</td>
							</tr>
						
						</table>
						</c:forEach>
						<p align=right style="padding-right: 30px">
							<input type="button" class="button" value="返回 &raquo"
								onclick="window.location.href='admin_userlist?pagesize=5&page=1'">
						</p>
						<br />
						<br />
					</div>
				<jsp:include page="public_bottom.jsp" ></jsp:include>