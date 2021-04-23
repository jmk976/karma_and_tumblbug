/**
 * 
 */


$("#addBtn").click(function(){
	$("#frm").submit();
	setTimeout(
		opener.location.reload()
	,2000);
});
