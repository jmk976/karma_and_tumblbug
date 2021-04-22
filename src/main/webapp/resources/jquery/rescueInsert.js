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
			let result =false;
			let result2=false;
			
			if(typeof r == "undefined" || r == "" || r == null){
				
				$("#returnDate").val("2000-01-01");
				result = true
				}else{
				result = true
					}

		   if(typeof a == "undefined" || a == "" || a == null){
				
				$("#adoptDate").val("2000-01-01");
				result2 = true
				}else{
				result2 = true
					}
				

		  if(result==true & result2==true){
			$("#frm").submit()
		}			
	
	        
		  
	});

	