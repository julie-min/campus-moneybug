package com.multi.moneybug.product;

import lombok.Data;

@Data
public class OrderDiscountDTO {
	private int seq;
	private String orderId;
	private int productId;
	private int productSellprice;
	private int productQuantity;
	private int indivDiscount;
	private int productCalprice;
}
