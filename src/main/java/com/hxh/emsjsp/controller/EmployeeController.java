package com.hxh.emsjsp.controller;

import com.hxh.emsjsp.entity.Employee;
import com.hxh.emsjsp.service.EmployeeService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

// 员工模块
@Controller
@RequestMapping("employee")
public class EmployeeController {

    private static final Logger log = LoggerFactory.getLogger(UserController.class);

    private final EmployeeService employeeService;

    public EmployeeController(EmployeeService employeeService) {
        this.employeeService = employeeService;
    }

    /**
     * 员工列表
     */
    @RequestMapping("list")
    public String listEmployee(HttpServletRequest request, Model model) {
        List<Employee> list = employeeService.list();
        //request.setAttribute("employees", list);
        // 同上
        model.addAttribute("employees", list);
        return "emplist";
    }

    @RequestMapping("add")
    public String addEmployee(Employee employee) {
        log.debug(employee.toString());
        employeeService.add(employee);
        return "redirect:/employee/list";
    }

    /**
     * 根据id查询员工信息
     */
    @RequestMapping("detail")
    public String detailEmployee(Integer id, Model model) {
        log.debug(String.valueOf(id));
        Employee employee = employeeService.idByEmployee(id);
        model.addAttribute("employee", employee);
        return "updateEmp";
    }

    /**
     * 更新员工信息
     */
    @RequestMapping("update")
    public String updateEmployee(Employee employee) {
        log.debug(employee.toString());
        employeeService.update(employee);
        return "redirect:/employee/list";
    }

    /**
     * 根据id删除员工信息
     */
    @RequestMapping("delete")
    public String deleteEmployee(Integer id) {
        log.debug(String.valueOf(id));
        employeeService.delete(id);
        return "redirect:/employee/list";
    }
}
