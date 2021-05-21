/**
 * 
 */
 
/*   payment 확인  */ 
let pc = $("#paymentCheck").attr("title");


if(typeof pc == undefined || pc == null || pc == "[]"){
   alert("후원폼 작성 전 결제수단을 등록해 주시기 바랍니다. 결제수단으로 이동합니다");
   location.href="../payment/paymentList";
   };


$("#btnGeneral").click(function(){

		
		let result = true;
		let agree = true;
		let payCheck= true;
		
		
		let pay =$("#payment").val();
		
		if(typeof pay==undefined||pay=="" ||pay==null||pay==0){
			payCheck=false;
			
			alert("결제수단을 선택해 주십시오");
		} 
		
		$(".myCheck").each(function(s1, s2){
			console.log(s1);
				console.log($(s2).val());
				console.log($(this).val());
				
				if($(this).val()==""){
				alert("이름과 연락처를 작성했는지 확인해주세요.")
					result = false;
				}
		});
	 
       /*   동의 체크 확인  */
     let agreeCheck =$("#agreeCheck").prop("checked");
		if(!agreeCheck){
			alert("동의 체크해주셔야 진행하실 수 있습니다.");
			agree=false;
		}
		
		if(result){
				if(agree){
					if(payCheck){
				$("#frm").submit()
				     }
				}
		}else {
					alert("후원에 성공하지 못했습니다. 입력조건을 확인해주세요.")
		}
});
	
	
$("#money").blur(function(){
	 let money = $("#money").val();
	 $("#totalMoney").val(money);
});


$("#document").ready(function(){
 $("#lastPay").val(new Date().toISOString().substring(0, 10))
});
	

	
	

	
	
