/**
 * 
 */

$(".fileDelete").click(function(){
	let check= confirm("삭제하시겠습니까?");

	if(check){
	//fileNum
	let num = $(this).attr("title");
	let obj = $(this);
	
	alert(num);
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


const del = document.getElementById("del");
const frm = document.getElementById("frmDelete");

del.addEventListener("click",function(){
let result = confirm("delete??");

if(result){
	frm.setAttribute("method","post");
	frm.submit();
}else{
	
}

});



//이벤트 전달(위임)

$("#files").on("click", ".delete",function(){
	$(this).parent().remove();
	
	count--;
});
