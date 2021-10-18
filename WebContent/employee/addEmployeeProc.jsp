<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%@ page import='yudaeseon.hr.service.EmployeeServiceImpl' %>
<%@ page import='java.time.LocalDate' %>
<%@ page import='java.time.format.DateTimeFormatter' %>

<%
	String empName = request.getParameter("empName");
	String hireDateStr = request.getParameter("hireDate");
	LocalDate hireDate = LocalDate.parse(hireDateStr, DateTimeFormatter.ISO_DATE);
	
	pageContext.setAttribute("isSuccess",
			new EmployeeServiceImpl().addEmployee(empName, hireDate));
%>
<c:redirect url='../main.jsp?jobState=${isSuccess ? "21" : "20"}'/>

