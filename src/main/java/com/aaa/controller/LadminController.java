package com.aaa.controller;

import com.aaa.entity.Bed;
import com.aaa.entity.Departments;
import com.aaa.entity.Doctor;
import com.aaa.entity.Register;
import com.aaa.service.LadminService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("liao")
public class LadminController {

    @Autowired
    private LadminService ladminService;

    //跳转入院登记页面
    @RequestMapping("/admin")
    public String admin(){
        return "liao/admin";
    }

    //查询患者信息
    @RequestMapping("/selRegister")
    @ResponseBody
    public Object selRegister(Integer page, Integer limit,Register register){
        PageHelper.startPage(page, limit);
        List<Register> selreg=ladminService.selRegister(register);
        PageInfo pageInfo = new PageInfo(selreg);
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

    //页面请求查询科室信息
    @RequestMapping("/selDepartment")
    @ResponseBody
    public Object selDepartment(){
        Departments departments=new Departments();
        List<Departments> Departments= ladminService.selDepartment(departments);
        return Departments;
    }

    //页面请求查询医生信息
    @RequestMapping("/selDoctor")
    @ResponseBody
    public Object selDoctor(Integer departmentId){
        Doctor doctor=new Doctor();
        doctor.setDepartmentId(departmentId);
        List<Doctor> doctors = ladminService.selDoctor(doctor);
        return doctors;
    }

    //查询床位
    @RequestMapping("/selBed")
    @ResponseBody
    public Object selBed(Integer departmentId){
        Bed bed= new Bed();
        bed.setDepartmentId(departmentId);
        bed.setState(0);
        List<Bed> beds = ladminService.selBed(bed);
        return beds;
    }

    //添加患者
    @RequestMapping("/addRegister")
    @ResponseBody
    public Object addRegister(Register register, HttpServletRequest request){
        String yonghu = (String)request.getSession().getAttribute("yonghu");
        register.setOperator(yonghu);
        int i = ladminService.addRegister(register);
        if(i==1){int j = ladminService.updBed(register);
            if(j==1){
                return "添加成功";
            }else{
                return "添加失败";
            }
        }else{
            return "添加失败";
        }
    }
}
