package com.hegx.dto;

import com.hegx.po.Code;
import com.hegx.po.OrderEntity;

/**
 * Created by hegx on 2017/4/26.
 */
public class OrderEntityDto extends OrderEntity {

    private String showStatus;
    private String message;

    public OrderEntityDto() {
    }

    public OrderEntityDto(String messge) {
        this.message = messge;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String getShowStatus() {
        return showStatus;
    }

    public void setShowStatus(String showStatus) {
        this.showStatus = showStatus;
    }
}
