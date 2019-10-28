package com.aaa.service.Impl;

import com.aaa.entity.Bed;
import com.aaa.entity.Departments;
import com.aaa.entity.Doctor;
import com.aaa.entity.Register;
import com.aaa.mapper.LadminMapper;
import com.aaa.service.LadminService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class LadminServiceImpl implements LadminService {

    @Resource
    private LadminMapper ladminMapper;

    @Override
    public List<Departments> selDepartment(Departments departments) {
        return ladminMapper.selDepartment(departments);
    }

    @Override
    public List<Doctor> selDoctor(Doctor doctor) {
        return ladminMapper.selDoctor(doctor);
    }

    @Override
    public List<Bed> selBed(Bed bed) {
        return ladminMapper.selBed(bed);
    }

    @Override
    public int addRegister(Register register) {
        return ladminMapper.addRegister(register);
    }

    @Override
    public List<Register> selRegister(Register register) {
        return ladminMapper.selRegister(register);
    }

    @Override
    public int updBed(Register register) {
        return ladminMapper.updBed(register);
    }
}
