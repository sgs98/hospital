package com.aaa.service.Impl;

import com.aaa.entity.Lpharmacy;
import com.aaa.entity.Lrecord;
import com.aaa.mapper.LdrugMapper;
import com.aaa.service.LdrugService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class LdrugServiceImpl  implements LdrugService {

    @Resource
    private LdrugMapper ldrugMapper;

    @Override
    public List<Lpharmacy> selDrug(Lpharmacy lpharmacy) {
        return ldrugMapper.selDrug(lpharmacy);
    }

    @Override
    public List<Lrecord> selDrugs(Lrecord lrecord) {
        return ldrugMapper.selDrugs(lrecord);
    }
}
