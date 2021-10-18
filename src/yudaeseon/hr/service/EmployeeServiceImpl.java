package yudaeseon.hr.service;

import java.time.LocalDate;
import java.util.List;

import yudaeseon.hr.dao.EmployeeDao;
import yudaeseon.hr.domain.Employee;

public class EmployeeServiceImpl implements EmployeeService {
	private EmployeeDao empDao;
	
	public EmployeeServiceImpl(EmployeeDao empDao) {
		this.empDao = empDao;
	}
	
	@Override
	public List<Employee> getEmployees(){
		return empDao.selectEmployees();
	}
	
	@Override
	public Employee getEmployee(int empId){
		return empDao.selectEmployee(empId);
	}
	
	@Override
	public boolean addEmployee(String empName, LocalDate hireDate){
		return empDao.insertEmployee(empName, hireDate);
	}
	
	@Override
	public boolean fixEmployee(Employee emp){
		return empDao.updateEmployee(emp);
	}
	
	@Override
	public boolean delEmployee(int empId){
		return empDao.deleteEmployee(empId);
	}
}