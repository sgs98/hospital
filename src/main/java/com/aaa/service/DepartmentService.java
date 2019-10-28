package com.aaa.service;

import com.aaa.entity.Departments;

import java.util.List;

public interface DepartmentService {
    List<Departments> departmentList(Departments departments);
    int deleteDepartment(Integer departmentId);
    int addDepartment(Departments departments);
    int count(Departments departments);
}
