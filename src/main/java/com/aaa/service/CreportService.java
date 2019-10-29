package com.aaa.service;

import com.aaa.entity.*;

import java.util.List;

public interface CreportService {
    //查询挂号的所有信息
    List<ReportVo> sel(ReportVo reportVo);
    List<ReportVo> selById(Integer reportId);
    //查询所有的科室
    List<CDepartments> seldep();
    //查询所有的门诊类型
    List<CRegisteredtype> selreg();
    //查询医生的信息
    List<ReportVo> seldector(CDoctor cDoctor);
    //根据所选科室查询该科室的价格
    Integer seltymo(CRegisteredtype cRegisteredtype);
    //添加挂号人员
    Integer addre(CReport cReport);
    //根据id删除某个患者的信息
    Integer delre(Integer id);
}
