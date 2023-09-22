# 💰가계부 커뮤니티 MoneyBug

<img src ="https://github.com/julie-min/campus-moneybug/assets/130271406/3078e41f-5336-48df-baa3-dda11291666d" >

# 🧭 [목차](#index) <a name = "index"></a>

- [개요](#introduction)
- [제작기간](#period)
- [언어 / 기술](#tech)
- [역할](#roles)
- [ERD](#erd)
- [Diagram](#diagram)
- [Trouble Shooting](#troubleshooting)
- [Retrospective](#retrospective)  
- [1st Refactoring](#refactoring1)
- [2nd Refactoring](#refactoring2)

<br>

## 🚩Introduction <a name = "introduction"></a>
- MoneyBug는 소셜에서 유행하는 `거지방`에 영감을 받아 만들어진 커뮤니티형 가계부 웹사이트입니다.
- 유저의 수입과 지출을 입력하는 가계부 카테고리를 중심으로
- 저렴한 대량 할인제품과 이벤트 제품을 판매하여 수익성을 도모하였습니다.
- 서로의 지출 내용에 대해 함께 고민하고, 공유하며 게시글을 작성할 수 있습니다.
- 13회차 Java 부트캠프 **파이널 최우수상을 수상**하였습니다.
- 이 레포지토리는 `팀프로젝트` 완료 후 팀원 민지윤이 개인적으로 리팩토링한 내용도 함께 담겨있습니다.

<br>

## 📆 Working Period <a name = "period"></a>
#### `2023년 7월 24일 ~ 9월 7일 (약 1개월)`

<br>

## 🤖 Languages & Technologies <a name = "tech"></a>
### `Back-end`
* Java 8
* Spring Framework 5.0.1, Spring MVC
* Maven
* Mybatis
* Eclipse, Visual Studio Code, DBeaver

### `Front-end`
* HTML
* CSS
* JavaScript
* JQuery 3.7.0
* BootStrap 4.5.3

### `Deploy`
* AWS EC2, S3, RDS
* Tomcat 9.0
* MySQL 8.0

### `Collaboration`
* Git, Sourcetree 
* Slack 
* Notion
* Loop

### `External API`
* Naver, Kakao, Google Social Login
* OpenAI
* Clova OCR
* I'mport
* Google chart API


<br>

## 💁 Roles <a name = "roles"></a>
* ##### `[강태헌] 커뮤니티 게시판`
  * 커뮤니티 게시판 CRUD
  * 댓글, 대댓글 CRUD
  * 게시글 검색기능, 페이지네이션

* ##### `[김영웅] 가계부`
  * 월간 예산과 고정 지출 설정
  * 월단위 사용한 내역 형식 보고서 산출
  * 보고서 파일 다운로드, 이메일 전송

* ##### `[민지윤] 소셜로그인, 쇼핑몰`
  * 네이버, 구글 소셜로그인
  * 상품 쇼핑몰 게시판 CRUD
  * 쇼핑몰 관리자페이지
  * 상품 결제 (아임포트)
  * Frontend UI 구현

* ##### `[신현범] 가계부`
  * 영수증 OCR
  * 실시간 채팅
  * 챗봇, 링크 미리보기

* ##### `[이서영] 소셜로그인, 쇼핑몰`
  * 카카오 소셜로그인, 마이페이지
  * 쇼핑몰 장바구니
  * 상품관리자 배송관리

* ##### `[장승진] 가계부`
  * 월간 예산과 고정 지출 설정
  * 월단위 사용한 내역 형식 보고서 산출
  * 보고서 파일 다운로드, 이메일 전송


<br>

|                                                              **로그인, 마이페이지**                                                               |                                                                  **굿즈 쇼핑몰**                                                                  |
| :-----------------------------------------------------------------------------------------------------------------------------------------------: | :-----------------------------------------------------------------------------------------------------------------------------------------------: |
| <img src ="https://github.com/julie-min/campus-moneybug/assets/130271406/febfa80b-ce89-419b-b4ca-eec0de55a192" width="440" height="260" /> | <img src ="https://github.com/julie-min/campus-moneybug/assets/130271406/9aa6ca15-cead-45a0-8f3d-9c113517f1eb" width="440" height="260" /> |
|                                                                **커뮤니티 게시판**                                                                |                                                                    **가계부**                                                                     |
| <img src ="https://github.com/julie-min/campus-moneybug/assets/130271406/6d6b9eb2-30be-41d9-b99a-9e27b4469724" width="440" height="260" /> | <img src ="https://github.com/julie-min/campus-moneybug/assets/130271406/6b419a3d-bc46-4ee1-87c0-fd6693a0f07d" width="440" height="260" /> |
|                                                                     **결제**                                                                      |                                                                 **관리자 페이지**                                                                 |
| <img src ="" width="440" height="260" /> | <img src ="" width="440" height="260" /> |


<br>


## 📝 ERD <a name = "erd"></a>
<img src="https://github.com/julie-min/campus-moneybug/assets/130271406/2c65db61-5752-4398-8575-2bbefedbb095">

## 🧠 Main Feature Diagram <a name = "diagram"></a>
<img src="https://github.com/julie-min/campus-moneybug/assets/130271406/b5f84af3-732f-4747-95f7-4796476bd261">
<img src="https://github.com/julie-min/campus-moneybug/assets/130271406/bdcafc2b-21be-41ae-8840-4bf7d0b9895d">

## 🚀 Trouble Shooting <a name = "troubleshooting"></a>
#### 소셜로그인 루트 통일하기


## 📒 Retrospective <a name = "retrospective"></a>
#### 회고, 그리고 팀프로젝트를 통해 얻은 것
비개발적인 측면에서 팀원인 저 민지윤만의 개인적인 의견을 담았습니다.<br>

#### 💡 알게된 것
프로젝트를 진행하면서 하나의 서비스, 웹사이트가 만들어지기까지 수많은 사람들의 고민이 쌓여야한다는 것을 알게되었습니다.
그만큼 이 모든 팀원들의 아이디어를 협력하는 방향으로 이끌어가는 PM의 자리가 대단한 것이고, 왜 개발자로 하여금 커뮤니케이션이 그토록 중요한 역량이라고 하는 것인지도 알게되었습니다.

기술도 기술이지만, 어떤 기술을 어떤 지점에서 어떻게 도입하고 커스터마이징하는 것인지는 순전히 개발자의 역량과 생각에 따른 것입니다. **이 세상에 완전히 똑같은 서비스는 없다고 생각합니다.** 그것을 이용하는 사람들과 그것을 의뢰하고 만든 사람들, 그리고 그 서비스의 시간적 차원이 완전히 동일할 수가 없기 때문입니다. 그렇기 때문에 개발자는 유연해야할 것입니다. 모든 상황과 조건에 능동적으로 대처하고 동시에 문제를 해결하는 능력을 가져야겠다고 생각했습니다.

#### 💎 개선할 점
가계부 커뮤니티는 사실 요즘 유행하는 '거지방' 커뮤니티에서 착안하여 만들어진 유머러스하고 재미난 서비스입니다. 그렇기 때문에 누구보다 유저의 참여가 `돈벌레친구들` 사이트를 더욱 '돈벌레'답게 만들어줍니다. 하지만 그 핵심 킬러컨텐츠가 될 수 있는 `살까?말까?` 게시판이 해당 게시판을 담당하는 멤버의 이탈로 인해 완성되지 못했습니다. 중도 이탈로 인해 최종 팀프로젝트에서 제외하게 되었고 이는 상당히 아쉬운 결과가 되었습니다. 

우리가 모두 하나의 프로젝트를 향해 달려가는 데에 있어서의 전제는 **마감을 지키고, 결과를 완성하는 것이 기본적인 목표가 되어야할 것입니다.** 프로젝트 이후 시간이 허락하는 한 해당 게시판을 제가 스스로 만들어봐야겠다는 계획을 가지고 있습니다.

또한 CSS 관련하여 의견 충돌로 인해 프로젝트 중도에 전부 깃 충돌이 나는 등 여러 힘든 점이 있었습니다. 모두가 백엔드 개발자이다보니 자신의 기능 구현에만 관심이 큰 것은 알지만, 어찌되었든 결과를 만드는 데 있어서 CSS와 자바스크립트는 반드시 거쳐가야할 요소입니다. 한 사람의 희생만으로 사이트가 만들어지는 것이 아니기 때문에 팀워크가 더욱 필요한 부분이라고 생각합니다. 저는 대부분의 UI를 담당하며 아쉬운 부분이 있었지만 혼자 학습할 수 있는 기회로 생각하였습니다.

## 🔧 1st Refactoring <a name = "refactoring1"></a>
프로젝트가 끝난 후, 저만의 리팩토링으로 프로젝트를 새롭게 빌드한 과정을 기술하였습니다.

### 1. 기존 장바구니, 결제방식의 한계 <br>
기존의 결제 과정에서는 주문한 상품들의 첫번째 상품을 대표상품으로 값을 저장하였습니다. 이는 장바구니를 주문으로 불러들일 때 어레이 값으로 전송하는 값이 지정이 제대로 되지 않아 첫번째 값만 읽어들였기 때문입니다.<br>
   
그림넣기
상품목록 -> (상품선택) 장바구니 -> (상품선택) 주문서 -> 결제

선택하는 과정이 2차례 들어가다보니, 복잡한 리스트의 형태가 된 것이 문제였습니다. 예컨대, 10개의 상품 중 5개를 장바구니에 넣고, 유저는 장바구니에서도 상품을 3개만 선택하여 주문할 수 있습니다. <br>

장바구니에서 상품선택은 물론 수량을 최종 확정할 수 있기 때문에, 필수적으로 리스트의 형태로 선택시마다 업데이트를 해주는 컨트롤러를 만들었습니다. 그리고 그 리스트를 주문서의 View에서 다시 분해하여 해당 요소들을 모두 나열한 뒤, 다시 결제에 필요한 요소들만 추려 JSON 배열로 서버에 전달하는 것입니다.

View에서 제이쿼리를 통해 이중 어레이를 사용하여 동일한 순서로 순환하며 리스트를 생성하여 서버로 전달하는 방식으로 만들었습니다.

```javascript
$(function() {
	$('#payOrder').click(function() {
		let IMP = window.IMP; // 생략 가능
		    IMP.init('iamport'); // 'iamport' 대신 제공된 "제휴사 식별코드" 사용
		        
		    let orderItems = [
		         <c:forEach items="${newBasketList}" var="newBasket" varStatus="status">
		         <c:forEach items="${newProductList}" var="product">
		        	    <c:if test="${newBasket.productId eq product.productId}">
		        	         {
		        	        "basketSeq": "${newBasket.seq}",
		        	        "userId": "${newBasket.userId}",
		        	        "userName": "${memberDTO.userName}",
		        	        "address": $('#address-1').val() + " " + $('#address-2').val(),
		        	        "tel": $('#tel').val(),
		        	        "productPrice": "${product.productPrice}",
		        	    	"discountPrice": $('#discountPrice').val(),
		        	        "point": $('#point').val(),
		        	        "totalPrice": $('#totalPrice').val()
		        	         }<c:if test="${!status.last}">,</c:if>
		        	        </c:if>
		        	    </c:forEach>
		         </c:forEach>
		        ];

```
첫 번째 리팩토링은 이렇게 JSON 배열 주고받기를 통한 데이터 구현에 목표를 두었습니다.

### 2. 마주친 문제
리팩토링을 진행하며 발견한 사항은, 여러 사람이 코드리뷰와 오류정정에 참여하다보니 처음 코드 작성자의 의도대로 변수나 객체를 만들고 활용하지 않았다는 것입니다. <br>

캡쳐넣기

페이지마다 중구난방으로 변수명이 오남용되고 있었고, 데이터가 받아와지지 않을 경우 또 다른 변수를 만들어내는 등 비효율적인 코드상태였습니다. 이를 하나로 통일하고 불필요한 변수는 삭제하는 등의 작업을 하였습니다.

네이밍 관련해서도 쉽게 알아볼 수 있도록 변수명을 `newProductList`, `usedBasketSeq`, `memberOrderInfo`등으로 재정립하여 유지보수의 편리성을 도모하였습니다.
```java
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
```

### 3. 결제시 주문내역 저장의 효율성 도모
결제 후에 고객의 주문내역을 저장하기 위해서, 결제 과정에서 총 3번의 절차를 만들었습니다. 기존에는 `memberDTO`, `basketDTO`,`productDTO` 모두를 주문서로 넘겨 그 데이터들을 `orderlist`로 만드는 것이었습니다. 하지만 View 자바스크립트를 통해 주문내역에 저장이 되어야하는 요소들만 추려 배열 형식의 JSON을 만들었고, 이를 `OrderListDTO` 라는 이름으로 넘겨주었습니다. <br>

다만, 장바구니에서부터 넘어온 선택한 상품들은 복수개로써 이를 리스트로 표현하면 리스트 안에 배열이 n개 있는 상태입니다. 즉 `basketDTO`와 `productDTO`는 리스트로 오고, `memberDTO`는 1명의 유저 정보가 배열로 들어왔습니다. 여러개의 리스트가 섞이다보니 서버단에서 `memberOrderInfo`를 통해 새로운 배열을 만들어 사용자의 정보만을 추출하여 결제내역 저장에 이용하였습니다. 
```java
	@PostMapping("product/paySuccess") 
	@ResponseBody
	public int payOrder(@RequestBody List<OrderListDTO> orderItems, HttpSession session){ 
		
		/* 결제내역 중 사용자에 관한 정보를 추출 */
		List<String> memberOrderInfo = new ArrayList<>();
		if (!orderItems.isEmpty()) {
		        OrderListDTO userInfo = orderItems.get(0);

		        String infos = String.format(
		            "userId=%s, userName=%s, address=%s, tel=%s, discountPrice=%s, totalPrice=%s",
		            userInfo.getUserId(), userInfo.getUserName(), userInfo.getAddress(),
		            userInfo.getTel(), userInfo.getDiscountPrice(), userInfo.getTotalPrice()
		        );

		        memberOrderInfo.add(infos);
		    }	
		int result = productService.payOrder(orderItems);
```

## 🔥 2nd Refactoring <a name = "refactoring2"></a>
프로젝트가 끝난 후, 저만의 리팩토링으로 프로젝트를 새롭게 빌드한 과정을 기술하였습니다.

### 4. 실제 쇼핑몰과 같은 방식의 일대다 관계 구현
두 번째 리팩토링은 전반적인 쇼핑몰 기능의 수정입니다. 그 이유는 위와 같은 구조가 현실적인 쇼핑몰 결제 방식을 따르지 않기 때문입니다.

그림넣기

저는 네이버 D2C몰을 직접 운영하고 ERP에 로직을 도입한 경험이 있고, 카페24를 통해 브랜드몰을 제작한 경험도 있습니다. 이러한 경험으로 위 그림과 같이 여러개의 장바구니 번호와 할인금액이 1개의 주문목록에 나열되는 것은 이상한 방식이라고 생각이 들었습니다. 실제 쇼핑몰에서는 `할인`을 기준으로 기능을 세분화해야만 한다고 생각합니다.

예를들어 `최초주문금액`은 정가에서 `개별상품할인`금액을 빼고 배송비를 더한 금액이 됩니다. 이는 고객이 선택하지않아도 기본적으로 상품에 부과되는 기본 할인이며 `productDTO`에 포함될 것입니다.

다만, `적립금`이라는 것은 `포인트`,`마일리지`의 개념으로 판매장려금에 해당하여 부가가치세 과세표준의 대상이 되며, 따라서 주문목록에는 전체 상품의 할인으로 별도 계산되는 것처럼 보이지만 영수증상에는 개별 금액의 할인으로 들어가기 때문에 사업장별로 그 정률을 정해야합니다.

저는 대중적으로 익숙한 `네이버 쇼핑`의 표준방식을 따라 `전체할인` 역시 그 비율로 할인을 매기는 기능을 도입하였습니다.

- 정가: PRODUCT_ORIPRICE
- 개별 상품할인: INDIV_DISCOUNT
- 최초 주문금액: PRODUCT_PRICE
- 적립금 사용: POINT_TOUSE
- 개별 할인환산: INDIV_DISCOUNT
- 영수 금액계산: PRODUCT_CALPRICE

이를 도입하기 위해서 기존의 장바구니, 주문 테이블의 개선시켜 DB차원에서의 업데이트를 해야만 했습니다.

주문 단계에서 각 상품의 할인 금액이 마일리지 사용에 따라 동적으로 결정되는 상황이군요. 이 경우에는 주문과 상품 간의 다대다 관계가

1. 여러상품들 중 장바구니에 담고싶은것만 담으면 주문번호 null로 해서 장바구니 행들이 생긴다. 
2. 장바구니에서 상품들을 선택해서 주문을 하면 장바구니 테이블에 해당 장바구니 번호들에 해당하는 데이터들에는 주문번호가 생기고 동시에 안보이게 처리된다.
3. 주문테이블에는 주문번호가 생긴 데이터들의 행이 생기는데 그 행들에는 장바구니 번호는 기재되지 않는다. 주문테이블에 장바구니에 관련한 정보는 없다.
4. 주문테이블에는 1번 결제한 결제내역과 관련해서 전체 결제 금액이 있다. 
5. 즉, 주문테이블에는 각각 상품의 금액이 있는게 아니라 전체 결제 금액만이 있다.

### 5. DB 업데이트



### 6. 스프링 시큐리티 적용

### 7. 로그인 이미지 통일

<br>

