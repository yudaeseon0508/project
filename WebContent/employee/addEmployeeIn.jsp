<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<%@ include file='../include/lib.jsp' %>

<div class='container'>
	<%@ include file='../include/header.jsp' %>
	<%@ include file='../include/gnb.jsp' %>
	
	<form action='addEmployeeProc.jsp'>
		<div class='row form-group'>
			<label class='col-2 col-form-label'>사원명: </label>
			<input type='text' class='col form-control' name='empName' required/>
		</div>
		<div class='row form-group'>
			<label class='col-2 col-form-label'>입사일: </label>
			<input type='date' class='col form-control' name='hireDate' required/>
		</div>
		<div class='row d-flex justify-content-end'>
			<a href='../main.jsp' class='btn btn-outline-secondary mr-1'>취소</a>
			<button type='submit' class='btn btn-outline-primary'>추가</button>
		</div>
	</form>
</div>