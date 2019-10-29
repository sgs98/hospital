package com.aaa.entity;


public class CDoctor {
    private int doctorId;//医生id
    private String doctorName;//医生姓名
    private Integer departmentId;//外键科室id
    private Integer registeredid;//外键类型id

    public int getDoctorId() {
        return doctorId;
    }

    public void setDoctorId(int doctorId) {
        this.doctorId = doctorId;
    }

    public String getDoctorName() {
        return doctorName;
    }

    public void setDoctorName(String doctorName) {
        this.doctorName = doctorName;
    }

    public Integer getDepartmentId() {
        return departmentId;
    }

    public void setDepartmentId(Integer departmentId) {
        this.departmentId = departmentId;
    }

    public Integer getRegisteredid() {
        return registeredid;
    }

    public void setRegisteredid(Integer registeredid) {
        this.registeredid = registeredid;
    }
}
