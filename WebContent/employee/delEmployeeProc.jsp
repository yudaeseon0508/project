<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%@ page import='yudaeseon.hr.service.EmployeeServiceImpl' %>

<%
	boolean isSuccess = false;
	
	String empIdStr = request.getParameter("empId");
	if(empIdStr != null)
		isSuccess = new EmployeeServiceImpl().delEmployee(Integer.parseInt(empIdStr));
	
	pageContext.setAttribute("isSuccess", isSuccess);
%>
<c:redirect url='../main.jsp?jobState=${isSuccess ? "41" : "40"}'/>