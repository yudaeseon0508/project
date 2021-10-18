<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>

<%
	String jobState = request.getParameter("jobState");
	String job = "";
	String isSuccess = "1";
	String msg = "";
	
	if(jobState != null) {
		job = jobState.charAt(0) + "";
		isSuccess = jobState.charAt(1) + "";
		
		switch(job){
		case "2" : msg = "사원 추가를"; break;
		case "3" : msg = "사원 수정을"; break;
		case "4" : msg = "사원 삭제를"; 
		}
		
		switch(isSuccess){
		case "1": msg += "를 성공했습니다."; break;
		case "0": msg += "를 실패했습니다.";
		}
	} else msg = "사원 목록을 조회합니다.";
	
	pageContext.setAttribute("msg", msg);
	pageContext.setAttribute("isSuccess", isSuccess);
%>

<div class='row'>
	<div class='col'>
		<div class='alert alert-dismissible fade show
			<c:choose>
				<c:when test='${isSuccess eq "1"}'>alert-success</c:when>
				<c:otherwise>alert-danger</c:otherwise>
			</c:choose>'>
			<p class='mb-0'>${msg}</p>
			<button type='button' class='close' data-dismiss='alert'>
				<span>%times;</span>
			</button>
		</div>
	</div>
</div>