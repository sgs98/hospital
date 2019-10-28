package com.aaa.mapper;

import com.aaa.entity.Unit;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface UnitMapper {
    List<Unit> findAllUnit(Unit unit);
    int deleteUnit(Integer unitId);
    int addUnit(Unit unit);
    int editUnit(Unit unit);
}
