# 💰가계부 커뮤니티 웹사이트 MoneyBug

<img src ="https://github.com/julie-min/campus-moneybug/assets/130271406/641a9f13-b678-4932-8d20-eaccd04c2e75" >

# 🧭 [목차](#index) <a name = "index"></a>

- [개요](#introduction)
- [언어 / 기술](#tech)
- [역할](#roles)
- [결과물](#output)
- [ERD](#erd)
- [Diagram](#diagram)
- [Pain Point](#login)
- [Retrospective 회고](#retrospective)  
- ✅ [1st Refactoring : 리팩토링과 고민의 과정](#refactoring1)
- ✅ [2nd Refactoring : 결제주문 디테일 완성](#refactoring2)
- ✅ [3rd Refactoring : 스프링 시큐리티 도입](#refactoring3)

<br>

## 🚩Introduction <a name = "introduction"></a>
- MoneyBug는 소셜에서 유행하는 `거지방`에 영감을 받아 만들어진 커뮤니티형 가계부 웹사이트입니다.
- 유저의 수입과 지출을 입력하는 가계부 카테고리를 중심으로
- 저렴한 대량 할인제품과 이벤트 제품을 판매하여 수익성을 도모하였습니다.
- 서로의 지출 내용에 대해 함께 고민하고, 공유하며 게시글을 작성할 수 있습니다.
- 13회차 Java 부트캠프 **파이널 최우수상을 수상**하였습니다.
- 이 레포지토리는 `팀프로젝트` 완료 후 팀원 민지윤이 개인적으로 리팩토링한 내용이 담겨있습니다.

<br>

## 📆 Working Period </a>
#### `2023년 8월 1일 ~ 9월 7일 (약 1개월)`

<br>

## 🤖 Languages & Technologies <a name = "tech"></a>
<details>
<summary> 펼쳐서 확인 (👈 Click) </summary>

### `Back-end`
* Java 8
* Spring Framework 5.0.1, Spring MVC
* Spring Security 5
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
</details>

<br>

## 💁 Roles <a name = "roles"></a>
<details>
<summary> 펼쳐서 확인 (👈 Click) </summary>

* ##### `[민지윤] 소셜로그인, 쇼핑몰, 관리자페이지` 
  * 네이버, 구글 소셜로그인
  * 상품 쇼핑몰 게시판 CRUD
  * 쇼핑몰 관리자페이지
  * 상품 결제 (아임포트)
  * Frontend UI 구현
  
* ##### `[강태헌] 커뮤니티 게시판`
  * 커뮤니티 게시판 CRUD
  * 댓글, 대댓글 CRUD
  * 게시글 검색기능, 페이지네이션

* ##### `[김영웅] 가계부`
  * 월간 예산과 고정 지출 설정
  * 월단위 사용한 내역 형식 보고서 산출
  * 보고서 파일 다운로드, 이메일 전송


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
</details>


<br>

## 🔎 결과물 미리보기 <a name = "output"></a>

| **로그인, 마이페이지** |
| :---------------------: |
| <img src ="https://github.com/julie-min/campus-moneybug/assets/130271406/3452f143-3f87-4a02-889e-fc9920d9faaa" width="800"/> |
| **굿즈 쇼핑몰** |
| <img src ="https://github.com/julie-min/campus-moneybug/assets/130271406/6a7a8b5f-cb44-4413-8ded-e75827a9ed7f" width="800"/> |
| **커뮤니티 게시판** |
| <img src ="https://github.com/julie-min/campus-moneybug/assets/130271406/98747623-4b77-4bd4-a6e1-3c2d379a63ec" width="800"/> |
| **가계부** |
| <img src ="https://github.com/julie-min/campus-moneybug/assets/130271406/92cda725-8e3a-4147-8ccc-56f6e0e1d351" width="800"/> |
| **결제** |
| <img src ="https://github.com/julie-min/campus-moneybug/assets/130271406/4338a898-f916-46c2-8423-edf810794304" width="800"/> |
| **관리자 페이지** |
| <img src ="https://github.com/julie-min/campus-moneybug/assets/130271406/653dbf63-4a8b-4f22-9b1d-5f1f6c2578a7" width="800"/> |


<br>

## 📝 ERD <a name = "erd"></a>
<img src="https://github.com/julie-min/campus-moneybug/assets/130271406/66b0fb7d-e3e1-423c-aa0a-37576c16b1eb">

## 🧠 Main Feature Diagram <a name = "diagram"></a>
<img src="https://github.com/julie-min/campus-moneybug/assets/130271406/735b0dd8-a289-423c-a2ea-9425f85e0c3a">

## 🎯 Pain Point (Login) <a name = "login"></a>
## 소셜로그인 코드, 어떻게 더 간단하고 깔끔하게 만들까?
> 소셜로그인 루트 통일하여 다양한 API 받기

이번 프로젝트에서는 원래 단일 소셜로그인만 기획하였습니다. <br>
그러다 모든 로그인 루트를 통일하고 과정을 일원화하여 3가지 소셜로그인 API를 모두 사용하고,<br>
편리성을 도모할 수 있었습니다.<br>
네이버, 카카오의 경우 콜백페이지를 구성하여 데이터를 받았습니다. <br> 구글 로그인의 경우 JWT를 사용하여 파서하였습니다.<br>
<img src="https://github.com/julie-min/campus-moneybug/assets/130271406/0ac1deba-130d-449d-8904-624e875509bf" > <br>
각 API의 자체함수들은 서로 변수명도 다르고, 설령 같은 변수명이어도 의미가 달랐습니다.<br>
먼저 로그인에 필요한 각각의 변수를 찾아 제3의 객체로 치환하였고, <br>그 과정을 `AJAX`를 통해 동일한 메서드로 유도하였습니다.<br>
이러한 방식으로 무수히 많은 다양한 소셜로그인 API를 추가할 수 있을 것입니다.
별도의 자체 회원DB를 운영하지 않기 때문에 Social ID (JWT) 값을 세션으로 설정하였습니다. <br>
첫 로그인시, 중복을 검색하여 첫방문시 포인트 1,000원 + 필수 닉네임 설정으로 잡았습니다.

## 📒 Retrospective <a name = "retrospective"></a>
#### 회고, 그리고 팀프로젝트를 통해 얻은 것
팀원인 저 민지윤만의 개인적인 의견을 담았습니다.<br>

<details>
<summary> 펼쳐서 확인 (👈 Click) </summary>

#### 💡 세상에 완전히 똑같은 서비스는 없다
프로젝트를 진행하면서 하나의 서비스, 웹사이트가 만들어지기까지 수많은 사람들의 고민이 쌓여야한다는 것을 알게되었습니다.
그만큼 이 모든 팀원들의 아이디어가 모여 완전히 새로운 경우의 수가 발생하는 것이었습니다.
왜 개발자로 하여금 커뮤니케이션이 그토록 중요한 역량이라고 하는 것인지 알게되는 순간이었습니다.

기술도 기술이지만, 어떤 기술을 어떤 지점에서 어떻게 도입하고 커스터마이징하는 것인지는 순전히 개발자의 역량과 생각에 따른 것입니다. **이 세상에 완전히 똑같은 서비스는 없다고 생각합니다.** 그것을 이용하는 사람들과 그것을 의뢰하고 만든 사람들, 그리고 그 서비스의 시간적 차원이 완전히 동일할 수가 없기 때문입니다. 그렇기 때문에 개발자는 유연해야할 것입니다. **모든 상황과 조건에 능동적으로 대처하고 동시에 문제를 해결하는 능력**을 가져야겠다고 생각했습니다.

#### 💎 퀄리티 이전에 완성이 있다
가계부 커뮤니티는 사실 요즘 유행하는 '거지방' 커뮤니티에서 착안하여 만들어진 유머러스하고 재미난 서비스입니다. 그렇기 때문에 누구보다 유저의 참여가 `돈벌레친구들` 사이트를 더욱 '돈벌레'답게 만들어줍니다. 하지만 그 핵심 킬러컨텐츠가 될 수 있는 `살까?말까?` 게시판이 해당 게시판을 담당하는 멤버의 이탈로 인해 완성되지 못했습니다. 중도 이탈로 인해 최종 팀프로젝트에서 제외하게 되었고 이는 상당히 아쉬운 결과가 되었습니다. 

우리가 모두 하나의 프로젝트를 향해 달려가는 데에 있어서의 전제는 **마감을 지키고, 결과를 완성하는 것이 기본적인 목표가 되어야할 것입니다.** 프로젝트 이후 시간이 허락하는 한 해당 게시판을 제가 스스로 만들어봐야겠다는 계획을 가지고 있습니다.

#### 🤝 무엇보다 중요한 것은 상대방에 대한 존중
전반적인 UI와 CSS 관련하여 의견 충돌로 인해 프로젝트 중도에 전부 깃 충돌이 나는 등 여러 힘든 점이 있었습니다. 모두가 백엔드 개발자이다보니 자신의 기능 구현에만 관심이 큰 것은 알지만, 어찌되었든 결과를 만드는 데 있어서 CSS와 자바스크립트는 반드시 거쳐가야할 요소입니다. 한 사람의 희생만으로 사이트가 만들어지는 것이 아니기 때문에 팀워크가 더욱 필요한 부분이라고 생각합니다. 저는 대부분의 UI를 담당하였고, 이는 혼자 학습할 수 있는 기회로 생각하였습니다.

또한 자신이 처음 기획하지 않은 상대방의 코드를 임의로 수정하지 않고 반드시 그 개발자의 처음 의도와 목적을 이해해야할 것입니다. 코드 컨벤션을 지키는 것은 물론이며, 디테일한 주석을 통해 코드의 방향성이 흐트러지지 않아야 합니다. 상대방의 코드에 대한 존중이 반드시 필요한 작업임을 느꼈습니다.

</details>

---

<br>

# 🚀 1st Refactoring : 1차 리팩토링 <a name = "refactoring1"></a>
프로젝트가 끝난 후, 팀원 민지윤 개인의 리팩토링으로 프로젝트를 새롭게 빌드한 과정을 기술하였습니다.

## 1-1. 기존 장바구니, 결제방식의 한계 <br>

기존의 결제 과정에서는 주문한 상품들의 첫번째 상품을 대표상품으로 값을 저장하였습니다. <br> 이는 장바구니를 주문으로 불러들일 때 어레이 값으로 전송하는 값이 지정이 제대로 되지 않아 첫번째 값만 읽어들였기 때문입니다.<br>

상품을 세부선택하는 과정이 2차례 들어가다보니, 복잡한 리스트의 형태가 된 것이 문제였습니다. <br> 예컨대, 10개의 상품 중 5개를 장바구니에 넣고, 유저는 장바구니에서도 상품을 3개만 선택하여 주문할 수 있습니다. <br>

JSON 배열로 데이터를 전송하여 여러 개의 값이 동시에 넘어갈 수 있도록 하였습니다.

<img src="https://github.com/julie-min/campus-moneybug/assets/130271406/a201644d-a162-4926-8dce-8c5aa74918cf"> <br>

장바구니에서 상품선택은 물론 수량을 최종 확정할 수 있기 때문에, 필수적으로 리스트의 형태로 선택시마다 업데이트를 해주는 컨트롤러를 만들었습니다. 그리고 그 리스트를 주문서의 View에서 다시 분해하여 해당 요소들을 모두 나열한 뒤, 다시 결제에 필요한 요소들만 추려 JSON 배열로 서버에 전달하는 것입니다.

View에서 **제이쿼리를 통해 이중 어레이를 사용**하여 동일한 순서로 순환하며 리스트를 생성하여 서버로 전달하는 방식으로 만들었습니다.

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
첫 번째 리팩토링은 이렇게 `JSON배열 객체` 생성을 통한 데이터 구현에 목표를 두었습니다.

## 1-2. Trouble Shooting
리팩토링을 진행하며 발견한 사항은, 여러 사람이 코드리뷰와 오류정정에 동시에 참여하다보니 처음 코드 작성자의 의도대로 변수나 객체를 만들고 활용하지 않았다는 것입니다. <br>

페이지마다 중구난방으로 변수명이 오남용되고 있었고, 데이터가 받아와지지 않을 경우 또 다른 변수를 만들어내는 등 **비효율적인 코드상태**였습니다. 이를 하나로 통일하고 불필요한 변수는 삭제하는 등의 작업을 하였습니다.

네이밍 관련해서도 쉽게 알아볼 수 있도록 변수명을 `newProductList`, `usedBasketSeq`, `memberOrderInfo`등으로 재정립하여 유지보수의 편리성을 도모하였습니다.
```java
@PostMapping("product/orderlist")
public String submitOrder(
	@RequestParam("totalAmount") String totalAmount,
	@RequestParam("selectedId") List<String> selectedIdsStr,
	@RequestParam("seletedSeq") List<String> selectedSeqsStr,
		...(중략)... 
		Model model, 
		HttpSession session) {

			...(중략)...

			List<BasketDTO> newBasketList = basketService.getOrderlists(selectedSeqs);        
			List<ProductDTO> newProductList = productService.getProductsByIds(selectedIds);     

			String userNickname = (String) session.getAttribute("userNickname");

			...(중략)...

			model.addAttribute("newBasketList", newBasketList);
			model.addAttribute("newProductList", newProductList);
```

## 1-3. 결제시 주문내역 저장의 효율성 도모
결제 후에 고객의 주문내역을 저장하기 위해서, 결제 과정에서 총 3번의 절차를 만들었습니다. 기존에는 `memberDTO`, `basketDTO`,`productDTO` 모두를 주문서로 넘겨 그 데이터들을 `orderlist`로 만드는 것이었습니다. 하지만 View 자바스크립트를 통해 주문내역에 저장이 되어야하는 요소들만 추려 배열 형식의 JSON을 만들었고, 이를 `OrderListDTO` 라는 이름으로 넘겨주었습니다. <br>

request를 직접 핸들링 하지 않고, `JSON`으로 넘어온 정보들을 `Jackson` 라이브러리를 사용하여 DTO에 넣었습니다.

특히, 장바구니에서부터 넘어온 선택한 상품들은 복수개로써 이를 리스트로 표현하면 리스트 안에 배열이 n개 있는 상태입니다. 즉 `basketDTO`와 `productDTO`는 리스트로 오고, `memberDTO`는 1명의 유저 정보가 배열로 들어왔습니다. 여러개의 리스트가 섞이다보니 서버단에서 `memberOrderInfo`를 통해 새로운 배열을 만들어 사용자의 정보만을 추출하여 결제내역 저장에 이용하였습니다. 
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

---

# 🚀 2nd Refactoring : 2차 리팩토링 <a name = "refactoring2"></a>

## 2-1. 나의 고민 : 진짜 쇼핑몰은 이렇게 계산되지 않아!
두 번째 리팩토링은 전반적인 쇼핑몰 기능의 수정입니다. <br>그 이유는 기존의 구조가 현실적인 쇼핑몰 결제 방식을 따르지 않기 때문입니다.

아래 그림에서 보실 수 있듯, 기존 쇼핑몰 주문내역은 고객으로 하여금 의미없는 백엔드의 시퀀스 넘버를 보여주고 있고, 각 상품별 할인액을 도출하지 않고 있었습니다.

<img src="https://github.com/julie-min/campus-moneybug/assets/130271406/fcb2c5bc-5ca5-4acc-8d76-a702def76d48">

저는 이전 커리어로 네이버 D2C몰을(규모 월 10억이상) 직접 운영해봤고 ERP에 이커머스 로직을 도입한 경험도 있고, 카페24를 통해 브랜드몰을 제작한 경험도 있습니다. 이러한 경험으로 위 그림과 같이 여러개의 장바구니 번호와 할인금액이 1개의 주문목록에 나열되는 것은 이상한 방식이라고 생각이 들었습니다. 실제 쇼핑몰에서는 `할인`을 기준으로 기능을 세분화해야만 한다고 생각합니다.

예를들어 `최초주문금액`은 정가에서 `개별상품할인`금액을 빼고 배송비를 더한 금액이 됩니다. 이는 고객이 선택하지않아도 기본적으로 상품에 부과되는 기본 할인이며 `productDTO`에 포함될 것입니다.

다만, `적립금`이라는 것은 `포인트`,`마일리지`의 개념으로 판매장려금에 해당하여 부가가치세 과세표준의 대상이 되며, 따라서 주문목록에는 전체 상품의 할인으로 별도 계산되는 것처럼 보이지만 영수증상에는 개별 금액의 할인으로 들어가기 때문에 사업장별로 그 정률을 정해야합니다.

저는 대중적으로 익숙한 `네이버 쇼핑`의 표준방식을 따라 `전체할인` 역시 그 비율로 할인을 매기는 기능을 도입하였습니다.

이를 위해서는 전반적인 페이지와 컨트롤러별 코드 흐름이 변경되어야 합니다.

## 2-2. 단계별 할인 적용과 계산

<img src="https://github.com/julie-min/campus-moneybug/assets/130271406/ce4d21f8-8487-4804-a14f-a1dc37153615">

```
- 정가: PRODUCT_ORIPRICE
- 개별 상품할인: INDIV_DISCOUNT
- 최초 주문금액: PRODUCT_PRICE
- 적립금 사용: POINT_TOUSE
- 개별 할인환산: INDIV_DISCOUNT
- 영수 금액계산: PRODUCT_CALPRICE
```
이렇게 영수금액을 정하게 된 이유는,
주문 단계에서 각 상품의 할인 금액이 마일리지(포인트) 사용에 따라 `동적으로` 결정되기 때문입니다.

<img src="https://github.com/julie-min/campus-moneybug/assets/130271406/beec860c-040f-44e5-9f5d-17aa9ff9cfeb">


① 기본적으로 모든 상품은 판매자가 1차 할인하여 상품목록에 게시된다. (최초 주문 금액)<br>
② 고객이 n개의 상품을 장바구니에 담고싶은 것만 담으면 주문번호 null로 해서 장바구니가 생긴다. <br>이때 1차 선택이 이루어지며, 상품과 장바구니는 일대일 관계일 것이다.<br>
③ 장바구니에서 다시 n개의 상품들을 선택(2차 선택)해서 주문서로 이동 <br>
④ 주문서에서 자신의 포인트를 사용하여 2차 할인을 받게 된다.<br>
⑤ 전체 금액에서 포인트만큼 할인된 금액이 결제된다.<br>
⑥ 결제 완료시 장바구니 테이블에 해당 장바구니 번호들에 해당하는 데이터들에는 주문번호가 생기고 동시에 안보이게 처리된다.<br>
⑦ 주문테이블에는 주문번호가 생긴 데이터들의 행이 생긴다.<br>
⑧ 위에 적은 영수금액 계산 함수에 따라 각 상품금액의 실제 할인적용된 금액이 주문 히스토리에 저장된다.


## 2-3. DB 업데이트 및 Transaction 설정
결제와 동시에 모든 것들이 처리되는 구조상 이를 트랜잭션으로 설정하여<br>
주문 신규 쿼리 처리와, 마일리지 차감, 장바구니 처리, 영수금액 함수계산을 동시에 진행하였습니다.

<img src="https://github.com/julie-min/campus-moneybug/assets/130271406/e59ea06f-cbd2-40e3-b115-5f486a42eeeb"> <br>

<img src="https://github.com/julie-min/campus-moneybug/assets/130271406/e1147a64-ce70-44b7-88e8-a014c7824d7f"> <br>

신규 쿼리에 대한 부담과 번거로움을 줄이기 위해,<br>
개별 리스트로 `insert` 후 전체 계산 금액을 `insert`  하는 방식에서 벗어나<br>
리스트 객체를 생성하여 거기에 전체 계산 금액을 `add` 하고,<br>
개별 객체만 불러와 영수계산 함수로 환산한 뒤
다시 개별 배열에 `add`하여 한번에 `insert` 하는 방식으로 만들었습니다.

## 2-4. 최종 결제완료 페이지
<img src="https://github.com/julie-min/campus-moneybug/assets/130271406/41e5385f-ec11-4107-a58b-b428d33b9bea">


# 🚀 3rd Refactoring : 3차 리팩토링 <a name = "refactoring3"></a>

## 3-1. Spring Security 적용
관리자 페이지에 `Spring Security`를 도입하여 보안을 강화하였습니다.<br>
회원 소셜로그인 같은 경우는 웹페이지 자체 회원DB가 아예 없고, <br>DB내에 소셜 `token`외에는 보유하는 회원 개인정보가 없기 때문에 별도로 설정하지 않았습니다.<br>
다만 기존 관리자 로그인은 단순 비밀번호 일치여부를 자바스크립트로 확인하는 수준이었기에 <br> 다중 로그인이 가능하도록 DB를 마련하였습니다.
```javascript
@Service
public class ManagerService {
	
	@Autowired
	BCryptPasswordEncoder passwordEncoder;

	public boolean managerLogin(ManagerDTO managerDTO) {
		String getPw = managerDAO.managerLogin(managerDTO);
		if(passwordEncoder.matches(managerDTO.getManagerPassword(), getPw)) {
			return true;
		}
		return false;
	}
```
관리자에 시큐리티를 도입하기 위해 별도의 table을 만들었고, MVC를 새로 생성하였습니다.<br>
`BCryptPasswordEncoder`를 통해 패스워드 `salt`암호화 하였습니다.<br>
여러 명의 관리자를 동시에 등록하고 로그인할 수 있는 페이지를 만들어 운영하게 됩니다.<br>

## 3-2. 최종 관리자 페이지
<img src="https://github.com/julie-min/campus-moneybug/assets/130271406/57315e69-a615-40cc-b302-e6621a461911"><br>

