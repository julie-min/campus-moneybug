<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<style>
.modal-table-container {
    overflow-x: auto;
}

.modal-table {
    display: flex;
    flex-direction: column;
    border-collapse: collapse;
}

.modal-table td,
.modal-table th {
    flex: 1;
    border: 1px solid #000;
    padding: 8px;
    text-align: center;
}

.emphasize {
    background-color: #ffe4dc; 
    font-weight: bold;
}

.productname {
    background-color: #fff5e1; 
    font-weight: bold;
}

.money {
    text-align: right; 
}
</style>

<body>
    <div class="form-group">
        <label for="orderDiscountList">주문 상세내역을 확인하세요.</label>
        <div class="modal-table-container">
            <table class="modal-table">
                <tbody>
                    <c:forEach items="${orderDiscountList}" var="orderDiscount" varStatus="loop">
                        <c:if test="${loop.first}">
                            <tr>
                                <td class="emphasize">주문번호</td>
                                <td class="emphasize">${orderDiscount.orderId}</td>
                            </tr>
                        </c:if>
                        <tr>
                            <td class="productname">제품명</td>
							<td class="productname"><c:forEach items="${orderProductList}" var="orderProduct">
								<c:if test="${orderProduct.productId == orderDiscount.productId}"> ${orderProduct.productName}</c:if>
								</c:forEach>
							</td>
						</tr>
                        <tr>
                            <td>최초 주문금액</td>
                            <td class="money">
                            <fmt:formatNumber type="number" value="${orderDiscount.productSellprice}" pattern="#,###"/>원
                        </tr>
                        <tr>
                            <td>주문 수량</td>
                            <td>${orderDiscount.productQuantity}개</td>
                        </tr>
                        <tr>
                            <td>상품별 할인액</td>
                            <td class="money">-
                            <fmt:formatNumber type="number" value="${orderDiscount.indivDiscount}" pattern="#,###"/>원
                        </tr>
                        <tr>
                            <td>상품별 할인적용 후 영수금액</td>
                            <td class="money">
                            <fmt:formatNumber type="number" value="${orderDiscount.productCalprice}" pattern="#,###"/>원
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</body>
