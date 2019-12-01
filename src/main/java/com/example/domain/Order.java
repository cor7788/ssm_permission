package com.example.domain;

import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.List;

public class Order implements Serializable {
    private String id;
    private String orderNumber;
    private Date orderTime;
    private String orderTimeStr;
    private Integer peopleCount;
    private String orderDesc;
    private String payType;
    private String payTypeStr;
    private String orderStatus;
    private String orderStatusStr;
    private Product product;
    private Member member;
    private List<Traveller> travellers;

    public String getOrderTimeStr() {
        if (orderTime != null) {
            return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(orderTime);
        }
        return "";
    }

    // 支付方式(0-支付宝，1-微信，2-其他)
    public String getPayTypeStr() {
        switch (payType) {
            case "0":
                payTypeStr = "支付宝";
                break;
            case "1":
                payTypeStr = "微信";
                break;
            case "2":
                payTypeStr = "其他";
                break;
            default:
                payTypeStr = "";
        }
        return payTypeStr;
    }

    // 订单状态(0-未支付 1-已支付)
    public String getOrderStatusStr() {
        switch (orderStatus) {
            case "0":
                orderStatusStr = "未支付";
                break;
            case "1":
                orderStatusStr = "已支付";
            default:
                orderStatusStr = "";
        }
        return orderStatusStr;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getOrderNumber() {
        return orderNumber;
    }

    public void setOrderNumber(String orderNumber) {
        this.orderNumber = orderNumber;
    }

    public Date getOrderTime() {
        return orderTime;
    }

    public void setOrderTime(Date orderTime) {
        this.orderTime = orderTime;
    }

    public Integer getPeopleCount() {
        return peopleCount;
    }

    public void setPeopleCount(Integer peopleCount) {
        this.peopleCount = peopleCount;
    }

    public String getOrderDesc() {
        return orderDesc;
    }

    public void setOrderDesc(String orderDesc) {
        this.orderDesc = orderDesc;
    }

    public String getPayType() {
        return payType;
    }

    public void setPayType(String payType) {
        this.payType = payType;
    }

    public String getOrderStatus() {
        return orderStatus;
    }

    public void setOrderStatus(String orderStatus) {
        this.orderStatus = orderStatus;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public Member getMember() {
        return member;
    }

    public void setMember(Member member) {
        this.member = member;
    }

    public List<Traveller> getTravellers() {
        return travellers;
    }

    public void setTravellers(List<Traveller> travellers) {
        this.travellers = travellers;
    }

    @Override
    public String toString() {
        return "Order{" +
                "id='" + id + '\'' +
                ", orderNumber='" + orderNumber + '\'' +
                ", orderTime=" + orderTime +
                ", peopleCount=" + peopleCount +
                ", orderDesc='" + orderDesc + '\'' +
                ", payType='" + payType + '\'' +
                ", orderStatus='" + orderStatus + '\'' +
                ", product=" + product +
                ", member=" + member +
                ", travellers=" + travellers +
                '}';
    }
}
