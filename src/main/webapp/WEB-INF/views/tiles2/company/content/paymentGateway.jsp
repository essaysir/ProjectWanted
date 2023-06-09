<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.2.js"></script>

<script type="text/javascript">

$(document).ready(function() {
	//	여기 링크를 꼭 참고하세용 http://www.iamport.kr/getstarted
   var IMP = window.IMP;     // 생략가능
   IMP.init('imp33515664');  // 중요!!  아임포트에 가입시 부여받은 "가맹점 식별코드". 
	
   
   // 결제요청하기
   IMP.request_pay({
       pg : 'html5_inicis', // 결제방식 PG사 구분
       pay_method : 'card',	// 결제 수단
       merchant_uid : 'merchant_' + new Date().getTime(), // 가맹점에서 생성/관리하는 고유 주문번호
       name : '${requestScope.name}',//'결제테스트(코인충전|주문명)',	 
       amount : 100, //100,	  // '${coinmoney}'  결제 금액 number 타입. 필수항목. 
       buyer_email : '',  // 구매자 email
       buyer_name : '',	  // 구매자 이름 
       buyer_tel : '',    // 구매자 전화번호 (필수항목)
       buyer_addr : '',  
       buyer_postcode : '',
       m_redirect_url : ''  // 휴대폰 사용시 결제 완료 후 action : 컨트롤러로 보내서 자체 db에 입력시킬것!
   }, function(rsp) {

		if ( rsp.success ) { // PC 데스크탑용
			
			var poe = ${requestScope.payorextend}
			
			if(poe == 0){
				const frm = document.updatePaymentFrm;
				frm.action = "updatePostPayment";
				frm.method = "post";
				frm.submit();
				
				alert("결제가 완료되었습니다.");
			} else {
				const frm = document.updatePaymentFrm;
				frm.action = "updateExtendPost";
				frm.method = "post";
				frm.submit();
				
				alert("결제가 완료되었습니다.");
				
			}
			
        } else {
            location.href="<%= request.getContextPath()%>/wanted/company/jobPost";
            alert("결제에 실패하였습니다.");
       }

   }); // end of IMP.request_pay()----------------------------

}); // end of $(document).ready()-----------------------------

</script>
</head>	
<body>
<form name="updatePaymentFrm">
	<fieldset>		
        <input type="hidden" name="post_code" value="${requestScope.post_code}"/>
    </fieldset>
</form>
</body>
</html>