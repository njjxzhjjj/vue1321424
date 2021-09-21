package com.xiexin.bean;

import java.io.Serializable;

/**
 * t_detail
 * @author 
 */
public class TDetail implements Serializable {
    private Integer bdid;

    private Integer bid;

    private String bdname;

    private String bdperson;

    private static final long serialVersionUID = 1L;

    public Integer getBdid() {
        return bdid;
    }

    public void setBdid(Integer bdid) {
        this.bdid = bdid;
    }

    public Integer getBid() {
        return bid;
    }

    public void setBid(Integer bid) {
        this.bid = bid;
    }

    public String getBdname() {
        return bdname;
    }

    public void setBdname(String bdname) {
        this.bdname = bdname;
    }

    public String getBdperson() {
        return bdperson;
    }

    public void setBdperson(String bdperson) {
        this.bdperson = bdperson;
    }
}