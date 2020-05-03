<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<jsp:include page="admin_top.jsp" ></jsp:include>
					<div id="content_right">
						<br />
						<br />

						<div class="btwz">
							员工列表
						</div>
						<br>
						<form name="form1" action="admin_emplist" method="get" id="form1">
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
									
								</tr>
								
                                 <c:forEach items="${userlist}" var="users">
								<tr class="row2" onMouseOver="this.className='row1'"
									onMouseOut="this.className='row2'">
									<td valign="middle" align="left">
										${users.username}
									</td>
									<td valign="middle" align="left">
										${users.sex}
									</td>
									<td valign="middle" align="left">
										${users.entrytime}
									</td>
									<td valign="middle" align="left">
										${users.job}
									</td>
									<td valign="middle" align="left">
									${users.userid}
										<input type="radio" name="userid"  value="${users.userid}"/>
									</td>
								</tr>
								</c:forEach>
							</table>
						</form>
						<p align="right">
							<input type="button" class="button" value="详细信息"
								onclick="empdetails()" />
						</p>
						<p class="paging">

							<a href="admin_emplist?pagesize=5&page=1"> 首页 &lt;</a>  
							<a href="admin_emplist?pagesize=5&page=${page-1}">上一页 &lt;</a>
							<strong>第${page}页/共${pagesize}页</strong>
							<a href="admin_emplist?pagesize=5&page=${page+1}"> 下一页 &gt;</a>
							<a href="admin_emplist?pagesize=5&page=${pagesize}">末页 &gt;&gt;</a>
						</p>
						<br />
						<br />
					</div>
<jsp:include page="public_bottom.jsp" ></jsp:include>

