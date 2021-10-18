<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<%
	Object ctxObj = application.getAttribute("ctx");
	String ctx = "";
	
	if(ctxObj != null) ctx = (String)ctx;
	else application.setAttribute("ctx", request.getContextPath());
%>
<div class='row mb-3'>
	<div class='col'>
		<nav class='d-flex'>
			<a class='btn btn-primary w-100 mr-1' href='${ctx}/main.jsp'>
				<i class='fas fa-align-justify'></i> 목록
			</a>
			<a class='btn btn-success w-100 mr-1' href='${ctx}/employee/addEmployeeIn.jsp'>
				<i class='fas fa-plus'></i> 추가
			</a>
			<a class='btn btn-info w-100 mr-1' href='${ctx}/employee/fixEmployeeIn.jsp'>
				<i class='fas fa-edit'></i> 수정
			</a>
			<a class='btn btn-warning w-100' href='${ctx}/employee/delEmployeeIn.jsp'>
				<i class='fas fa-trash'></i> 삭제
			</a>
		</nav>
	</div>
</div>