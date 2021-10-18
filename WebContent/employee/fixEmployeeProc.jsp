<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%@ page import='yudaeseon.hr.service.EmployeeServiceImpl' %>
<%@ page import='yudaeseon.hr.domain.Employee' %>
<%@ page import='java.time.LocalDate' %>
<%@ page import='java.time.format.DateTimeFormatter' %>

<%
	boolean isSuccess = false;

	String empIdStr = request.getParameter("empId");
	if(empIdStr != null) {
		int empId = Integer.parseInt(empIdStr);
		
		String empName = request.getParameter("empName");
		
		String hireDateStr = request.getParameter("hireDate");
		LocalDate hireDate = LocalDate.parse(hireDateStr, DateTimeFormatter.ISO_DATE);
		
		isSuccess = new EmployeeServiceImpl().fixEmployee(new Employee(empId, empName, hireDate));
	}
	
	pageContext.setAttribute("isSuccess", isSuccess);
%>
<c:redirect url='../main.jsp?jobState=${isSuccess ?  "31" : "30"}'/>