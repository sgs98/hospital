package com.aaa.service;

import com.aaa.entity.Registeredtype;
import com.aaa.mapper.RegisteredTypeMapper;

import java.util.List;

public interface RegisteredTypeService {
    List<Registeredtype> registeredTypeList(Registeredtype registeredType);
    int deleteType(Integer registeredId);
    int editRegisteredType(Registeredtype Registeredtype);
    int addRegisteredType(Registeredtype Registeredtype);
}
