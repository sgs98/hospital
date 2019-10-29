package com.aaa.mapper;

import com.aaa.entity.Lpharmacy;
import com.aaa.entity.Lrecord;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface LdrugMapper {

    List<Lpharmacy> selDrug(Lpharmacy lpharmacy);
    List<Lrecord> selDrugs(Lrecord lrecord);

}
