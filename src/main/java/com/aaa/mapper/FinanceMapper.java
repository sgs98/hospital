package com.aaa.mapper;

import com.aaa.entity.Finance;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface FinanceMapper {
   List<Double> reportYearFinance(String year);
   List<Finance> reportYearBingFinance();
   List<Double> zhuYuanYearFinance(String year);
   List<Finance> zhuYuanYearBingFinance();

}
