<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<%@ include file='../include/lib.jsp' %>

<div class='container'>
	<%@ include file='../include/header.jsp' %>
	<%@ include file='../include/gnb.jsp' %>
	
	<form action='fixEmployeeProc.jsp'>
		<div class='row mb-3'>
			<div class='col'>
				<div class='row form-group'>
					<label class='col-4 col-form-label text-right'>사원명: </label>
					<input type='text' class='col-8 form-control' name='empName' required/>
				</div>
			</div>
			<div class='col'>
				<div class='row form-group'>
					<label class='col-4 col-form-label text-right'>입사일: </label>
					<input type='date' class='col-8 form-control' name='hireDate' required/>
				</div>
			</div>
			<div class='col-3 mr-3'>
				<div class='row d-flex justify-content-end'>
					<a href='../main.jsp' class='btn btn-outline-secondary ml-3 mr-1'>취소</a>
					<button type='submit' class='btn btn-outline-primary'>수정</button>
				</div>
			</div>
		</div>
		
		<jsp:include page='listEmployees.jsp'/>
	</form>
</div>
