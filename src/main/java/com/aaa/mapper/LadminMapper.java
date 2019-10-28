package com.aaa.mapper;

import com.aaa.entity.Bed;
import com.aaa.entity.Departments;
import com.aaa.entity.Doctor;
import com.aaa.entity.Register;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface LadminMapper {

    List<Departments> selDepartment(Departments departments);
    List<Doctor> selDoctor(Doctor doctor);
    List<Bed> selBed(Bed bed);
    int addRegister(Register register);
    List<Register> selRegister(Register register);
    int updBed(Register register);
}
