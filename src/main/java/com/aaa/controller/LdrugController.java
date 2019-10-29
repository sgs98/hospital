package com.aaa.controller;

import com.aaa.entity.Lpharmacy;
import com.aaa.entity.Lrecord;
import com.aaa.entity.Register;
import com.aaa.entity.Warehuose;
import com.aaa.service.LdrugService;
import com.aaa.service.WarehuoseService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("liao")
public class LdrugController {
    @Autowired
    private LdrugService ldrugService;

    //跳转药品登记页面
    @RequestMapping("/drug")
    public String admin(){
        return "liao/drug";
    }

    //查询药品信息
    @RequestMapping("/selDrug")
    @ResponseBody
    public Object selDrug(Integer page, Integer limit,Lpharmacy lpharmacy){
        PageHelper.startPage(page, limit);
        List<Lpharmacy> listAll =ldrugService.selDrug(lpharmacy);
        PageInfo pageInfo = new PageInfo(listAll);
        Map<String, Object> tableData = new HashMap<String, Object>();
        //这是layui要求返回的json数据格式
        tableData.put("code", 0);
        tableData.put("msg", "");
        //将全部数据的条数作为count传给前台（一共多少条）
        tableData.put("count", pageInfo.getTotal());
        //将分页后的数据返回（每页要显示的数据）
        tableData.put("data", pageInfo.getList());
        return tableData;
    }

    //查询用户的药品信息
    @RequestMapping("/selDrugs")
    @ResponseBody
    public Object selDrugs(Integer page, Integer limit, Lrecord lrecord){
        lrecord.setState(0);
        PageHelper.startPage(page, limit);
        List<Lrecord> listAll =ldrugService.selDrugs(lrecord);
        PageInfo pageInfo = new PageInfo(listAll);
        Map<String, Object> tableData = new HashMap<String, Object>();
        //这是layui要求返回的json数据格式
        tableData.put("code", 0);
        tableData.put("msg", "");
        //将全部数据的条数作为count传给前台（一共多少条）
        tableData.put("count", pageInfo.getTotal());
        //将分页后的数据返回（每页要显示的数据）
        tableData.put("data", pageInfo.getList());
        return tableData;
    }
}
