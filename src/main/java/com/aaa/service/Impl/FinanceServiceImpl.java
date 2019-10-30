package com.aaa.service.Impl;

import com.aaa.entity.Finance;
import com.aaa.mapper.FinanceMapper;
import com.aaa.service.FinanceService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service
public class FinanceServiceImpl implements FinanceService {
    @Resource
    private FinanceMapper FinanceMapper;
    @Override
    public List<Double> reportYearFinance(String year) {
        return FinanceMapper.reportYearFinance(year);
    }

    @Override
    public List<Finance> reportYearBingFinance() {
        return FinanceMapper.reportYearBingFinance();
    }

    @Override
    public List<Double> zhuYuanYearFinance(String year) {
        return FinanceMapper.zhuYuanYearFinance(year);
    }

    @Override
    public List<Finance> zhuYuanYearBingFinance() {
        return FinanceMapper.zhuYuanYearBingFinance();
    }
}
