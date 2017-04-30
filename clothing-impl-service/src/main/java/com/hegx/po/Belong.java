package com.hegx.po;

import java.io.Serializable;

/**
 * Created by Administrator on 2017/4/30 0030.
 */
public class Belong implements Serializable {

    private Integer id;
    private String s_province;//省份
    private String s_city;//地级市
    private String s_county;//县
    private String school;//学校信息

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

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

    public String getSchool() {
        return school;
    }

    public void setSchool(String school) {
        this.school = school;
    }
}
