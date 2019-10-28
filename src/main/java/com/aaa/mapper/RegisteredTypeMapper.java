package com.aaa.mapper;

import com.aaa.entity.Registeredtype;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface RegisteredTypeMapper {
    List<Registeredtype> registeredTypeList(Registeredtype registeredType);
    int deleteType(Integer registeredId);
    int editRegisteredType(Registeredtype Registeredtype);
    int addRegisteredType(Registeredtype Registeredtype);
    int count(Registeredtype registeredType);
}
