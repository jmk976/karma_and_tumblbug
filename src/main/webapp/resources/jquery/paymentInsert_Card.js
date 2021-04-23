/**
 * 

 */

let cNumber = false;
let expiration = false;
let security = false;
let ownerBirth = false;
let check =  $("#agreeCheck").is(":checked");
let isDefault = $("#default").is(":checked");
$("#defaultMethod").val(isDefault);
$("#checkResult").hide();

cNumberCheck = function(){
	$(".cardNumberDiv input").each(function(index, item){
		cNumber = false;
		if($(item).val().length==4){
			cNumber = true;
		}
	})
	if(cNumber){
		$("#cardNumberResult").text("");
		$(".cardNumberDiv").attr("style",'border : solid 1px; height:50px;');
	}else{
		$("#cardNumberResult").text("카드 번호를 입력하셔야 합니다.");
		$(".cardNumberDiv").attr("style",'border : solid 1px red; height:50px;');
	}
}

/*
$(".cardNumber").blur(cNumberCheck);
*/


expirationCheck = function(){
	expiration = false
	let month = $("#expirationMonth").val();
	let year = $("#expirationYear").val();
	if(month=="월"){
		$("#expirationDateResult").text("월을 선택해 주세요.");
	} else if(year == "년"){
		$("#expirationDateResult").text("년도를 선택해 주세요.");
	} else{
		$("#expirationDateResult").text("");
		expiration=true;
	}
}


$("#expirationMonth, #expirationYear").blur(expirationCheck);

sNumberCheck = function(){
	security = false;
	let sNumber = $("#securityNumber").val();
	if(sNumber.length<2){
		$("#securityNumberResult").text("비밀번호 앞 두자리를 입력해 주세요.");
	} else{
		
		$("#securityNumberResult").text("");
		security = true;
	}
};

$("#securityNumber").blur(sNumberCheck);

birthCheck = function(){
	ownerBirth=false;
	let birth = $("#ownerBirth").val();
	if(birth.length<1){
		$("#ownerBirthResult").text("생년월일을 입력하셔야 합니다.");
	}else{
		$("#ownerBirthResult").text("");
		ownerBirth = true;
	}
	
};
$("#ownerBirth").blur(birthCheck);









$("#addBtn").click(function(){
	check =  $("#agreeCheck").is(":checked");
	cNumberCheck();
	expirationCheck();
	sNumberCheck();
	birthCheck();
	isDefault = $("#default").is(":checked");
	$("#defaultMethod").val(isDefault);
	
	if(!check){
		$("#checkResult").text("결제사 정보제공에 동의하셔야 합니다.");
		$("#checkResult").show();
	}else{
		$("#checkResult").hide();
	}
	
	if(cNumber && expiration && security && ownerBirth && check){
		
		$("#frm").submit();
		
		}
});