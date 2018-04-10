	/* 좋아요 클릭했을 때 */

$(function(){
	$('.heart').click(function(){
		
		var currentPage = $('.currentPage').val();
		if(currentPage.match(/home.jsp/)){
			var pbNum = $(this).parent().parent().parent().children('#pbNum').val();
			console.log("게시글 번호는 " + pbNum);
		} else if(currentPage.match(/detailView.jsp/)){
			var pbNum = $('#pbNum').val();
			console.log("게시글 번호는 " + pbNum);
		}
		var id = $('.memberId').val();
		id = 'user1';
		
		/* 로그인 상태가 아닐 경우 */
		if(!id){
			alert('로그인이 필요한 서비스입니다.');
		/* 로그인 상태일 경우 - 빈하트   일시 하트 채우고 인서트, 업데이트 +1
				      	    꽉찬하트 일시 하트 비우고 딜리트, 업데이트-1  */
		}else{
			/* 빈하트일 경우  */
			if($(this).attr('class')=='heart fa fa-heart-o'){
				/* 좋아요 성공했을 경우 하트 채우기 */
	    		$.ajax({
	    			url : "addHeart.ca",
	        		type : "post",
	        		dataType : "json",
	        		data : {
	        			'pbNum' : pbNum,
	        			'id'	: id
	        		},
	        		success : function(result){
	        			console.log('좋아요 누른 값 보내기 성공');
	        			
	        			var jsonStr = JSON.stringify(result);
	        			var json = JSON.parse(jsonStr);
	        			
	        			if(json.result=="success"){
	        				console.log('좋아요 인서트 성공');
	        				$('input[value*='+json.pbNum+']').parent().find('.heart').attr('class', 'heart fa fa-heart');
	        			}
	        		},
	        		error : function(request,status,error) {
	        			console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
	        		}
	    			
	    		});
				
				/* 꽉찬 하트일 경우 */
			} else {
				/* MEMBER_LIKE 삭제하고 PRODUCT_BOARD P_B_LIKE UPDATE 하기 */
				$.ajax({
	    			url : "subtractHeart.ca",
	        		type : "post",
	        		dataType : "json",
	        		data : {
	        			'pbNum' : pbNum,
	        			'id'	: id
	        		},
	        		success : function(result){
	        			console.log('좋아요 취소 누른 값 보내기 성공');
	        			
	        			var jsonStr = JSON.stringify(result);
	        			var json = JSON.parse(jsonStr);
	        			
	        			if(json.result=="success"){
	        				console.log('좋아요 취소 성공');
	        				$('input[value*='+json.pbNum+']').parent().find('.heart').attr('class', 'heart fa fa-heart-o');
	        			}
	        		},
	        		error : function(request,status,error) {
	        			console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
	        		}
	    			
	    		});
			}
		}
	});
});
    	