/**
 * 
 */
let titleCheck=false;
let summaryCheck=false;
let categoryCheck=false;



titleCheckFunc=function(){
	let tVal=$("#title").val();
	titleCheck=false;
	if(tVal.length>0){
		titleCheck=true;
	}
}

summaryCheckFumc=function(){
	let sVal=$("#summary").val();
	summaryCheck=false;
	if(sVal.length>0){
		summayCheck=true;
	}
}

categoryCheckFunc=function(){
	let cVal=$("#category").val();
	categoryCheck=false;
	if(cVal!='default'){
		categoryCheck=true;
	}
}



$(document).ready(function(){
	if(typeof $("#nullCheck").attr("src") =="undefined"){
		$("#add").attr("style","");
		$("#thumbNail").attr("disabled");
		
	}
	$("#category").val($("#category").attr("title"));
	
})

$("#tempSave").click(function(){
	let fileName=$("#thumbNail").val()
	$("#thumbNail").val(fileName);
	$("#state").attr("value","temporary")
	$("#frm").submit();
	
})
$("#submit").click(function(){
	$("#state").attr("value","submit")
	$("#frm").submit();
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
$("#add").click(function(){
	$("#upload").append($("#sample").html());
	$("#add").attr("style","display:none;");
	$("#thumbNail").removeAttr("disabled");
})