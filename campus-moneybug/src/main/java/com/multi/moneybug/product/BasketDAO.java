package com.multi.moneybug.product;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.multi.moneybug.member.MemberDTO;

@Repository
public class BasketDAO {
    @Autowired
    SqlSessionTemplate my;

    public List<BasketDTO> getAllBaskets(int userId) {
        return my.selectList("basket.basket_List", userId);
    }

    public void addToBasket(BasketDTO basket) {
        my.insert("basket.addToBasket", basket);
    }
    
    public boolean checkProductInBasket(int userId, int productId) {
        Map<Object, Object> parameters = new HashMap<>();
        parameters.put("userId", userId);
        parameters.put("productId", productId);

        int count = my.selectOne("basket.checkProductInBasket", parameters);
        return count > 0;
    }
    
    public void updateProductInBasket(BasketDTO basket) {
        my.update("basket.updateProductInBasket", basket);
    }

	public List<BasketDTO> getOrderlists(List<Integer> selectedSeqs) {
		return my.selectList("basket.order_List", selectedSeqs);
	}

	public void updateProductCount(int userId, int productId, int seq, int newCount) {
		Map<String, Object> parameters = new HashMap<>();
        parameters.put("userId", userId);
        parameters.put("productId", productId);
        parameters.put("seq", seq);
        parameters.put("newCount", newCount);
        
        my.update("basket.updateBasket",parameters);
    }

	public void deleteProductFromBasket(List<Integer> usedBasketSeq) {
	    my.delete("basket.deleteProductFromBasket", usedBasketSeq);
	}
	
	public void deleteProductFromBasket(BasketDTO basketDTO) {
		my.delete("basket.deleteProductFromBasket", basketDTO);
	}

	public List<Integer> getSeqList() {
		return my.selectList("basket.seqList");
	}
	
	public BasketDTO getBasketBySeq(int seq) {
		return my.selectOne("basket.getBasketBySeq", seq);
	}

	public void updateBasketOrderId(BasketDTO basketDTO) {
		my.update("basket.updateBasketOrderId",basketDTO);
	}

}