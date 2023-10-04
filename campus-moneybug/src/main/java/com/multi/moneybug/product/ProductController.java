package com.multi.moneybug.product;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.multi.moneybug.member.MemberDTO;
import com.multi.moneybug.member.MemberService;
import com.multi.moneybug.product.OrderItemsDTO;

import lombok.Data;


@Controller
public class ProductController {

	@Autowired
	ProductService productService;

	@Autowired
	BasketService basketService;

	@Autowired
	MemberService memberService;

	// 쇼핑 목록 페이지
	@RequestMapping("product/shoplist")
	public String getProductList(ProductPageDTO productpageDTO, Model model) {
		int count = productService.count();
		int pages = (count / 6) + 1;
		
		productpageDTO.setStartEnd(productpageDTO.getPage());
		
		List<ProductDTO> productList = productService.getAllProducts(productpageDTO);
		
		model.addAttribute("productList", productList);
		model.addAttribute("count", count);
		model.addAttribute("pages", pages);
		
		return "/product/shoplist"; 
	}

	// 상품 상세페이지
	@RequestMapping("product/shopDetail")
	public String getProductDetail(@RequestParam("productId") int productId, Model model) {
		ProductDTO productDTO = productService.getProductById(productId);
		model.addAttribute("productDTO", productDTO);
		return "product/shopDetail";
	}

	// 쇼핑 관리자 페이지 (관리자 상품 리스트 ajax)
	@RequestMapping("product/manageList")
	public String showManageList(ProductDTO productDTO,Model model) {
		List<ProductDTO> productList = productService.list(productDTO);
		model.addAttribute("productList", productList);
		return "product/manageList";
	}

	// 쇼핑 관리자 페이지 (상품 추가폼으로 이동)
	@RequestMapping("product/manageInsert")
	public void goManageInsert() {
	}

	// 쇼핑 관리자 페이지(주문사항 list출력)
	@RequestMapping("product/manageOrder")
	public String goManageOrder(OrderDTO orderDTO,Model model) {
		List<OrderDTO> order = productService.orderlist(orderDTO);
		model.addAttribute("order", order);
		return "product/manageOrder";
	}

	// 쇼핑 관리자 페이지 (상품 DB에 추가)
	@RequestMapping("product/productInsert")
	public String productInsert(ProductDTO productDTO) {
		productService.insertNewProduct(productDTO);
		return "product/shopmanager";
	}

	
	@PostMapping("product/submitOrder")
	public String submitOrder(ProductDTO productDTO) {
		return "product/orderlist";
	}

	@PostMapping("product/orderlist")
	public String submitOrder(
		@RequestParam("totalAmount") String totalAmount,
		@RequestParam("selectedId") List<String> selectedIdsStr,
		@RequestParam("seletedSeq") List<String> selectedSeqsStr,// 변경된 변수명
		ProductDTO productDTO,
		MemberDTO memberDTO, 
		BasketDTO basketDTO, 
		Model model, 
		HttpSession session) {

			//int형으로 형변환
			List<Integer> selectedIds = new ArrayList<>();       
			for (String idStr : selectedIdsStr) {
				selectedIds.add(Integer.parseInt(idStr));
			}

			//int형으로 형변환
			List<Integer> selectedSeqs = new ArrayList<>();       
			for (String idStr : selectedSeqsStr) {
				selectedSeqs.add(Integer.parseInt(idStr));
			}

			List<BasketDTO> newBasketList = basketService.getOrderlists(selectedSeqs);        
			// selectedIds를 이용하여 필요한 처리 수행
			List<ProductDTO> newProductList = productService.getProductsByIds(selectedIds);     

			String userNickname = (String) session.getAttribute("userNickname");

			if (userNickname != null && !userNickname.isEmpty()) {
				memberDTO.setUserNickname(userNickname);
				MemberDTO member = memberService.selectByNickname(memberDTO.getUserNickname());
				memberDTO.setUserId(member.getUserId());
				memberDTO.setEmail(member.getEmail());
				memberDTO.setPoint(member.getPoint());
				memberDTO.setUserName(member.getUserName());
				memberDTO.setUserNickname(member.getUserNickname());
			} else {
				System.out.println("session없음");
			}

			model.addAttribute("newBasketList", newBasketList);
			model.addAttribute("newProductList", newProductList);
			model.addAttribute("totalAmount", totalAmount);
			model.addAttribute("selectedSeqs", selectedSeqs);
			model.addAttribute("selectedIds", selectedIds);
			model.addAttribute("memberDTO", memberDTO);
	
			return "product/orderlist"; 
		}

