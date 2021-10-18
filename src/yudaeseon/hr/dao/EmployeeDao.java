package yudaeseon.hr.dao;

import java.time.LocalDate;
import java.util.List;

import yudaeseon.hr.domain.Employee;

public interface EmployeeDao {
	List<Employee> selectEmployees();
	boolean insertEmployee(String empName, LocalDate hireDate);
	boolean updateEmployee(Employee emp);
	boolean deleteEmployee(int empId);
	Employee selectEmployee(int empId);
}
