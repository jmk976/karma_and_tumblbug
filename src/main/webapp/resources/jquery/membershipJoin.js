/**
 * 

$("#joinCheck").click(function(){
	let id=$("#id").val();
	$.get("joinCheck?id="+id,function(result){
		result = result.trim();
		let str = "사용가능";
		if(result=="불가"){
			str = "사용 불가능";
		}
		$("#idCheckResult").text(str);
	})
	
})
 */

let idCheck=false;
let pwCheck=false;
let nameCheck=false;
let birthCheck=false;
let phoneCheck=false;
let addressCheck=false;



$("#id").blur(function(){
	let id=$("#id").val();
	if(id!=""){
		$.get("joinCheck?id="+id,function(result){
			result = result.trim();
			let str = "사용 불가능";
			let color = "r";
			if(result=="가능"){
				str = "사용가능";
				color="b";
				idCheck=true;
			}
			$("#idCheckResult").text(str);
			$("#idCheckResult").attr("class",color);
		})
	}else{	
		$("#idCheckResult").text("필수 정보 입니다.");
		$("#idCheckResult").attr("class","r");
	}
});

$("#id").focus(function(){
	$("#idCheckResult").text("");
	idCheck=false;
})

$("#pw").blur(function(){
	let pw = $("#pw").val();
	if(pw.length<1){
		$("#pwResult").text("필수 정보 입니다.");
	}else if(pw.length<8){
		$("#pwResult").text("비밀번호는 8자 이상입니다.");
	}else{
	}
})
$("#pw").focus(function(){
	$("#pwResult").text("");
	$("#pw").val("");
	$("#pw2").val("");
	pwCheck=false;
})

$("#pw2").blur(function(){
	let pw1=$("#pw").val();
	let pw2=$("#pw2").val();
	if(pw1.length<8){
		
	}else if(pw2.length<1){
		$("#pw2Result").text("필수 정보 입니다.");
	}else if(pw1 != pw2){
		$("#pw2Result").text("비밀번호 확인");
	}else{
		$("#pw2Result").text("");
		pwCheck=true;
	}
})
$("#pw2").focus(function(){
	$("#pw2Result").text("");
	$("#pw2").val("");
	pwCheck=false;
})



$("#name").blur(function(){
	let name = $("#name").val();
	if(name==""){
		$("#nameResult").text("필수 정보 입니다.");
	}else{
		$("#nameResult").text("");
		nameCheck=true;
	}
})

$("#name").focus(function(){
	nameCheck=false;
})



$("#year").blur(function(){
	let year = $("#year").val();
	let month = $("#month").val();
	let day = $("#day").val();
	if(year.length<4){
		$("#birthResult").text("태어난 년도 4자리를 정확하게 입력하세요");
	} else if(month=="월"){
		$("#birthResult").text("태어난 월을 선택하세요");
	} else if(day ==""){
		$("#birthResult").text("태어난 일(날짜) 2자리를 정확하게 입력하세요");
	}else{
		let lastDay=0;
		switch($("#month").val()){
			case "4월":
			case "6월":
			case "9월":
			case "11월":
				lastDay=30;
				break;
			case "2월":
				if($("#year").val()%4==0){
					lastDay=29;
				}else{
					lastDay=28;
				}
				break;
			default:
				lastDay=31;
		}
		if(year<1922 || year>2021){
			$("#birthResult").text("년도 재확인");
		} else if(day < 1 || day > lastDay ){
			$("#birthResult").text("날짜 재확인");
		}else{
			
		$("#birthResult").text("");
		birthCheck=true;
		}
	}
	
})

$("#month").blur(function(){
	let year = $("#year").val();
	let month = $("#month").val();
	let day = $("#day").val();
	if(year.length<4){
		$("#birthResult").text("태어난 년도 4자리를 정확하게 입력하세요");
	} else if(month=="월"){
		$("#birthResult").text("태어난 월을 선택하세요");
	} else if(day ==""){
		$("#birthResult").text("태어난 일(날짜) 2자리를 정확하게 입력하세요");
	}else{
		let lastDay=0;
		switch($("#month").val()){
			case "4월":
			case "6월":
			case "9월":
			case "11월":
				lastDay=30;
				break;
			case "2월":
				if($("#year").val()%4==0){
					lastDay=29;
				}else{
					lastDay=28;
				}
				break;
			default:
				lastDay=31;
		}
		if(year<1922){
			$("#birthResult").text("년도 재확인");
		} else if(day < 1 || day > lastDay ){
			$("#birthResult").text("날짜 재확인");
		}else{
			
		$("#birthResult").text("");
		birthCheck=true;
		}
	}
	
})

$("#day").blur(function(){
	let year = $("#year").val();
	let month = $("#month").val();
	let day = $("#day").val();
	if(year.length<4){
		$("#birthResult").text("태어난 년도 4자리를 정확하게 입력하세요");
	} else if(month=="월"){
		$("#birthResult").text("태어난 월을 선택하세요");
	} else if(day ==""){
		$("#birthResult").text("태어난 일(날짜) 2자리를 정확하게 입력하세요");
	}else{
		let lastDay=0;
		switch($("#month").val()){
			case "4월":
			case "6월":
			case "9월":
			case "11월":
				lastDay=30;
				break;
			case "2월":
				if($("#year").val()%4==0){
					lastDay=29;
				}else{
					lastDay=28;
				}
				break;
			default:
				lastDay=31;
		}
		if(year<1922){
			$("#birthResult").text("년도 재확인");
		} else if(day < 1 || day > lastDay ){
			$("#birthResult").text("날짜 재확인");
		}else{
			
		$("#birthResult").text("");
		birthCheck=true;
		}
	}
	
})
$("#year").focus(function(){
	birthCheck=false;
});
$("#month").focus(function(){
	birthCheck=false;
});
$("#day").focus(function(){
	birthCheck=false;
});

$("#phone").blur(function(){
	let phone = $("#phone").val();
	if(phone==""){
		$("#phoneResult").text("필수 정보 입니다.");
	}else{
		$("#phoneResult").text("");
		phoneCheck=true;
	}
})

$("#phone").focus(function(){
	phoneCheck=false;
})

$("#address").blur(function(){
	let address = $("#address").val();
	if(address==""){
		$("#addressResult").text("필수 정보 입니다.");
	}else{
		$("#addressResult").text("");
		addressCheck=true;
	}
})
$("#address").focus(function(){
	addressCheck=false;
})

$("#btn").click(function(){
	alert("id : "+idCheck);
	alert("pw : "+pwCheck);
	alert("name : "+nameCheck);
	alert("birth : "+birthCheck);
	alert("phone : "+phoneCheck);
	alert("address : "+addressCheck);
})

