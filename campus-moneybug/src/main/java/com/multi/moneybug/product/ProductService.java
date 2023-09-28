package com.multi.moneybug.product;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductService {

    @Autowired
    ProductDAO productDAO; // ProductDAO를 주입

    public List<ProductDTO> getAllProducts(ProductPageDTO productpageDTO) {
        return productDAO.getAllProducts(productpageDTO);
    }
    
    public ProductDTO getProductById(int productId) {
    	ProductDTO productDTO = productDAO.getProductById(productId);
    	return productDTO;
    }
    
	public List<ProductDTO> getProductsByIds(List<Integer> productIds) {
		List<ProductDTO> productByIdList = productDAO.getProductsByIds(productIds);
		return productByIdList;
	}
    
    public List<ProductDTO> list(ProductDTO productDTO) {
    	return productDAO.list(productDTO);
    }

	public void insertNewProduct(ProductDTO productDTO) {
		productDAO.insert(productDTO);
	}

	public int count() {
		return productDAO.count();
	}

	public List<OrderDTO> orderlist(OrderDTO orderListDTO) {
		return productDAO.orderlist(orderListDTO);
	}

	public boolean updateOrderStatus(String orderId, String newStatus) {
	    int rowsAffected = productDAO.updateOrderStatus(orderId, newStatus);
	    return rowsAffected > 0; // 업데이트된 행이 있을 경우 true 반환
	}

	public List<OrderDTO> myOrderList(int userId) {
		return productDAO.myOrderList(userId);
	}

	public int payOrder(OrderDTO orderDTO) {
		return productDAO.payOrder(orderDTO);
		
	}

	public int goManageDelete(int productId) {
		return productDAO.delete(productId);
	}

	public int updateProduct(ProductDTO productDTO) {
		return productDAO.updateProducts(productDTO);
	}

	public void insertOrderDiscount(OrderDiscountDTO orderDiscountDTO) {
		productDAO.insertOrderDiscount(orderDiscountDTO);
	}

	public List<OrderDiscountDTO> getOrderDiscountByOrderId(String orderId) {
		return productDAO.getOrderDiscountByOrderId(orderId);
	}

	public String getProductNameByProductId(int productId) {
		return productDAO.getProductNameByProductId(productId);
	}
	
}