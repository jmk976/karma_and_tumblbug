/**
 * 
 */
let num = $("#comments").attr("title");

$("#comments").on("click", "#remove", function(){
	const ar = []; //빈 배열
	$(".del").each(function(){
		let ch = $(this).prop("checked");
		if(ch){
			ar.push($(this).val());
		}
	});
	
	
	$.ajax({
		type: "post",
		url:"../comments/commentsDelete",
		traditional:true, //배열전송
		data:{commentNum:ar},
		success:function(data){
			alert('삭제하였습니다');
		}
	})

});


$.get("../comments/commentsList?num="+num,function(data){
	console.log(data);
	$("#comments").html(data.trim());
} );




$("#write").click(function(){
	let writer = $("#writer").val();
	let contents = $("#contents").val();
	
	$.post("../comments/commentsInsert", 
	{
		num:num,
		writer:writer,
		contents:contents
	}, 
	function(data){
		data = data.trim();
		if(data==1){
			alert('등록 성공');
			$("#writer").val('');
			$("#contents").val('');
			getList();
		}else {
			alert('등록 실패');
		}
	});
});	