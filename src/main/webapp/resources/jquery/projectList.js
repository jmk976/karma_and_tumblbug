/**
 * 
 */
$("#setCategory").click(function(){
	alert($("#category").val())
	if($("#category").val()=='default'){
		$("#category").removeAttr("name");
		$("#frm").submit();
	}else{
		$("#frm").submit();
	}
})