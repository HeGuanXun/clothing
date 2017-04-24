package com.hegx.po;

import java.io.Serializable;

/**
 * Created by hegx on 2017/4/24.
 */
public class Code implements Serializable {
    private  Integer id;
    private  Integer mxs;
    private  Integer ms;
    private  Integer mm;
    private  Integer ml;
    private  Integer mxl;
    private  Integer mxxl;
    private  Integer mxxxl;
    private  Integer totalCount;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getMxs() {
        return mxs;
    }

    public void setMxs(Integer mxs) {
        this.mxs = mxs;
    }

    public Integer getMs() {
        return ms;
    }

    public void setMs(Integer ms) {
        this.ms = ms;
    }

    public Integer getMm() {
        return mm;
    }

    public void setMm(Integer mm) {
        this.mm = mm;
    }

    public Integer getMl() {
        return ml;
    }

    public void setMl(Integer ml) {
        this.ml = ml;
    }

    public Integer getMxl() {
        return mxl;
    }

    public void setMxl(Integer mxl) {
        this.mxl = mxl;
    }

    public Integer getMxxl() {
        return mxxl;
    }

    public void setMxxl(Integer mxxl) {
        this.mxxl = mxxl;
    }

    public Integer getMxxxl() {
        return mxxxl;
    }

    public void setMxxxl(Integer mxxxl) {
        this.mxxxl = mxxxl;
    }

    public Integer getTotalCount() {
        return totalCount;
    }

    public void setTotalCount(Integer totalCount) {
        this.totalCount = totalCount;
    }
}
