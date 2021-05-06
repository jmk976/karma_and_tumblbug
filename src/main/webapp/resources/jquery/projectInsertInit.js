/**
 * 
 */

$("#insertBtn").click(function(){
	if($("#category").val()!="default" && $("#title").val().length>0 ){
	$("#frm").submit();
	}else{
		alert("입력사항을 확인 해주세요")
	}
})

