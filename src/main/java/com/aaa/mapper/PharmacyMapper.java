package com.aaa.mapper;

import com.aaa.entity.Baoque;
import com.aaa.entity.Ypharmacy;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface PharmacyMapper {
    //查询药房药品
    List<Ypharmacy>selpharmacy(Ypharmacy ypharmacy);
    //添加药品到报缺表
    int addbaoque(Baoque baoque);
    //查询报缺表药品名称是否已存在
    int selbaoqueName(Baoque baoque);
    int upbaoquenum(Baoque baoque);
}
