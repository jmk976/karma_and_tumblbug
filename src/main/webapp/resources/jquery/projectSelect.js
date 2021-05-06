/**
 * 
 */
let num = $("#add").attr("title");
$(document).ready(function(){
})
openPopup = function() {
	    var _width = '650';
	    var _height = '600';
	    // 팝업을 가운데 위치시키기 위해 아래와 같이 값 구하기
	    var _left = Math.ceil(( window.screen.width - _width )/2);
	    var _top = Math.ceil(( window.screen.height - _height )/2); 
	
	    window.open('./projectSelectUpdate?num='+num, 'popup-test', 'width='+ _width +', height='+ _height +', left=' + _left + ', top='+ _top,
		'status=no','toolbar=no','scrollbars=no','titlebar=no');
 
}
$("#add").click(function(){

	openPopup();
	$("#add").attr("style","display:none;");

})
$(".autoSelect").click(function(){
	console.log($(this).attr("title"));
	$("#quantity").val($(this).attr("title"));
	$("#frm").submit();
})

$("#direc").click(function(){
	let dVal=$("#directly").val();
	if(dVal>0){
			$("#dFrm").submit();
	}
	
	
})



/*
$("#community").on("click","#addCommunity",function(){
	console.log("add");
	$("#frm").submit();
	
})
*/