package yudaeseon.hr.dao;

import java.time.LocalDate;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import yudaeseon.hr.config.Configuration;
import yudaeseon.hr.dao.map.EmployeeMap;
import yudaeseon.hr.domain.Employee;

public class EmployeeDaoImpl implements EmployeeDao {
	private EmployeeMap empMap;
	
	public EmployeeDaoImpl() {
		this.empMap = Configuration.getMapper(EmployeeMap.class);
	}
	
	@Override
	public List<Employee> selectEmployees() {
		return empMap.selectEmployees();
	}

	@Override
	public Employee selectEmployee(int empId) {
		return empMap.selectEmployee(empId);
	}

	@Override
	public boolean insertEmployee(@Param("empName") String empName,
							      @Param("hireDate") LocalDate hireDate) {
		return empMap.insertEmployee(empName, hireDate) > 0;
	}

	@Override
	public boolean updateEmployee(Employee emp) {
		return empMap.updateEmployee(emp) > 0;
	}

	@Override
	public boolean deleteEmployee(int empId) {
		return empMap.deleteEmployee(empId) > 0;
	}
}