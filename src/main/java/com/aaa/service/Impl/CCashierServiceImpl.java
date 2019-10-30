package com.aaa.service.Impl;

import com.aaa.entity.CCashier;
import com.aaa.entity.CPharmacy;
import com.aaa.entity.CWarehuose;
import com.aaa.entity.ReportVo;
import com.aaa.mapper.CCashierMapper;
import com.aaa.service.CCashierService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

@Service
@Transactional
public class CCashierServiceImpl implements CCashierService {
    @Resource
    private CCashierMapper cCashierMapper;
    //查询患者的所有信息用于也面表格展示
    @Override
    public List<ReportVo> sel() {
        return cCashierMapper.sel();
    }
    //查询所有药房放在药品下拉框中
    @Override
    public List<CWarehuose> selware() {
        return cCashierMapper.selware();
    }
    //根据药房id查询所有的药品信息
    @Override
    public List<CPharmacy> selpharm() {
        return cCashierMapper.selpharm();
    }
    //查询这个用户的处方表上有没有这个药
    @Override
    public Integer selcadr(CCashier cCashier) {
        return cCashierMapper.selcadr(cCashier);
    }
    //添加处方药品
    @Override
    public Integer addchu(CCashier cCashier) {
        return cCashierMapper.addchu(cCashier);
    }
    //如果处方中含有该药品则修改数量和价钱
    @Override
    public Integer updchu(CCashier cCashier) {
        return cCashierMapper.updchu(cCashier);
    }

    //根据用户查询这个人的处方
    @Override
    public List<CCashier> selpepi(Integer perid) {
        return cCashierMapper.selpepi(perid);
    }
    //删除处方中的药品
    @Override
    public Integer del(CCashier cCashier) {
        return cCashierMapper.del(cCashier);
    }
    //减少药品中的数量
    @Override
    public Integer deldrunum(CPharmacy cPharmacy) {
        return  cCashierMapper.deldrunum(cPharmacy);
    }
    //添加仓库中的数量
    @Override
    public Integer adddrunum(CPharmacy cPharmacy) {
        return cCashierMapper.adddrunum(cPharmacy);
    }
}
