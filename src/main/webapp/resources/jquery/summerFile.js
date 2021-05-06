/**
 * 
 */

$(".myCheck").each(function(index, item){
let id = "";	


$(this).summernote({
		
			height:500,
			placeholder:'write here...',
			callbacks :{
				onImageUpload: function(files,index){
					id=$(this).attr("id");
					uploadFile(files,id);
				},// onImageUpload
				onMediaDelete: function(files){
					deleteFile(files);
				}
			}// callback
		});


function deleteFile(files){
	let fileName = $(files[0]).attr("src");
	fileName = fileName.substring(fileName.lastIndexOf("/")+1);
	$.post("./summerFileDelete",{fileName:fileName},function(result){
		console.log(result);
	});	
}

function uploadFile(files){
	const formData = new FormData(); // form 태그 작성
	formData.append('file',files[0]); // input type = "File" name="file"
	let fileName="";
	$.ajax({
		type:"post",
		url:"./summerFileUpload",
		data:formData,
		enctype:"multipart/form-data",
		cache:false,
		processData:false,
		contentType:false,
		success: function(result){
			alert("ok");
			fileName=result.trim();
			console.log(fileName);
			$("#"+id).summernote('insertImage',fileName);
		}
	});
	
	
}

})