/**
 * 
 */

$("#btnGeneral").click(function(){

		
		let result = true;
		let agree = true;
		
		$(".myCheck").each(function(s1, s2){
			console.log(s1);
				console.log($(s2).val());
				console.log($(this).val());
				
				if($(this).val()==""){
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
			$("#frm").submit()
			}
	}else {
			alert("이름과 연락처를 작성했는지 확인해주세요.")
			
		
	}
});
	
	

	
	

	
	
