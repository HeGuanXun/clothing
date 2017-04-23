package com.hegx.dto;

import com.hegx.po.Fashion;

import java.io.Serializable;

/**
 * Created by hegx on 2017/4/22.
 */
public class FashionDto extends Fashion  {

    private String message;

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
}
