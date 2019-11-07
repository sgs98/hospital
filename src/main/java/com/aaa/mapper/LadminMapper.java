package com.aaa.mapper;

import com.aaa.entity.*;
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
    List<Moneytype> selDis();
    List<Register> selDoor();
    int updZ(Register register);
    int updKe(Register register);
}
