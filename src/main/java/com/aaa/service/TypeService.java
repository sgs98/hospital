package com.aaa.service;

import com.aaa.entity.Type;

import java.util.List;

public interface TypeService {
    List<Type> findAllType(Type type);
    int deleteType(Integer typeId);
    int addType(Type type);
    int editType(Type type);
}
