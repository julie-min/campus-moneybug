package com.multi.moneybug.product;

import lombok.Data;

@Data
public class BasketDTO {
	private int seq;
	private int userId;
	private int productId;
	private int productQuantity;
	private String orderId;
}
