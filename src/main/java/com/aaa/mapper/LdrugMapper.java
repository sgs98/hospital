package com.aaa.mapper;

import com.aaa.entity.Lpharmacy;
import com.aaa.entity.Lrecord;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface LdrugMapper {

    List<Lpharmacy> selDrug(Lpharmacy lpharmacy);
    List<Lrecord> selDrugs(Lrecord lrecord);
    int addDrug(Lrecord lrecord);
    int updDrug(Lrecord lrecord);
    int delDrug(Lrecord lrecord);
    int updDrugs(Lrecord lrecord);
    int updNum(Lrecord lrecord);
    int upd(Lrecord lrecord);

}
