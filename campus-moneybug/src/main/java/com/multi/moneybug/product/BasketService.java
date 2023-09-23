package com.multi.moneybug.product;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.multi.moneybug.member.MemberDTO;

@Service
public class BasketService {
    @Autowired
    BasketDAO basketDAO;

    public List<BasketDTO> getAllBaskets(int userId) {
        List<BasketDTO> basketList = basketDAO.getAllBaskets(userId);
        return basketList;
    }

    public void addToBasket(int userId, int productId, int count) {
        BasketDTO basket = new BasketDTO();
        basket.setUserId(userId);
        basket.setProductId(productId);
        basket.setProductQuantity(count);

        // 상품을 장바구니에 추가하는 DAO 메서드 호출
        basketDAO.addToBasket(basket);
    }

    public boolean checkProductInBasket(int userId, int productId) {
        return basketDAO.checkProductInBasket(userId, productId);
    }

    public void updateProductInBasket(int userId, int productId, int count) {
        BasketDTO basket = new BasketDTO();
        basket.setUserId(userId);
        basket.setProductId(productId);
        basket.setProductQuantity(count);

        basketDAO.updateProductInBasket(basket);
    }
    
    public List<BasketDTO> getOrderlists(List<Integer> selectedSeqs) {
        List<BasketDTO> basketList = basketDAO.getOrderlists(selectedSeqs);
        return basketList;
    }

    public void updateProductCount(int userId, int productId, int seq, int newCount) {
        basketDAO.updateProductCount(userId,productId,seq,newCount);
    }

    public void deleteProductFromBasket(List<Integer> usedBasketSeq) {
        basketDAO.deleteProductFromBasket(usedBasketSeq);
    }
    
    public void deleteProductFromBasket(BasketDTO basketDTO) {
    	basketDAO.deleteProductFromBasket(basketDTO);
    }

    public List<Integer> getSeqList() {
        return basketDAO.getSeqList();
    }
    
    public BasketDTO getBasketBySeq(int seq) {
		return basketDAO.getBasketBySeq(seq);
	}
    
    public void updateBasketOrderId(BasketDTO basketDTO) {
		basketDAO.updateBasketOrderId(basketDTO);
	}
}

