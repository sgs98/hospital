package com.aaa.mapper;

import com.aaa.entity.Warehuose;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface WarehuoseMapper {
    List<Warehuose> findAllWarehuose(Warehuose warehuose);
    int deleteWarehuose(Integer warehouseId);
    int addWarehuose(Warehuose warehuose);
    int editWarehuose(Warehuose warehuose);
}
