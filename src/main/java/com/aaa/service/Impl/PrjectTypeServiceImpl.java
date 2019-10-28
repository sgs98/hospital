package com.aaa.service.Impl;

import com.aaa.entity.*;
import com.aaa.mapper.PrjectTypeMapper;
import com.aaa.service.PrjectTypeService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;
@Service
@Transactional
public class PrjectTypeServiceImpl implements PrjectTypeService {

    @Resource
    private PrjectTypeMapper prjectTypeMapper;
    /*
     * 项目大类增删改查
     * */
    @Override
    public List<Projecttype> findAllProjecttype(Projecttype projecttype) {
        return prjectTypeMapper.findAllProjecttype(projecttype);
    }

    @Override
    public int addProjecttype(Projecttype projecttype) {
        return prjectTypeMapper.addProjecttype(projecttype);
    }

    @Override
    public int editProjecttype(Projecttype projecttype) {
        return prjectTypeMapper.editProjecttype(projecttype);
    }

    @Override
    public int deleteProjecttype(Integer projectId) {
        return prjectTypeMapper.deleteProjecttype(projectId);
    }
    /*
     * 门诊项目增删改查
     * */
    @Override
    public List<Outpatienttype> findAllOutpatienttype(Outpatienttype outpatienttype) {
        return prjectTypeMapper.findAllOutpatienttype(outpatienttype);
    }

    @Override
    public int addOutpatienttype(Outpatienttype outpatienttype) {
        return prjectTypeMapper.addOutpatienttype(outpatienttype);
    }

    @Override
    public int editOutpatienttype(Outpatienttype outpatienttype) {
        return prjectTypeMapper.editOutpatienttype(outpatienttype);
    }

    @Override
    public int deleteOutpatienttype(Integer outpatientId) {
        return prjectTypeMapper.deleteOutpatienttype(outpatientId);
    }
    /*
     * 住院项目增删改查
     * */
    @Override
    public List<Inoutpatienttype> findAllInoutpatienttype(Inoutpatienttype inoutpatienttype) {
        return prjectTypeMapper.findAllInoutpatienttype(inoutpatienttype);
    }

    @Override
    public int addInoutpatienttype(Inoutpatienttype inoutpatienttype) {
        return prjectTypeMapper.addInoutpatienttype(inoutpatienttype);
    }

    @Override
    public int editInoutpatienttype(Inoutpatienttype inoutpatienttype) {
        return prjectTypeMapper.editInoutpatienttype(inoutpatienttype);
    }

    @Override
    public int deleteInoutpatienttype(Integer inoutpatientId) {
        return prjectTypeMapper.deleteInoutpatienttype(inoutpatientId);
    }


    /*
     * 收费项目增删改查
     * */
    @Override
    public List<Moneytype> findAllMoneytype(Moneytype moneytype) {
        return prjectTypeMapper.findAllMoneytype(moneytype);
    }

    @Override
    public int addMoneytype(Moneytype moneytype) {
        return prjectTypeMapper.addMoneytype(moneytype);
    }

    @Override
    public int editMoneytype(Moneytype moneytype) {
        return prjectTypeMapper.editMoneytype(moneytype);
    }

    @Override
    public int deleteMoneytype(Integer moneyId) {
        return prjectTypeMapper.deleteMoneytype(moneyId);
    }
    /*
     * 床位项目增删改查
     * */
    @Override
    public List<Bed> findAllBed(Bed bed) {
        return prjectTypeMapper.findAllBed(bed);
    }

    @Override
    public int addBed(Bed bed) {
        return prjectTypeMapper.addBed(bed);
    }

    @Override
    public int editBed(Bed bed) {
        return prjectTypeMapper.editBed(bed);
    }

    @Override
    public int deleteBed(Integer bedId) {
        return prjectTypeMapper.deleteBed(bedId);
    }
}
