package com.aaa.service;

import com.aaa.entity.Finance;

import java.util.List;

public interface FinanceService {
    List<Double> reportYearFinance(String year);
    List<Finance> reportYearBingFinance();
    List<Double> zhuYuanYearFinance(String year);
    List<Finance> zhuYuanYearBingFinance();
}
