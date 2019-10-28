package com.aaa.controller;

import com.aaa.entity.*;
import com.aaa.service.CreportService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("cao")
    public class CreportController {
    @Autowired
    private CreportService creportService;
    //查询所有数据
    @RequestMapping("index")
    public Object toreport(ReportVo reportVo, Model model, String params){
        String reportName=params;
        reportVo.setReportName(reportName);
        List<ReportVo> sel = creportService.sel(reportVo);
        model.addAttribute("report",sel);
        return "cao/report";
    }
    //查询所有的科室
    @RequestMapping("seldep")
    @ResponseBody
    public Object seldep(){
        List<CDepartments> seldep = creportService.seldep();
        return  seldep;
    }
    //查询所有的挂号类型
    @RequestMapping("/selreg")
    @ResponseBody
    public Object selreg(){
        List<CRegisteredtype> selreg = creportService.selreg();
        return selreg;
    }
    //查询医生信息
    @RequestMapping("seldoctor")
    @ResponseBody
    public Object seldoctor(CDoctor cDoctor, Integer registeredid, Integer departmentId){
        List<ReportVo> seldector = creportService.seldector(cDoctor);
        System.out.println();
        return seldector;
    }
    //根据挂号类型查找该类型的价格
    @RequestMapping("seltymo")
    @ResponseBody
    public Object seltymo(CRegisteredtype cRegisteredtype){
        Integer seltymo = creportService.seltymo(cRegisteredtype);
        return seltymo;
    }
    //添加新的挂号
    @RequestMapping("addre")
    @ResponseBody
    public Object addre(CReport cReport){
        Integer addre = creportService.addre(cReport);
        if(addre==1){
            return "添加成功";
        }else{
            return "添加失败，请联系管理员";
        }
    }
    //根据id删除某个患者信息
    @RequestMapping("delre")
    @ResponseBody
    public Object delre(Integer id){
        Integer delre = creportService.delre(id);
        if(delre==1){
            return  "修改成功";
        }else{
            return  "修改失败";
        }

    }
    /*@RequestMapping("report")
    @ResponseBody
    public Object report(ReportVo reportVo, Integer page, Integer limit){
        PageHelper.startPage(page, limit);
        List<ReportVo> sel = creportService.sel(reportVo);
        PageInfo pageInfo = new PageInfo(sel);
        Map<String, Object> tableData = new HashMap<String, Object>();
        //这是layui要求返回的json数据格式
        tableData.put("code", 0);
        tableData.put("msg", "");
        //将全部数据的条数作为count传给前台（一共多少条）
        tableData.put("count", pageInfo.getTotal());
        //将分页后的数据返回（每页要显示的数据）
        tableData.put("data", pageInfo.getList());
        return tableData;
    }*/
    //根据id删除某个患者信息
    @RequestMapping("selById")
    @ResponseBody
    public Object selById(Integer reportId){
        List<ReportVo> reportVos = creportService.selById(reportId);
        return reportVos;
    }
}
