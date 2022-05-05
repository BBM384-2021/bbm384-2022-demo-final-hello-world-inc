/**
 * 
 */
 
 /**
 * Like and dislike button  
 	
 	construction is like this:
	 	<the button> => heart icon red or gray
	 	<a> => like count text (100 Likes)
	 	<input> => to store post id
 	
 	dislikedPost and likedPost are the form inputs
 	 to send the post id to the servlet
 
 */
 
 $(document).ready(function(){
		
							
	$(".like-btn").click(function(){

		// if button is red then DISLKE
		if($(this).css("color") === 'rgb(255, 0, 0)'){
			
			// next next is input of the post id			
			$("#dislikedPost").attr("value", $(this).next().next().attr("value")) ;
			callJqueryAjax(1,this)	
			
		// if button is gray then LIKE
		}else if($(this).css("color") === 'rgb(128, 128, 128)'){
			
			// next next is input of the post id	
			$("#likedPost").attr("value", $(this).next().next().attr("value") ) ;
			callJqueryAjax(0,this);
		}
		
	});
});

function likePost(btn){
	$(btn).css("color","red");
		
	let likeCountText = $(btn).next().text();
	let likeCount = parseInt(likeCountText.split(" ")[0]);
	likeCount++;
	
	$(btn).next().text(likeCount + " Likes");
	
}

function dislikePost(btn){
	$(btn).css("color","gray");
	
	let likeCountText = $(btn).next().text();
	let likeCount = parseInt(likeCountText.split(" ")[0]);
	likeCount--;
	
	$(btn).next().text(likeCount + " Likes");
		
}

function callJqueryAjax(selector,btn){
	//Converting the input values in the form with id=likeForm to the string.
	if(selector == 0){
		var dataString = $("#likeForm").serialize();	
	}
	else if(selector == 1){
		var dataString = $("#dislikeForm").serialize();
	}
	$.ajax({
		url     : 'UserController', //Target servlet
		method     : 'POST',        // Method(always POST)
		data     : dataString,      // The data that will be sent to the servlet.
		success    : function(data)
		{
			if(selector == 0){
				likePost(btn);
			}else if(selector == 1){ 	// If servlet successfully responses,this block will be executed.
				dislikePost(btn);
			}
			
			console.log(data);
			//alert('Success!');
		},
		error : function(jqXHR, exception){
			console.log('Error occured!!');
		}
	});
}