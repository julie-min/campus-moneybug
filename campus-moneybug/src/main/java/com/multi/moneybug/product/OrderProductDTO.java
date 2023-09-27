package com.multi.moneybug.product;

import lombok.Data;

@Data
public class OrderProductDTO {
    private int productId;
    private String productName;

    public OrderProductDTO(int productId, String productName) {
        this.productId = productId;
        this.productName = productName;
    }
}
