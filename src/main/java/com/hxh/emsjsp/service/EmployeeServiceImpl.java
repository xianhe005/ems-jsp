package com.hxh.emsjsp.service;

import com.hxh.emsjsp.dao.EmployeeDao;
import com.hxh.emsjsp.entity.Employee;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class EmployeeServiceImpl implements EmployeeService {

    private final EmployeeDao employeeDao;

    public EmployeeServiceImpl(EmployeeDao employeeDao) {
        this.employeeDao = employeeDao;
    }

    @Override
    public List<Employee> list() {
        return employeeDao.list();
    }

    @Override
    public void add(Employee employee) {
        employeeDao.add(employee);
    }

    @Override
    public Employee idByEmployee(Integer id) {
        return employeeDao.idByEmployee(id);
    }

    @Override
    public void update(Employee employee) {
        employeeDao.update(employee);
    }

    @Override
    public void delete(Integer id) {
        employeeDao.delete(id);
    }
}
