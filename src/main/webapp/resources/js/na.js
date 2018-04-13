	/* 좋아요 클릭했을 때 */

$(function(){
	
	
	var pbNum = $('#pbNum').val();
	console.log('게시글 번호는 ' + pbNum);
	
//리뷰 select start -----------------------
	$.ajax({
		url : "reviewList.ca",
		type : "post",
		dataType : "json",
		data : {
			'pbNum' : pbNum 
		},
		
		success : function(pReview){
		 	var jsonStr = JSON.stringify(pReview);
			var json = JSON.parse(jsonStr);
			
			var rowsize = 2; // 한 페이지에 보일 게시물 수 
			var block = 5; // 페이징 처리할 때 1~5 / 6~10 / 11~15 식으로 보이도록 5개로 고정
			
			var total = json.length;
			console.log("총 리뷰글 수는 : " + total);
			var allPage = Math.ceil(total/rowsize);
			console.log("총 페이지 수는 : " + allPage);
			
			var values = $('.rlist > .tab-content').html();
			// 이용 후기 개수 표시
			$('.review-cnt').text(total+'개');

			// 리뷰가 있을 경우 
			if(total>0){
				
				var reviewAverage = 0;
				for(var average=0; average<total; average++){
					reviewAverage += json[average].prStar;
				}
				
				reviewAverage = Math.ceil(reviewAverage/total);
				$('.review-average').text(reviewAverage +'.0 점');
				
				var i = 0;
				for(var page = 1; page<=allPage; page++){
					// 해당 페이지 클릭하면 active in 클래스 추가하기
					values += "<div id=reviewPage"+page+" class='tab-pane fade'>"; 
				for(var o = 0; o<rowsize; o++){
					//console.log("total은 : " + total);
					//console.log("i는 : " + i);
					values += "<div class='rbox_mine'>"
						   + "<span class='pf_img' style='background-image: url(/resources/img/client/1.png)'></span>"
						   + "<strong class='guest_name'>"+ json[i].id+"</strong>"
						   + "<p class='p_review'>"+ json[i].prContent +"</p>"
						   + "<div class='space_list swiper_list photo_review'>"
						   + "<div class='flex_wrap column3 fluid'>"
						   + "<article class='box box_space'>"
						   +	"<div class='inner'>"
						   + 		"<a href='/resources/img/single-product/1.jpg' class='_review_img_link' target='_blank'"
						   +		         "data-img-path='/resources/img/single-product/1.jpg'>"
					       + 			"<div class='img_box'>"
						   +			"<span class='img' style='background-image: url(/resources/img/single-product/1.jpg)'></span>"
						   + 			"<span class='border'></span>"
					       + 			"</div>"
					       + 		"</a>"
					       + 	"</div>"
					       + "</article>"
					       + "</div>"
					       + "</div>"
					       + "<div class='rbox_info_base'>"
				    	   + 	"<span class='time_info'>"+ json[i].prDate+"</span>"
					       + "</div>"
					       + "<span class='rate_area'> <span class='blind'>평점&nbsp;</span>";
					prStar = json[i].prStar;
					greyStar = 5 - prStar;
					for (var j = 0; j < prStar; j++) {
				    values += 	"<span class='rate active'><i class='fa fa-star'></i></span>";
					}
					if(greyStar != 0){
						for (var j = 0; j < greyStar; j++) {
						    values += 	"<i class='fa fa-star' style='color:#dbdbdb;'></i>";
							}
					}
					values += "</div>";
					// 사업자 댓글이 있을 경우 추가
					if(json[i].prcNum){
					    values += "<div class='rbox_reply'>"
							   + "<p class='p_tit_reply'>"
							   + "<em>"+ $('#bizName').text() +"</em>님의 댓글"
							   + "</p>"
							   + "<p class='p_review'>"+ json[i].prcContent +"</p>"
							   + "<div class='rbox_info_base'>"
							   + "<p class='time_info'>"+ json[i].prcDate +"</p>"
							   + "</div>"
							   + "</div>"; 
					}
					i++;
				} // 두번째 for문
					values += "</div>";
				} // 바깥 for문
				
				// 리뷰가 없을 경우	
			} else {
				values += "<div class='ptb-150'>"
					   +  "<p class='qna_result'>등록된 리뷰가 아직 없습니다.</p>"
					   +  "</div>";
			}
			$('.rlist > .tab-content').html(values);
			
			// 처음에는 1페이지를 active
			$('#reviewPage1').attr('class', 'tab-pane fade active in');
			
			
			// 현재 페이지 불러오기
			var pg = parseInt($('.tab-pane.fade.active.in').attr('id').replace('reviewPage', '')); 
			
			var start = (pg * rowsize) - (rowsize - 1); // 해당페이지에서 게시글 시작번호
			var end = (pg * rowsize); // 해당페이지에서 게시글 끝번호
			
			 /* 시작 블럭 숫자(1~5페이지 일 경우 1, 6~10일 경우 6) */
			var startPage = ((pg-1)/block * block) + 1; 
			var endPage = ((pg-1)/block * block) + block; // 끝 블럭 숫자(1~5일 경우 5, 6 ~ 10일 경우 10)
			
			
			var pageValues = $('.paging').html();
			
			// 만약 최종 페이지 수보다 끝나는 페이지 수가 더 클 경우 두 변수 값을 같게 할 것
				if(endPage > allPage) {
						endPage = allPage;
				}
			
			// 만약 현재 페이지가 한 페이징 개수(5)보다 클경우 << < 버튼 표시
			if(pg > block){
				pageValues += "<a class='btn_prev_list_end' href='#reviewPage1'> "
						   +  "<i class='fa fa-angle-double-left'></i></a>"
						   +  "<a class='btn_prev_list>"
						   +  "<i class='fa fa-angle-left mr-10'></i></a>";
			}
			
			for(var i=startPage; i<= endPage; i++){
				if(i==pg){
					pageValues += "<a class='reviewNum active' href='#reviewPage"+i+"'>["+i+"]</a>"
				}else{
					pageValues += "<a class='reviewNum' href='#reviewPage"+i+"'>["+i+"]</a>"
				}
			}
			
			if(endPage < allPage){
			pageValues +=  "<a class='btn_next_list active'>"
					   +  "<i class='fa fa-angle-double-right ml-10'></i></a>"
					   +  "<a class='btn_next_list_end active' href='#reviewPage"+ allPage +"'>"
					   +  "<i class='fa fa-angle-right'></i></a>";
			}
		
			$('.paging').html(pageValues);

			$('.reviewNum').click(function(e){
				e.preventDefault;
				var curPg = parseInt($('.reviewNum.active').text().replace('[','').replace(']',''));
				var goPg = parseInt($(this).text().replace('[','').replace(']',''))
				$('#reviewPage'+curPg +'').attr('class','tab-pane fade');
				$('#reviewPage'+goPg +'').attr('class','tab-pane fade active in');
				$($('.reviewNum.active').attr('class','reviewNum'));
				$($(this).attr('class', 'reviewNum active'))
				
			});
			
		},
		error : function(request,status,error) {
			console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		}
		
	});
	
//리뷰 select end -----------------------
	
	$('#addCart').click(function(e){
		e.preventDefault();
		$.ajax({
			url : "productAddCart.ca",
			type : "post",
			dataType : "json",
			data : {
				'pbNum' : pbNum,
				
				
			},
			
			success : function(pReview){
			}	
		});
		
	});
	
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
    	