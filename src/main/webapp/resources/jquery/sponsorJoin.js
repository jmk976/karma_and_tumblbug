/**
 * 
 */

			let d = new Date()
			let monthOfYear = d.getMonth()
			let sponMonth = $("#sponMonth").val();
		  sponMonth = Number(sponMonth);
		  d.setMonth(monthOfYear + sponMonth-1);
		 let lastPay = getDateStr(d)
	
	let totalMoney = $("#sponMonth").val()*$("#money").val()
		
	
	$("#cal").click(function(){
			let d = new Date()
			let monthOfYear = d.getMonth()
			let sponMonth = $("#sponMonth").val();
		  sponMonth = Number(sponMonth);
		  d.setMonth(monthOfYear + sponMonth-1);
		 let lastPay = getDateStr(d)
		let totalMoney = $("#sponMonth").val()*$("#money").val()
		
		$("#totalMoney").val(totalMoney);
		
		 
	
	      
		$("#lastPay").val(lastPay);
		  
      
		
	});


 $("#btnRegular").click(function(){
		alert("ver9")
		
		let result = true;
		
		$(".myCheck").each(function(s1, s2){
			console.log(s1);
				console.log($(s2).val());
				console.log($(this).val());
				
				if($(this).val()==""){
					result = false;
				}
		
		});
	 alert(lastPay);
     alert($("#lastPay").val());

/* 납부 개월 검사 */
if($("#sponMonth").val()<1){
	$("#sponMonth").val(1);
}

alert($("#sponMonth").val());

/* 최종 후원일 , 총 금액 검사 */

	
alert('정기후원들어');
	 if(lastPay != $("#lastPay").val()){
		alert("계산하기를 다시 눌러주세요.");
		result= false;
	   }
    if(totalMoney != $("#totalMoney").val()){
		alert("계산하기를 다시 눌러주세요.");
		result= false;
	   }



	
		
	if(result){
		
		$("#frm").submit();
		}else {
			alert("필수요소를 입력하세요 ");
			
		}

		
	});
	
	
	
	$("#btnGeneral").click(function(){
		alert("ver6")
		
		let result = true;
		
		$(".myCheck").each(function(s1, s2){
			console.log(s1);
				console.log($(s2).val());
				console.log($(this).val());
				
				if($(this).val()==""){
					result = false;
				}
		
		});
	 alert(lastPay);
     alert($("#lastPay").val());


		
	if(result){
		
		$("#frm").submit();
		}else {
			alert("필수요소를 입력하세요 ");
			
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
	