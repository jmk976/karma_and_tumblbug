/**
 * 
 */
$(document).ready(function(){
	if(typeof $("#nullCheck").attr("src") =="undefined"){
		$("#add").attr("style","");
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
	let obj = $("#fileNum");
	
	// noticeFileDelete
	
	let check = confirm("file Delete?");
	if(check){	
		$.ajax({
			type:"get",
			url:"./fileDelete",
			data:{fileNum:fileNum},
			success:function(result){
				result=result.trim();
				if(result>0){
					alert("삭제 성공");
					obj.parent().remove();
					$("#add").attr("style","");
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
})