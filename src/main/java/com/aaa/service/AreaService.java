package com.aaa.service;

import com.aaa.entity.Area;

import java.util.List;

public interface AreaService {
    List<Area> findAllArea(Area area);
    int deleteArea(Integer areaId);
    int addArea(Area area);
    int editArea(Area area);
}
