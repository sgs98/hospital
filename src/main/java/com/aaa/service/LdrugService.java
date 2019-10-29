package com.aaa.service;

import com.aaa.entity.Lpharmacy;
import com.aaa.entity.Lrecord;

import java.util.List;

public interface LdrugService {

    List<Lpharmacy> selDrug(Lpharmacy lpharmacy);
    List<Lrecord> selDrugs(Lrecord lrecord);
}
