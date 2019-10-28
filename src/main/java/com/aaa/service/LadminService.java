package com.aaa.service;

import com.aaa.entity.Bed;
import com.aaa.entity.Departments;
import com.aaa.entity.Doctor;
import com.aaa.entity.Register;

import java.util.List;

public interface LadminService {

    List<Departments> selDepartment(Departments departments);
    List<Doctor> selDoctor(Doctor doctor);
    List<Bed> selBed(Bed bed);
    int addRegister(Register register);
    List<Register> selRegister(Register register);
    int updBed(Register register);
}
