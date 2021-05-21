/**
 * 
 */

$("#btn").click(function(){
		

			let result =true;
			let result2=true;
			let result3=true;
		
			
let sn = $("#sn").val()
    if(typeof sn == "undefined" || sn == "" || sn == null){
				result = false;
				alert("시리얼넘버를 입력하시오.");
			}
let sp = $("#species").val()
    if(typeof sp == "undefined" || sp == "" || sp == null){
				result = false;
				alert("축종을 선택하시오.");
				
			}
			
let k = $("#kind").val()
    if(typeof k == "undefined" || k == "" || k == null){
				result = false;
				alert("종류를 선택하시오.");
			}
			
if($("input[name=famAgree]:radio:checked").length <1){
	alert("가족 동의를 체크하시오.")
	result2 = false;
}

if($("input[name=adoptEx]:radio:checked").length <1){
	alert("반려동물 입양경험을 체크하시오.")
	result2 = false;
}
if($("input[name=haveAnimal]:radio:checked").length <1){
	alert("반려동물 소유여부를 체크하시오.")
	result2 = false;
}
if($("input[name=desexAgree]:radio:checked").length <1){
	alert("중성화수술 동의를 체크하시오.")
	result2 = false;
}
if($("input[name=housingType]:radio:checked").length <1){
	alert("주거형태를 체크하시오.")
	result2 = false;
}

				

		  if(result==true & result2==true & result3==true ){
			$("#frm").submit()
		}else {
	
			console.log(result);
			console.log(result2);
			console.log(result3);

		alert("필수요소를 입력하세요 ");
	    }	

});