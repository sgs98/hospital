package com.aaa.service.Impl;

import com.aaa.entity.Register;
import com.aaa.mapper.LleaveMapper;
import com.aaa.service.LleaveService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class LleaveServiceImpl implements LleaveService {

    @Resource
    private LleaveMapper lleaveMapper;

    @Override
    public List<Register> selRegisters(Register register) {
        return lleaveMapper.selRegisters(register);
    }
}
