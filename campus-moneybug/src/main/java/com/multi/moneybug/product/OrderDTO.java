package com.multi.moneybug.product;

import java.sql.Date;

import lombok.Data;

@Data
public class OrderDTO {
	private int orderSeq;
	private String orderId;
	private int userId;
	private Date orderAt;
	private String userName;
	private String address;
	private String tel;
	private int usedPoint;
	private int payPrice;
	private String payTool;
	private String orderStatus;
}