/**
 * 

 */



let bankNameCheck = false;
let accountCheck = false;
let ownerNameCheck = false;
let ownerBirth = false;
let check =  $("#agreeCheck").is(":checked");
let isDefault = $("#default").is(":checked");
let isBusiness = $("#business").is(":checked");
$("#businessResult").val(isBusiness);
$("#defaultMethod").val(isDefault);
$("#checkResult").hide();

bName = function(){
	bankNameCheck = false;
	let bankName=$("#bankName").val();
	if(bankName=="은행명"){
		$("#bankNameResult").text("은행명을 선택하셔야 합니다.");
	}else{
		$("#bankNameResult").text("");
		bankNameCheck = true;
	}
	
}

$("#bankName").blur(bName);

account = function(){
	accountCheck = false;
	let bAccount = $("#bankAccount").val();
	if(bAccount.length<1){
		$("#bankAccountResult").text("계좌번호를 입력하셔야 합니다.");
	}else{
		$("#bankAccountResult").text("");
		accountCheck = true;
	}
}

$("#bankAccount").blur(account);


oName = function(){
	ownerNameCheck = false;
	let ownerName=$("#ownerName").val();
	if(ownerName.length<1){
		$("#ownerNameResult").text("예금주명을 입력하셔야 합니다.");
	}else{
		$("#ownerNameResult").text("");
		ownerNameCheck=true;
	}
	
}

$("#ownerName").blur(oName);

oBirth = function(){
	ownerBirth=false;
	let birth = $("#ownerBirth").val();
	if(birth.length<1){
		$("#ownerBirthResult").text("생년월일을 입력하셔야 합니다.");
	}else{
		$("#ownerBirthResult").text("");
		ownerBirth = true;
	}
	
};
$("#ownerBirth").blur(oBirth);



$("#addBtn").click(function(){
	check =  $("#agreeCheck").is(":checked");
	bName();
	account();
	oName();
	oBirth();
	
	isBusiness = $("#business").is(":checked");
	$("#businessResult").val(isBusiness);
	isDefault = $("#default").is(":checked");
	$("#defaultMethod").val(isDefault);
	
	if(!check){
		$("#checkResult").text("결제사 정보제공에 동의하셔야 합니다.");
		$("#checkResult").show();
	}else{
		$("#checkResult").hide();
	}
	
	if(bankNameCheck && accountCheck && ownerName && ownerBirth && check){
		$("#frm").submit();
		}
});