/**
 * 
 */
let titleCheck=false;
let summaryCheck=false;
let categoryCheck=false;
let makerNameCheck=false;
let makerSummaryCheck=false;
let makerLocationCheck=false;
let targetAmountCheck=false;
let openDateCheck=false;
let closeDateCheck=false;
let projectStoryCheck=false;
let phoneCheck=false;
let bankAccountCheck=false;
let finalCheck=false;
let num=$("#addSearchTag").attr("title");
let bank = $("#bankName").attr("title");
let sNum = bank.indexOf(",")
let bank1 = bank.substring(0,sNum);
let bank2 = bank.substring(sNum+1);

titleCheckFunc=function(){
	let tVal=$("#title").val();
	titleCheck=false;
	if(tVal.length>0){
		titleCheck=true;
	}
}

summaryCheckFunc=function(){
	let sVal=$("#summary").val();
	summaryCheck=false;
	if(sVal.length>0){
		summaryCheck=true;
	}
}

categoryCheckFunc=function(){
	let cVal=$("#category").val();
	categoryCheck=false;
	if(cVal!='default'){
		categoryCheck=true;
	}
}

makerNameCheckFunc=function(){
	let mnVal=$("#makerName").val();
	makerNameCheck=false;
	if(mnVal.length>0){
		makerNameCheck=true;
	}
}

makerSummaryCheckFunc=function(){
	makerSummaryCheck=false;
	if ($('#makerSummary').summernote('isEmpty')) {
		makerSummaryCheck=false;
	}else{
		makerSummaryCheck=true;
	}	
}

makerLocationCheckFunc=function(){
	let mlVal=$("#makerLocation").val();
	makerLocationCheck=false;
	if(mlVal!='활동지역'){
		makerLocationCheck=true;
	}
}

targetAmountCheckFunc=function(){
	let taVal=$("#targetAmount").val();
	targetAmountCheck=false;
	if(taVal>0){
		targetAmountCheck=true;
	}
}

openDateCheckFunc=function(){
	let odVal=$("#openDate").val();
	openDateCheck=false;
	if(odVal.length>0){
		openDateCheck=true;
	}
}

closeDateCheckFunc=function(){
	let cdVal=$("#closeDate").val();
	closeDate=false;
	if(cdVal.length>0){
		closeDateCheck=true;
	}
}

projectStoryCheckFunc=function(){
	projectStoryCheck=false;
	if ($('#projectStory').summernote('isEmpty')) {
	projectStoryCheck=false;
	}else{
		projectStoryCheck=true;
	}		
}

phoneCheckFunc=function(){
	let pVal=$("#phone").val();
	phoneCheck=false;
	if(pVal.length>0){
		phoneCheck=true;
	}
}

bankAccountCheckFunc=function(){
	let baVal=$("#bankAccount").val();
	bankAccountCheck=false;
	if(baVal.length>0){
		bankAccountCheck=true;
	}
}

finalCheckFunc=function(){
	titleCheckFunc();
	summaryCheckFunc();
	categoryCheckFunc();
	makerNameCheckFunc();
	makerSummaryCheckFunc();
	makerLocationCheckFunc();
	targetAmountCheckFunc();
	openDateCheckFunc();
	closeDateCheckFunc();
	projectStoryCheckFunc();
	phoneCheckFunc();
	bankAccountCheckFunc();
	
	finalCheck=false;
	if(titleCheck&& summaryCheck&& categoryCheck&&makerNameCheck&&makerSummaryCheck&&makerLocationCheck&&targetAmountCheck&&openDateCheck&&closeDateCheck&&projectStory&&phoneCheck&&bankAccountCheck){
		finalCheck=true;
	}


	
}

$("#finalCheck").click(finalCheckFunc);
$("#valCheck").click(function(){
	console.log("summary : "+$("#summary").val());
	console.log("makerSsummary : "+$("#makerSummary").contents());
	console.log("projectStory : "+$("#projectStory").html());
	console.log("targetAmount : "+$("#targetAmount").val());
})

$("#summerCheck").click(function(){
	console.log("hi")
	console.log("makerSummary : "+$("#makerSummary").summernote('code'));
	if ($('#makerSummary').summernote('isEmpty')) {
	console.log("makerSummary : "+"empty");
}

})

$(document).ready(function(){
	if(typeof $("#nullCheck").attr("src") =="undefined"){
		$("#add").attr("style","");
		$("#thumbNail").attr("disabled");
	}
	$("#category").val($("#category").attr("title"));
	$("#makerLocation").val($("#makerLocation").attr("title"));
	$("#bankName").val(bank1);
	$("#bankAccount").val(bank2);
})

$("#tempSave").click(function(){
	let fileName=$("#thumbNail").val()
	$("#thumbNail").val(fileName);
	$("#state").attr("value","temporary");
	$("#frm").submit();
	
})
$("#submit").click(function(){
	let check=confirm("제출 후에는 수정이 불가능합니다. 제출하겠습니까?");
	if(check){
		$("#state").attr("value","submit");
		finalCheckFunc();
		if(finalCheck){		
			$("#frm").submit();
		}else{
			alert("입력사항을 재확인 해주세요")
		}
	}
})

$(".fileDelete").click(function(){
	// fileNum
	let fileNum=$("#fileNum").attr("title");
	let projectNum=$("#projectNum").val();
	let obj = $("#fileNum");
	
	// noticeFileDelete
	
	let check = confirm("file Delete?");
	if(check){	
		$.ajax({
			type:"get",
			url:"./fileDelete",
			data:{fileNum:fileNum,num:projectNum},
			success:function(result){
				result=result.trim();
				if(result>0){
					alert("삭제 성공");
					obj.parent().remove();
					$("#add").attr("style","");
					$("#thumbNail").attr("disabled");
				}else{
					alert("삭제 실패");
				}
				
			}
		})
	}
	
})

$("#addSearch").click(function(){
	if(num>4){
		alert("검색태그는 5개까지 가능합니다.")
	}else{		
		num++;
	$("#addSearchTag").append($("#searchSample").html());
	}
})

$("#addSearchTag").on("click",".del",function(){
	alert("del")
	$(this).parentsUntil("div#addSearchTag").remove();
	num--;
})

$("#add").click(function(){
	$("#upload").append($("#sample").html());
	$("#add").attr("style","display:none;");
	$("#thumbNail").removeAttr("disabled");
})

$(".tagDelete").click(function(){
	// fileNum
	let searchNum=$(this).attr("title");
	let obj = $(this);
	// noticeFileDelete
	
		$.ajax({
			type:"get",
			url:"./tagDelete",
			data:{searchNum:searchNum},
			success:function(result){
				result=result.trim();
				if(result>0){
					obj.parentsUntil("div").remove();
					num--;
				}else{
					alert("삭제 실패");
				}
				
			}
		})
})