package yudaeseon.hr.dao.map;

import java.time.LocalDate;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import yudaeseon.hr.domain.Employee;

public interface EmployeeMap {
	List<Employee> selectEmployees();
	int insertEmployee(@Param("empName") String empName, @Param("hireDate") LocalDate hireDate);
	int updateEmployee(Employee emp);
	int deleteEmployee(int empId);
	Employee selectEmployee(int empId);
}
