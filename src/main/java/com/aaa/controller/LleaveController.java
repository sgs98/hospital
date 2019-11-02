package com.aaa.controller;

import com.aaa.entity.Register;
import com.aaa.service.LleaveService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/liao")
public class LleaveController {

    @Autowired
    private LleaveService lleaveService;

    @RequestMapping("/leave")
    public String leave(){
        return "liao/leave";
    }

    //查询已经出院的信息
    @RequestMapping("/selRegisters")
    @ResponseBody
    public Object selRegisters(Integer page, Integer limit,String userNames){
        Register register=new Register();
        register.setUserName(userNames);
        PageHelper.startPage(page, limit);
        List<Register> list = lleaveService.selRegisters(register);
        PageInfo pageInfo = new PageInfo(list);
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


    //患者出院
    @RequestMapping("/updLeave")
    @ResponseBody
    public Object updLeave(Register register){
        System.out.println(register);
        return "出院成功！";
    }
}