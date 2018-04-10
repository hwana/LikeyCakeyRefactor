$(document)
		.ready(
				function() {
					$("#check_id").click(function() {
						$.ajax({
							url : "dupid.ca",
							data : {
								id : $("#inputId").val()
							},
							type : "post",
							success : function(data) {
								if ($.trim(data) == 0) {
									alert("사용가능한 아이디입니다.");
									$('#checkMsg').html('<p style="color:blue">사용가능한 아이디입니다.</p>');							
									$('input[name=name]').focus();
								} else {
									$('#checkMsg').html('<p style="color:red">중복된 아이디입니다.</p>');
									alert("이미 존재하는 아이디입니다. 아이디를 다시 설정하세요");
									$('#inputId').select();
								}
							},
							error : function(value) {
								alert("잘못 입력하셨습니다." + value);
								console.log('Error:', data);
							}
						});
						return false;
					}); // id check click
					
					
					// 회원가입 클릭 시 유효성 검사
					$("#join")
							.click(
									function() {
										var nameP = /^[가-힣]+$/; // 이름 한글만 사용가능
										var telP = /^[0-9]{2,3}-[0-9]{3,4}-[0-9]{4}$/; // 전화번호
										var emailP = /^[a-z0-9_+.-]+@([a-z0-9-]+\.)+[a-z0-9]{2,4}$/ // 이메일
										var pwP = /^.*(?=.{6,20})(?=.*[0-9])(?=.*[a-zA-Z]).*$/; // 비밀번호
										// alert("ok");
										if ($("#inputPhoto").val() == "") {
											alert("사진을 업로드 하세요.");
											return false;

										} else if ($("#inputName").val() == "") {
											alert("이름을 입력하세요.");
											$("#inputName").focus();
											return false;

										} else if (!nameP.test($("#inputName")
												.val())) {
											alert("한글이름을 제대로 적어주세요.");
											$("#inputPassword").val("");
											$("#inputPassword").focus();
											return false;

										} else if ($("#inputId").val() == "") {
											alert("아이디를 입력하세요.");
											$("#inputID").focus();
											return false;

										} else if ($("#inputPassword").val() == "") {
											alert("비밀번호를 입력하세요.");
											$("#inputPassword").focus();
											return false;

										} else if (!pwP
												.test($("#inputPassword").val())) {
											alert("비밀번호 형식은 영어, 숫자포함 6~20 자리 입니다.");
											$("#inputPassword").val("");
											$("#inputPassword").focus();
											return false;

										} else if ($("#inputPasswordCheck")
												.val() == "") {
											alert("비밀번호확인을 입력하세요.");
											$("#inputPasswordCheck").focus();
											return false

										} else if ($("#inputPassword").val() != $(
												"#inputPasswordCheck").val()) {
											alert("비밀번호와 비밀번호 확인이 일치하지않습니다.");
											$("#inputPassword").val("");
											$("#inputPasswordCheck").val("");
											$("#inputPassword").focus();
											return false;

										} else if ($("#inputPhone").val() == "") {
											alert("핸드폰 번호를 입력하세요");
											$("#inputPhone").focus();
											return false;

										} else if (!telP.test($("#inputPhone")
												.val())) {
											alert("핸드폰번호는 -(대시)를 넣어 입력해주세요.");
											$("#inputPhone").val("");
											$("#inputPhone").focus();
											return false;

										} else if ($("#inputBasicAddr").val() == "") {
											alert("기본주소를 입력하세요");
											$("#inputBasicAddr").focus();
											return false;

										} else if ($("#inputDetailAddr").val() == "") {
											alert("상세주소를 입력하세요");
											$("#inputDetailAddr").focus();
											return false;

										} else if ($("#inputEmail").val() == "") {
											alert("이메일을 입력하세요");
											$("#inputEmail").focus();

										} else if (!emailP
												.test($("#inputEmail").val())) {
											alert("올바른 이메일 형식으로 입력하십시오.");
											$("#inputEmail").val("");
											$("#inputEmail").focus();
											return false;
										} else {
											alert("회원가입이 완료되었습니다.");
											return true;
										}
									});
				});