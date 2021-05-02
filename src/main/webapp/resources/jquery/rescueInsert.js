/**
 * 
 */

window.onload = function() {
		today = new Date();
		console.log("today.toISOString() >>>" + today.toISOString());
		today = today.toISOString().slice(0, 10);
		console.log("today >>>> " + today);
		bir = document.getElementById("resDate");
		bir.value = today;
	}
	
$("#btn").click(function(){
		
			let r = $("#returnDate").val();
	        let a = $("#adoptDate").val();
			let result =true;
			let result2=false;
			let result3=false;
			let result4=false;
			let result5=false;
			
			if(typeof r == "undefined" || r == "" || r == null){
				
				$("#returnDate").val("2000-01-01");
				result3 = true
				}else{
				result3 = true
					}

		   if(typeof a == "undefined" || a == "" || a == null){
				
				$("#adoptDate").val("2000-01-01");
				result2 = true
				}else{
				result2 = true
					}
			let z= $("#zoneSn").val();
			if(typeof z == "undefined" || z == "" || z == null){
				
				$("#zoneSn").val(" ");
				result4 = true
				}else{
				result4 = true
					}
			let f= $("#feature").val();
			if(typeof f == "undefined" || f == "" || f == null){
				
				$("#feature").val(" ");
				result5 = true
				}else{
				result5 = true
					}
					
/* 유효성검사 */
let p = $("#province").val()
    if(p == "undefined" || p == "" || p == null){
				result = false;
				alert("시/도 를 선택하시오.");
			}
 let c = $("#city").val()
    if(c == "undefined" || c == "" || c == null){
				result = false;
				alert("도시를 선택하시오.");
			}
let s = $("#sn").val()
    if(s == "undefined" || s == "" || s == null){
				result = false;
				alert("시리얼넘버를 입력하시오.");
			}
let ss = $("#status").val()
    if(ss == "undefined" || ss == "" || ss == null){
				result = false;
				alert("진행상황을 선택하시오.");
			}
let sp = $("#species").val()
    if(sp == "undefined" || sp == "" || sp == null){
				result = false;
				alert("축종을 선택하시오.");
				
			}
			
let k = $("#kind").val()
    if(k == "undefined" || k == "" || k == null){
				result = false;
				alert("종류를 선택하시오.");
			}
			

				

		  if(result==true & result2==true & result3==true & result4==true & result5==true){
			$("#frm").submit()
		}else {
		
			console.log($("#returnDate").val());
			console.log($("#adoptDate").val());
			console.log(result);
			console.log(result2);
			console.log(result3);

		alert("필수요소를 입력하세요 ");
	    }	
		
});
	



	