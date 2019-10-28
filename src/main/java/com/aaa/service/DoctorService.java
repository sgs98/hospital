package com.aaa.service;

import com.aaa.entity.Departments;
import com.aaa.entity.Doctor;
import com.aaa.entity.Paiban;
import com.aaa.entity.Registeredtype;

import java.util.List;

public interface DoctorService {
    List<Doctor> doctorList(Doctor doctor);
    int deleteDoctor(Integer doctorId);
    int addDoctor(Doctor doctor);
    int editDoctor(Doctor doctor);
    List<Departments> findAllDepartments();
    List<Registeredtype>findAllRegisteredtype();
    int count(Doctor doctor);
}
