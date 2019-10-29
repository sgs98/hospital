package com.aaa.mapper;

import com.aaa.entity.Lpharmacy;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface LdrugMapper {

    List<Lpharmacy> selDrug(Lpharmacy lpharmacy);

}
