package com.aaa.controller;

import com.aaa.entity.Finance;
import com.aaa.service.FinanceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("finance")
public class FinanceController {
    @Autowired
    private FinanceService financeService;
    @ResponseBody
    @RequestMapping("reportYearFinance")
    public Object reportYearFinance(String year){
        List<Double> doubles = financeService.reportYearFinance(year);
        for (int i = 0; i < doubles.size(); i++) {
            if(null==doubles.get(i)) {
                doubles.set(i, 0.0);
            }
        }
        return doubles;
    }
    @ResponseBody
    @RequestMapping("zhuYuanYearFinance")
    public Object zhuYuanYearFinance(String year){
        List<Double> zhuYuan = financeService.zhuYuanYearFinance(year);
        for (int i = 0; i < zhuYuan.size(); i++) {
            if(null==zhuYuan.get(i)) {
                zhuYuan.set(i, 0.0);
            }
        }
        return zhuYuan;
    }
    @ResponseBody
    @RequestMapping("reportYearBingFinance")
    public Object reportYearBingFinance(){
        List<Finance> bingReport = financeService.reportYearBingFinance();
        return bingReport;
    }
    @ResponseBody
    @RequestMapping("zhuYuanYearBingFinance")
    public Object zhuYuanYearBingFinance(){
        List<Finance> bingZhuYuan = financeService.zhuYuanYearBingFinance();
        return bingZhuYuan;
    }

}