	@PostMapping("product/updateOrderStatus")
	public String updateOrderStatus(@ModelAttribute("orderId") String orderId,
		@ModelAttribute("newStatus") String newStatus,
			Model model, OrderDTO orderDTO) {

		// 주문 상태 업데이트 로직을 호출하여 주문 상태 업데이트 처리
		boolean updateResult = productService.updateOrderStatus(orderId, newStatus);

		// 업데이트 결과에 따라 메시지 설정
		String message;
		if (updateResult) {
			message = "주문 상태가 업데이트되었습니다.";
		} else {
			message = "주문 상태 업데이트에 실패했습니다.";
		}
		model.addAttribute("updateMessage", message);

		// 주문 목록을 다시 가져와 모델에 추가
		List<OrderDTO> order = productService.orderlist(orderDTO);
		model.addAttribute("order", order);

		return "product/manageOrder"; // 주문 관리 페이지로 리다이렉트
		}
		
	@Transactional
	@CrossOrigin
	@PostMapping(value = "product/paySuccess", produces = "application/json")
	@ResponseBody
	public int payOrder(@RequestBody List<OrderItemsDTO> OrderItemsList, HttpSession session) throws Exception {

		 OrderItemsDTO firstOrderItemsDTO = OrderItemsList.get(0);
		 OrderDTO orderDTO = new OrderDTO();
		    orderDTO.setUserId(firstOrderItemsDTO.getUserId());
		    orderDTO.setUserName(firstOrderItemsDTO.getUserName());
		    orderDTO.setAddress(firstOrderItemsDTO.getAddress());
		    orderDTO.setTel(firstOrderItemsDTO.getTel());
		    orderDTO.setUsedPoint(firstOrderItemsDTO.getUsedPoint());
		    orderDTO.setPayPrice(firstOrderItemsDTO.getPayPrice());
	        
	        String orderId = generateOrderId();
	        session.setAttribute("orderId", orderId);
	        orderDTO.setOrderId(orderId);
	    
			productService.payOrder(orderDTO);
		
			
		MemberDTO memberDTO = memberService.selectByNickname(firstOrderItemsDTO.getUserNickname());
		
		int newPoint = memberDTO.getPoint() - firstOrderItemsDTO.getUsedPoint();
		memberDTO.setPoint(newPoint);
		
		memberService.usePoint(memberDTO);
		
		for (OrderItemsDTO basketOrderItemsDTO : OrderItemsList) {
		    int seq = basketOrderItemsDTO.getSeq();
		    BasketDTO basketDTO = basketService.getBasketBySeq(seq);

		    if (basketDTO != null) {
		    	String basketorderId = (String) session.getAttribute("orderId");
		        basketDTO.setOrderId(basketorderId);
		        basketService.updateBasketOrderId(basketDTO);
		    }
		}
		
		String orderIdforDiscount = (String) session.getAttribute("orderId");
		int sellPriceSum = OrderItemsList.stream()
		        .mapToInt(item -> item.getProductSellprice() * item.getProductQuantity())
		        .sum();

	    for (OrderItemsDTO orderItemsDTO : OrderItemsList) {
	        int productId = orderItemsDTO.getProductId();
	        int productSellprice = orderItemsDTO.getProductSellprice();
	        int productQuantity = orderItemsDTO.getProductQuantity();

	        int indivDiscount = (int) (((double) (productSellprice * productQuantity) / sellPriceSum) * orderItemsDTO.getUsedPoint());

	        int productCalprice = (productSellprice * productQuantity) - indivDiscount;

	        OrderDiscountDTO orderDiscountDTO = new OrderDiscountDTO();
	        orderDiscountDTO.setOrderId(orderIdforDiscount);
	        orderDiscountDTO.setProductId(productId);
	        orderDiscountDTO.setProductSellprice(productSellprice);
	        orderDiscountDTO.setProductQuantity(productQuantity);
	        orderDiscountDTO.setIndivDiscount(indivDiscount);
	        orderDiscountDTO.setProductCalprice(productCalprice);

	        productService.insertOrderDiscount(orderDiscountDTO);
		}
		 
		session.removeAttribute("orderId");
		return 1;
	}
	
	private String generateOrderId() {
	    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyMMddHHmmss");
	    String currentDate = dateFormat.format(new Date());
	    Random random = new Random();
	    int randomNumber = random.nextInt(1000); // 0부터 999 중 랜덤 숫자 생성
	    return currentDate + String.format("%03d", randomNumber);
	}


	 
	@RequestMapping("product/manageDelete")
	public String goManageDelete(int productId) {
		productService.goManageDelete(productId);
		return "product/shopmanager";
	}
	
	// 쇼핑 관리자 페이지 (상품 수정폼으로 이동)
	@RequestMapping("product/manageUpdate")
	public String goManageUpdate(int productId, Model model) {
	    // productId를 이용하여 수정할 상품 정보를 가져오는 로직을 추가
	    ProductDTO product = productService.getProductById(productId);
	    // 가져온 상품 정보를 모델에 추가
	    model.addAttribute("product", product);

	    // 상품 수정폼으로 이동
	    return "product/manageUpdate";
	}
	
	@RequestMapping("product/updateProducts")
	public String updateById(ProductDTO productDTO) {
		productService.updateProduct(productDTO);
		return "product/shopmanager";
	}

	
}