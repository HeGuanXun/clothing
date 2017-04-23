package com.hegx.po;

import java.io.Serializable;
import java.util.Date;


/**
 * Created by hegx on 2017/4/21.
 */
public class Fashion  implements Serializable {
    private Integer id;
    private String fashionName;
    private Date createTime;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getFashionName() {
        return fashionName;
    }

    public void setFashionName(String fashionName) {
        this.fashionName = fashionName;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }
}
