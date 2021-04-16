/**
 * 
 */


	$("#cal").click(function(){
	
			let d = new Date()
			let monthOfYear = d.getMonth()
			   sponMonth = Number($("#sponMonth").val());
				if(sponMonth<1){
				  sponMonth =1;
		          $("#sponMonth").val(1);
				  alert("납부개월을 1개월 이하로 설정할 수 없습니다.");
				
				}
		  d.setMonth(monthOfYear + sponMonth-1);
		 let lastPay = getDateStr(d)
	
		  let totalMoney = sponMonth*$("#money").val()
		
		$("#totalMoney").val(totalMoney);
		

		$("#lastPay").val(lastPay);
		  
	});

	


 $("#btnRegular").click(function(){
		//alert("ver1")
		
		let result = true;
	    let cal =true;
        let agree =true;
		
		$(".myCheck").each(function(s1, s2){
			console.log(s1);
				console.log($(s2).val());
				console.log($(this).val());
				
				if($(this).val()==""){
					result = false;
				}
		
		});
		
	

/* 납부 개월 검사 */

/* 최종 후원일 , 총 금액 검사 */

let d = new Date()
let monthOfYear = d.getMonth()
sponMonth = Number($("#sponMonth").val());
	if(sponMonth<1){
				  sponMonth =1;
		          $("#sponMonth").val(1);
				  alert("납부개월을 1개월 이하로 설정할 수 없습니다.");
				
				}
	 d.setMonth(monthOfYear + sponMonth-1);
 let lastPay = getDateStr(d)
	
 let totalMoney = sponMonth*$("#money").val()

	


	 if(lastPay != $("#lastPay").val() || totalMoney != $("#totalMoney").val()){
		alert("계산하기를 다시 눌러주세요.");
		cal= false;
	   };

    


/*   동의 체크 확인  */
     let agreeCheck =$("#agreeCheck").prop("checked");
		if(!agreeCheck){
			alert("동의 체크해주셔야 진행하실 수 있습니다.");
			agree=false;
			}
		

	
		
if(result){
	if(agree){
		if(cal){
			$("#frmReg").submit()
				}
			 }
	}else {
			alert("이름과 연락처를 작성했는지 확인해주세요.")
	
	}
		
});


window.onload = function() {
		today = new Date();
		console.log("today.toISOString() >>>" + today.toISOString());
		today = today.toISOString().slice(0, 10);
		console.log("today >>>> " + today);
		bir = document.getElementById("firstPay");
		bir.value = today;
	}
	
	
	
	/* 날짜 객체 받아서 문자열로 리턴하는 함수 */
	function getDateStr(myDate){
		return (myDate.getFullYear() + '-' + (myDate.getMonth() + 1) + '-' + myDate.getDate())
	}
	
	/* 오늘 날짜를 문자열로 반환 */
	function today() {
	  var d = new Date()
	  return getDateStr(d)
	}


	/* 오늘로부터 개월후 날짜 반환 */
	function lastMonth() {
	  var d = new Date()

	  var monthOfYear = d.getMonth()

	  let sponMonth = $("#sponMonth").val();
	  sponMonth = Number(sponMonth);
	
	  d.setMonth(monthOfYear + sponMonth);
	  return getDateStr(d)
	}
	
	
	