package com.aaa.mapper;

import com.aaa.entity.Skull;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
@Mapper
public interface SkullMapper {
    List<Skull> findAllSkull(Skull skull);
    int deleteSkull(Integer skullId);
    int addSkull(Skull skull);
    int editSkull(Skull skull);
}
