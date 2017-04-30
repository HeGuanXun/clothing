package com.hegx.po;

import com.hegx.base.dto.BaseDto;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

/**
 * Created by hegx on 2017/4/24.
 */
public class OrderEntity extends BaseDto {

    private Long orderId;
    private Integer codeId;
    private Integer userId;
    private Integer deliveryId;
    private Integer belongId;
    private String fashionName;
    private String customName;
    private String className;
    private String phoneNumber;
    private String qq;
    private String color;
    private String otherFashion;//其他款式
    private String money;//成交金额
    private String earnest;//定金
    private String print;//印制说明
    private Date getOrderDate;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date sendDate;
    private String remarks;//备注
    private Date createDate;
    private String endReason;
    private Date endDate;
    private Short status;
    private String orderNumber;

    public Long getOrderId() {
        return orderId;
    }

    public void setOrderId(Long orderId) {
        this.orderId = orderId;
    }

    public String getFashionName() {
        return fashionName;
    }

    public void setFashionName(String fashionName) {
        this.fashionName = fashionName;
    }

    public Integer getCodeId() {
        return codeId;
    }

    public void setCodeId(Integer codeId) {
        this.codeId = codeId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getCustomName() {
        return customName;
    }

    public void setCustomName(String customName) {
        this.customName = customName;
    }

    public String getClassName() {
        return className;
    }

    public void setClassName(String className) {
        this.className = className;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getQq() {
        return qq;
    }

    public void setQq(String qq) {
        this.qq = qq;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getOtherFashion() {
        return otherFashion;
    }

    public void setOtherFashion(String otherFashion) {
        this.otherFashion = otherFashion;
    }

    public String getMoney() {
        return money;
    }

    public void setMoney(String money) {
        this.money = money;
    }

    public String getEarnest() {
        return earnest;
    }

    public void setEarnest(String earnest) {
        this.earnest = earnest;
    }

    public String getPrint() {
        return print;
    }

    public void setPrint(String print) {
        this.print = print;
    }

    public Date getGetOrderDate() {
        return getOrderDate;
    }

    public void setGetOrderDate(Date getOrderDate) {
        this.getOrderDate = getOrderDate;
    }

    public Date getSendDate() {
        return sendDate;
    }

    public void setSendDate(Date sendDate) {
        this.sendDate = sendDate;
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }


    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public String getEndReason() {
        return endReason;
    }

    public void setEndReason(String endReason) {
        this.endReason = endReason;
    }

    public Date getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }

    public Short getStatus() {
        return status;
    }

    public void setStatus(Short status) {
        this.status = status;
    }

    public String getOrderNumber() {
        return orderNumber;
    }

    public void setOrderNumber(String orderNumber) {
        this.orderNumber = orderNumber;
    }

    public Integer getDeliveryId() {
        return deliveryId;
    }

    public void setDeliveryId(Integer deliveryId) {
        this.deliveryId = deliveryId;
    }

    public Integer getBelongId() {
        return belongId;
    }

    public void setBelongId(Integer belongId) {
        this.belongId = belongId;
    }
}
