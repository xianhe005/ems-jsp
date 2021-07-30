package com.hxh.emsjsp.entity;

import java.util.Date;

public class Employee {

    private Integer id;
    private String name;
    //spring中接收的日期格式为：yyyy/MM/dd
    private Date birthday;
    private Double salary;
    private Boolean gender;

    public Employee() {
    }

    public Employee(Integer id, String name, Date birthday, Double salary, Boolean gender) {
        this.id = id;
        this.name = name;
        this.birthday = birthday;
        this.salary = salary;
        this.gender = gender;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public Double getSalary() {
        return salary;
    }

    public void setSalary(Double salary) {
        this.salary = salary;
    }

    public Boolean getGender() {
        return gender;
    }

    public void setGender(Boolean gender) {
        this.gender = gender;
    }

    @Override
    public String toString() {
        return "Employee{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", birthday=" + birthday +
                ", salary=" + salary +
                ", gender=" + gender +
                '}';
    }
}
