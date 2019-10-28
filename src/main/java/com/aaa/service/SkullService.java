package com.aaa.service;

import com.aaa.entity.Skull;

import java.util.List;

public interface SkullService {
    List<Skull> findAllSkull(Skull skull);
    int deleteSkull(Integer skullId);
    int addSkull(Skull skull);
    int editSkull(Skull skull);
}
