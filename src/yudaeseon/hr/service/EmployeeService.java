package yudaeseon.hr.service;

import java.time.LocalDate;
import java.util.List;

import yudaeseon.hr.domain.Employee;

public interface EmployeeService {
	List<Employee> getEmployees();
	Employee getEmployee(int empId);
	boolean addEmployee(String empName, LocalDate hireDate);
	boolean fixEmployee(Employee emp);
	boolean delEmployee(int empId);
}
