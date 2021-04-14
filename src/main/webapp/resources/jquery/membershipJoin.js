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
$("#id").blur(function(){
	let id=$("#id").val();
	if(id!=""){
		$.get("joinCheck?id="+id,function(result){
			result = result.trim();
			let str = "사용가능";
			if(result=="불가"){
				str = "사용 불가능";
			}
			$("#idCheckResult").text(str);
		})
	
	}else{	
		$("#idCheckResult").text("ID 입력 요망");
	
	}
});

$("#id").focus(function(){
	$("#idCheckResult").text("");
})

$("#pw").blur(function(){
	let pw = $("#pw").val();
	if(pw.length<8){
		$("#pwResult").text("비밀번호는 8자 이상입니다.");
	}
})
$("#pw").focus(function(){
	$("#pwResult").text("");
	$("#pw").val("");
})

$("#pw2").blur(function(){
	let pw1=$("#pw").val();
	let pw2=$("#pw2").val();
		if(pw1=="" || pw1 != pw2){
			$("#pw2Result").text("비밀번호 확인");
		}else{
			$("#pw2Result").text("");
		}
})

$("#name").blur(function(){
	let name = $("#name").val();
	if(name==""){
		$("#nameResult").text("필수 입력 사항입니다.");
	}else{
		$("#nameResult").text("");
	}
})
/*
$("#pw2").focus(function(){
	$("#pw2Result").text("");
})
*/