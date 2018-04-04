<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ include file="../default/header.jsp"%>
<head>

<style>
label {
   margin-top: 10px;
}
hr{
   margin : 20px;
}
#radio{
   height : auto;
   width : auto;
   font-size : 15px;
   margin : auto 0;
}

#checkbox{
   margin-top:18px;
}

.container{
   margin-top:50px;
   margin-bottom:50px;
}

#joinbutton{
   margin-top : 30px;
}

#verifycode{
   background : #9bcaba;
   margin-left : 10px;
}

.search{
   background : #9bcaba;
   margin-top:10px;
}

#agree{
   background : #9bcaba;
   border-color :#9bcaba;
}

#join{
   background : #f6c6c9;
}

#cancle{
   background : #9bcaba;
}
</style>

</head>
<body>
   <article class="container">
      <div class="col-md-12">
         <div class="page-header">
            <h1>
               회원가입 <small>[Likey Cakey]사업자 회원가입</small>
            </h1>
         </div>
         <form class="form-horizontal" action="bizInsert.ca" method="post">
         
         <div class="form-group">
               <label class="col-sm-3 control-label" for="inputPhoto">업체사진</label>
               <div class="col-sm-4">
                  <input class="form-control" id="inputPhoto" type="text" name = "photo"
                     placeholder="업체사진">
                     
                     </div>
                     <button class="btn btn-success" type="button" class="search">
                           사진등록</button>
               
            </div>
            <div class="form-group">
               <label class="col-sm-3 control-label" for="inputID">아이디</label>
               <div class="col-sm-4">
                  <input class="form-control" id="inputID" type="text"
                     placeholder="아이디"  name = "id">
                     
                     </div>
                     <button class="btn btn-success" type="button" class="search" id="dupid">
                           중복검사</button>
               
            </div>
            <div class="form-group">
               <label class="col-sm-3 control-label" for="inputPassword">비밀번호</label>
               <div class="col-sm-6">
                  <input class="form-control" id="inputPassword" type="password"
                     placeholder="비밀번호"  name = "passwd">
                  <p class="help-block">숫자, 특수문자 포함 8자 이상</p>
               </div>
            </div>
            <div class="form-group">
               <label class="col-sm-3 control-label" for="inputPasswordCheck">비밀번호
                  확인</label>
               <div class="col-sm-6">
                  <input class="form-control" id="inputPasswordCheck"
                     type="password" placeholder="비밀번호 확인" >
                  <p class="help-block">비밀번호를 한번 더 입력해주세요.</p>
               </div>
               
            </div>
            <div class="form-group">
               <label class="col-sm-3 control-label" for="inputName">대표자
                  이름</label>
               <div class="col-sm-6">
                  <input class="form-control" id="inputName" type="text" name="name"
                     placeholder="대표자 이름">
               </div>
            </div>

            <div class="form-group">
               <label class="col-sm-3 control-label" for="inputStoreName">상호명</label>
               <div class="col-sm-6">
                  <input class="form-control" id="inputStoreName" type="text" name="bizName"
                     placeholder="상호명">
               </div>
            </div>

            <div class="form-group">
               <label class="col-sm-3 control-label" for="inputStoreCall">업체번호</label>
               <div class="col-sm-6">
                  <input class="form-control" id="inputStoreCall" type="text" name="bizPn"
                     placeholder="업체번호">
               </div>
            </div>

            <div class="form-group">
               <label class="col-sm-3 control-label" for="inputBizNum">사업자
                  등록번호</label>
               <div class="col-sm-6">
                  <input class="form-control" id="inputBizNum" type="text" name="bizNum"
                     placeholder="사업자 등록번호">
               </div>
            </div>

            <div class="form-group">
               <label class="col-sm-3 control-label" for="inputPost">우편번호</label>
               <div class="col-sm-4">
                  <input class="form-control" id="inputPost" type="text"
                     placeholder="우편번호">
               </div>

               <button class="btn btn-success" type="button" class = "search">검색</button>
            </div>

            <div class="form-group">
               <label class="col-sm-3 control-label" for="inputBasicAddr">기본주소</label>
               <div class="col-sm-6">
                  <input class="form-control" id="inputBasicAddr" type="text"
                     placeholder="기본주소"  name = "addressBasic">
               </div>
            </div>

            <div class="form-group">
               <label class="col-sm-3 control-label" for="inputDetailAddr">상세주소</label>
               <div class="col-sm-6">
                  <input class="form-control" id="inputDetailAddr" type="text"
                     placeholder="상세주소"  name = "addressDetail">
               </div>
            </div>
            
            <hr>
            
            <div class="form-group">
               <label class="col-sm-3 control-label" for="inputMasterName">담당자 이름</label>
               <div class="col-sm-6">
                  <input class="form-control" id="inputMasterName" type="text" name="masterName"
                     placeholder="담당자 이름">
               </div>
            </div>
            
            
            <div class="form-group">
               <label class="col-sm-3 control-label" for="inputNumber">담당자 휴대폰번호</label>
               <div class="col-sm-6">
                  <div class="input-group">
                     <input type="tel" class="form-control" id="inputNumber"
                        placeholder="- 없이 입력해 주세요" name = "phone"/> <span class="input-group-btn">
                        <button class="btn btn-success" id="verifycode">
                           인증번호 전송
                        </button>
                     </span>
                  </div>
               </div>
            </div>
            
            <div class="form-group">
               <label class="col-sm-3 control-label" for="inputNumberCheck">인증번호
                  확인</label>
               <div class="col-sm-6">
                  <div class="input-group">
                     <input class="form-control" id="inputNumberCheck" type="text"
                        placeholder="인증번호"> <span class="input-group-btn">
                        <button class="btn btn-success" type="button" id="verifycode">
                           인증번호 확인
                        </button>
                     </span>
                  </div>
                  <p class="help-block">전송된 인증번호를 입력해주세요.</p>
               </div>
            </div>
            
            <div class="form-group">
               <label class="col-sm-3 control-label" for="inputemail">담당자 이메일</label>
               <div class="col-sm-6">
                  <input class="form-control" id="inputemail" type="text" name = "email"
                     placeholder="정산용 이메일입니다.">
               </div>
            </div>
            
            <div class="form-group">
               <label class="col-sm-3 control-label" for="inputDelivery">배송비</label>
               <div class="col-sm-6">
                  <input class="form-control" id="inputDelivery" type="text"
                     placeholder="배송비를 입력해주세요"  name = "bizDelivery">
               </div>
            </div>
            
            <div class="form-group">
               <label class="col-sm-3 control-label" for="inputAgree">약관
                  동의</label>
               <div class="col-sm-6" data-toggle="buttons">
                  <label class="btn btn-warning active" id = "agree" > <input id="agree"
                     type="checkbox" autocomplete="off"> <span
                     class="fa fa-check"></span>
                  </label> <a href="#">이용약관</a>에 동의 합니다.
               </div>
            </div>
            
            <hr>
            
            <div class="form-group">
               <label class="col-sm-3 control-label" for="inputemail">배송여부</label>
               <div class="col-sm-3" id = "checkbox">
                  <input class="checkbox-inline" id="radio" type="radio"
                     > &nbsp;배송 
               </div>
               
               <div class="col-sm-3" id = "checkbox">
                  <input class="checkbox-inline" id="radio" type="radio"
                     > &nbsp;픽업
               </div>
            </div>
            
            <div class="form-group">
               <label class="col-sm-3 control-label" for="inputemail">커스터마이징</label>
               <div class="col-sm-3" id = "checkbox">
                  <input class="checkbox-inline" id="radio" type="radio"
                     > &nbsp;가능
               </div>
               
               <div class="col-sm-3" id = "checkbox">
                  <input class="checkbox-inline" id="radio" type="radio"
                     > &nbsp;불가능
               </div>
            </div>
            
            <div class="form-group">
               <div class="col-sm-12 text-center" id = "joinbutton">
                  <button class="btn btn-primary btn-lg" type="submit" id = "join" >
                     회원가입
                  </button>
                  <button class="btn btn-danger btn-lg" type="submit" id = "cancle">
                     가입취소
                  </button>
               </div>
            </div>
         </form>
      </div>
   </article>

   <script src="/resources/js/bootstrap.min.js"></script>
   <script type="text/javascript" src="/resources/js/vendor/jquery-1.12.4.min.js"></script>
   <script>
		$(document).ready(function(){
			$("#dupid").click(function(){
				$.ajax({
					url : "dupid.ca",
					data : {id : $("#inputID").val()},
					dataType : "text",
					type : "post",
					success : function(value){
						if (value == "ok"){ 
							alert("아이디가 중복되지 않습니다.");
							$('input[name=name]').focus();
						}
						else {
							alert("이미 존재하는 아이디입니다. 아이디를 다시 설정하세요");
							$('#id').select();
						}
					},
					error : function(value){
						alert("잘못 입력하셨습니다."+value);
					}
				});
				return false;
			}); //click
		}); //ready
	</script>
</body>

</html>
<%@ include file="../default/footer.jsp"%>

