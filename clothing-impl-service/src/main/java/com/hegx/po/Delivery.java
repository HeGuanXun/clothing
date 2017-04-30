package com.hegx.po;

import java.io.Serializable;

/**
 * Created by Administrator on 2017/4/30 0030.
 */
public class Delivery implements Serializable {

    private Integer id;
    private String way;//快递方式
    private String personName;//收件人
    private String relationPhone;//收件人电话
    private String ss_province;//省份
    private String ss_city;//地级市
    private String ss_county;//县
    private String address;//地址


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getWay() {
        return way;
    }

    public void setWay(String way) {
        this.way = way;
    }

    public String getPersonName() {
        return personName;
    }

    public void setPersonName(String personName) {
        this.personName = personName;
    }

    public String getRelationPhone() {
        return relationPhone;
    }

    public void setRelationPhone(String relationPhone) {
        this.relationPhone = relationPhone;
    }

    public String getSs_province() {
        return ss_province;
    }

    public void setSs_province(String ss_province) {
        this.ss_province = ss_province;
    }

    public String getSs_city() {
        return ss_city;
    }

    public void setSs_city(String ss_city) {
        this.ss_city = ss_city;
    }

    public String getSs_county() {
        return ss_county;
    }

    public void setSs_county(String ss_county) {
        this.ss_county = ss_county;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
}
