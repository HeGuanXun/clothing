package com.hegx.dto;

import com.hegx.po.OrderEntity;

/**
 * Created by hegx on 2017/4/26.
 */
public class OrderEntityDto extends OrderEntity {

    private String s_province;
    private String s_city;
    private String s_county;
    private String ss_province;
    private String ss_city;
    private String ss_county;
    private String school;

    public String getS_province() {
        return s_province;
    }

    public void setS_province(String s_province) {
        this.s_province = s_province;
    }

    public String getS_city() {
        return s_city;
    }

    public void setS_city(String s_city) {
        this.s_city = s_city;
    }

    public String getS_county() {
        return s_county;
    }

    public void setS_county(String s_county) {
        this.s_county = s_county;
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

    public String getSchool() {
        return school;
    }

    public void setSchool(String school) {
        this.school = school;
    }
}
