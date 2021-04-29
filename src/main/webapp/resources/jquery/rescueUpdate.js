/**
 * 
 */

$(".fileDelete").click(function(){
	let check= confirm("삭제하시겠습니까?");

	if(check){
	//fileNum
	let fileNum = $(this).attr("title");
	let obj = $(this);
	//FileDelete
	$.ajax({
		url:"./fileDelete",
		type: "GET",
		data: {num:num},
		success:function(result){
			result=result.trim();
			if(result>0){
				alert("삭제 성공");
				
				$(obj).parent().remove();
			}else {
				alert("삭제 실패");
			}

		}
	});
	}
	
});



//이벤트 전달(위임)

$("#files").on("click", ".delete",function(){
	$(this).parent().remove();
	
	count--;
});
