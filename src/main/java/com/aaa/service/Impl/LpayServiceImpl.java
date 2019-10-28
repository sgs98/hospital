package com.aaa.service.Impl;

import com.aaa.entity.Pay;
import com.aaa.entity.Register;
import com.aaa.mapper.LpayMapper;
import com.aaa.service.LpayService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class LpayServiceImpl implements LpayService {

    @Resource
    private LpayMapper lpayMapper;

    @Override
    public int updPay(Register register) {
        return lpayMapper.updPay(register);
    }

    @Override
    public int addPay(Register register) {
        return lpayMapper.addPay(register);
    }

    @Override
    public List<Pay> selPays(Register register) {
        return lpayMapper.selPays(register);
    }
}
