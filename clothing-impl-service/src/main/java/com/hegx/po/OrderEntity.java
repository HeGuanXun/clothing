package com.hegx.po;

import com.hegx.base.dto.BaseDto;

import java.util.Date;

/**
 * Created by hegx on 2017/4/24.
 */
public class OrderEntity extends BaseDto {

    private Long orderId;
    private Integer fashionId;
    private Integer codeId;
    private Integer userId;

    private String customName;
    private String className;
    private String phoneNumber;
    private String qq;
    private String color;
    private String otherFashion;
    private String money;
    private String earnest;
    private String print;
    private Date getOrderDate;
    private Date deliveryDate;
    private String remarks;
    private String way;
    private String person;
    private String relationPhone;
    private String address;
    private Date createDate;
    private String endReason;
    private Date endDate;
    private String belong;
    private Short status;
    private String orderNumber;

    public Long getOrderId() {
        return orderId;
    }

    public void setOrderId(Long orderId) {
        this.orderId = orderId;
    }

    public Integer getFashionId() {
        return fashionId;
    }

    public void setFashionId(Integer fashionId) {
        this.fashionId = fashionId;
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

    public Date getDeliveryDate() {
        return deliveryDate;
    }

    public void setDeliveryDate(Date deliveryDate) {
        this.deliveryDate = deliveryDate;
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }

    public String getWay() {
        return way;
    }

    public void setWay(String way) {
        this.way = way;
    }

    public String getPerson() {
        return person;
    }

    public void setPerson(String person) {
        this.person = person;
    }

    public String getRelationPhone() {
        return relationPhone;
    }

    public void setRelationPhone(String relationPhone) {
        this.relationPhone = relationPhone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
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

    public String getBelong() {
        return belong;
    }

    public void setBelong(String belong) {
        this.belong = belong;
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
}
