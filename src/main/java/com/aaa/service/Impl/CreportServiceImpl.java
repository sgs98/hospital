package com.aaa.service.Impl;

import com.aaa.entity.*;
import com.aaa.mapper.CreportMapper;
import com.aaa.service.CreportService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

@Service
@Transactional
public class CreportServiceImpl implements CreportService {

    @Resource
    private CreportMapper creportMapper;
    //查询挂号的所有信息
    @Override
    public List<ReportVo> sel(ReportVo reportVo) {
        return creportMapper.sel(reportVo);
    }

    @Override
    public List<ReportVo> selById(Integer reportId) {
        return creportMapper.selById(reportId);
    }

    @Override
    public List<CDepartments> seldep() {
        return creportMapper.seldep();
    }

    @Override
    public List<CRegisteredtype> selreg() {
        return creportMapper.selreg();
    }

    //查询医生的所有信息
    @Override
    public List<ReportVo> seldector(CDoctor cDoctor) {
        return creportMapper.seldector(cDoctor);
    }

    @Override
    public Integer seltymo(CRegisteredtype cRegisteredtype) {
        return creportMapper.seltymo(cRegisteredtype);
    }

    @Override
    public Integer addre(CReport cReport) {
        return creportMapper.addre(cReport);
    }

    @Override
    public Integer delre(Integer id) {
        return creportMapper.delre(id);
    }

    @Override
    public Integer phone(CReport cReport) {
        return creportMapper.phone(cReport);
    }

    @Override
    public Integer carid(CReport cReport) {
        return creportMapper.carid(cReport);
    }
}
