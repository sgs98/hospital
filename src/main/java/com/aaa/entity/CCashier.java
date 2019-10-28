package com.aaa.entity;

public class CCashier {
    private int cashier;//处方id
    private  Integer reportId;//挂号id
    private String durgname;//药品名称
    private int durgnum;//药品数量
    private double repiceprice;//价格
    private double repicetotal;//小计
    private Integer state;//状态

    public int getCashier() {
        return cashier;
    }

    public void setCashier(int cashier) {
        this.cashier = cashier;
    }

    public Integer getReportId() {
        return reportId;
    }

    public void setReportId(Integer reportId) {
        this.reportId = reportId;
    }

    public String getDurgname() {
        return durgname;
    }

    public void setDurgname(String durgname) {
        this.durgname = durgname;
    }

    public int getDurgnum() {
        return durgnum;
    }

    public void setDurgnum(int durgnum) {
        this.durgnum = durgnum;
    }

    public double getRepiceprice() {
        return repiceprice;
    }

    public void setRepiceprice(double repiceprice) {
        this.repiceprice = repiceprice;
    }

    public double getRepicetotal() {
        return repicetotal;
    }

    public void setRepicetotal(double repicetotal) {
        this.repicetotal = repicetotal;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }
}
