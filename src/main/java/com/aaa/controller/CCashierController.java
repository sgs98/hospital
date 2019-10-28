package com.aaa.controller;

import com.aaa.entity.CCashier;
import com.aaa.entity.CPharmacy;
import com.aaa.entity.CWarehuose;
import com.aaa.entity.ReportVo;
import com.aaa.service.CCashierService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.apache.ibatis.annotations.Select;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("caocc")
public class CCashierController {
    @Autowired
    private CCashierService cCashierService;
    //进入处方页面
    @RequestMapping("cc")
    public Object look(Model model){
        //查询所有药房
        List<CWarehuose> selware = cCashierService.selware();
        model.addAttribute("selware",selware);
        return  "cao/cashier";
    }
    //查询所有患者信息
    @RequestMapping("selpreson")
    @ResponseBody
    public Object selperson(Integer page, Integer limit){
        PageHelper.startPage(page, limit);
        List<ReportVo> sel = cCashierService.sel();
        PageInfo pageInfo = new PageInfo(sel);
        Map<String, Object> tableData = new HashMap<String, Object>();
        //这是layui要求返回的json数据格式，如果后台没有加上这句话的话需要在前台页面手动设置
        tableData.put("code", 0);
        tableData.put("msg", "");
        //将全部数据的条数作为count传给前台（一共多少条）
        tableData.put("count", pageInfo.getTotal());
        //将分页后的数据返回（每页要显示的数据）
        tableData.put("data", pageInfo.getList());
        return tableData;
    }
    //查询药品所有信息
    @RequestMapping("seldrug")
    @ResponseBody
    public Object seldrug(Integer wareid,Integer page, Integer limit){
        PageHelper.startPage(page, limit);
        List<CPharmacy> selpharm = cCashierService.selpharm();
        PageInfo pageInfo = new PageInfo(selpharm);
        Map<String, Object> tableData = new HashMap<String, Object>();
        //这是layui要求返回的json数据格式，如果后台没有加上这句话的话需要在前台页面手动设置
        tableData.put("code", 0);
        tableData.put("msg", "");
        //将全部数据的条数作为count传给前台（一共多少条）
        tableData.put("count", pageInfo.getTotal());
        //将分页后的数据返回（每页要显示的数据）
        tableData.put("data", pageInfo.getList());
        return tableData;
    }
    //查询处方中是否有这个药
    @RequestMapping("selchu")
    @ResponseBody
    public Object seslchu(CCashier cCashier,Integer reid, String mename){
        cCashier.setReportId(reid);//把用户id存入数据库
        cCashier.setDurgname(mename);//把药品名称存入实体类
        Integer selcadr = cCashierService.selcadr(cCashier);
        return selcadr;
    }
    //添加处方药品
    @RequestMapping("addchu")
    @ResponseBody
    public Object addchu(CCashier cCashier,CPharmacy cPharmacy){
        //向处方添加药品
        Integer addchu = cCashierService.addchu(cCashier);
        //减少药房中的数量
        cCashierService.deldrunum(cPharmacy);
        return addchu;
    }
    //查询该用户的处方
    @RequestMapping("selpepi")
    @ResponseBody
    public Object selpepi(Integer perid,Integer page, Integer limit){
        List<CCashier> selpepi = cCashierService.selpepi(perid);
        PageHelper.startPage(page, limit);
        PageInfo pageInfo = new PageInfo(selpepi);
        Map<String, Object> tableData = new HashMap<String, Object>();
        //这是layui要求返回的json数据格式，如果后台没有加上这句话的话需要在前台页面手动设置
        tableData.put("code", 0);
        tableData.put("msg", "");
        //将全部数据的条数作为count传给前台（一共多少条）
        tableData.put("count", pageInfo.getTotal());
        //将分页后的数据返回（每页要显示的数据）
        tableData.put("data", pageInfo.getList());
        return tableData;
    }
    //删除处方中的药品
    @RequestMapping("del")
    @ResponseBody
    public Object del(CCashier cCashier){
        Integer del = cCashierService.del(cCashier);
        if(del==0){
            return "删除失败";
        }else{
            return "删除成功";
        }
    }
}
