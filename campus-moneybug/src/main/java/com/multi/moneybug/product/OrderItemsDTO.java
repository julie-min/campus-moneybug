package com.multi.moneybug.product;

import java.util.ArrayList;
import java.util.List;

import lombok.Data;

@Data
public class OrderItemsDTO {

		private String address;
		private int payPrice;
		private int productId;
		private String productName;
		private int productOriprice;
		private int productSellprice;
		private int productQuantity;
		private int seq;
		private String tel;
		private int usedPoint;
		private int userId;
		private String userName;
		private String userNickname;
		
}
