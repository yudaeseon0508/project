<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%@ page import='yudaeseon.hr.service.EmployeeServiceImpl' %>
<%@ page import='yudaeseon.hr.domain.Employee' %>
<%@ page import='java.util.List' %>

<%
	pageContext.setAttribute("empList", new EmployeeServiceImpl().getEmployees());
	
	String[] uri = request.getRequestURI().split("/");
	pageContext.setAttribute("fileName", uri[uri.length - 1]);
%>
<div class='row'>
	<div class='col'>
		<table class='table'>
			<thead>
				<tr>
					<th></th>
					<th>사번</th>
					<th>이름</th>
					<th>입사일</th>
				</tr>
			</thead>
			<tbody>
				<c:choose>
					<c:when test='${empList.size() > 0}'>
						<c:forEach var='emp' items='${empList}'>
							<tr>
								<th></th>
								<th>
									<c:if test='${!fileName.equals("main.jsp")}'>
									<input type='radio' name='empId' value='${emp.empId}' required/>
									</c:if> ${emp.empId}
								</th>
								<td>${emp.empName}</td>
								<td>${emp.hireDate}</td>
							</tr>
						</c:forEach>
					</c:when>
					<c:otherwise>
						<tr>
							<td colspan='4' class='text-center'>사원이 없습니다.</td>
						</tr>
					</c:otherwise>
				</c:choose>
			</tbody>			
		</table>
	</div>
</div>