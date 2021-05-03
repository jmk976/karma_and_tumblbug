/**
 * 
 */

$("#add").click(function(){

	$("#community").append($("#sample").html());
	$("#add").attr("style","display:none;");

})

$("#community").on("click","#addCommunity",function(){
	console.log("add");
	$("#frm").submit();
	
})