package com.dal.likeycakey.admin.model.vo;

public class Member implements java.io.Serializable {
	// 자바 내부에서 사용하는 자료를 자바 외의 프로그램에서도 인식할 수 있게 바이트로 변환하여
	// 데이터를 전송하기 위해 직렬화 처리를 한다.
	// 이 때 프로그램을 인식시키기 위한 고유의 식별 번호를 부여한다.
	// 만약 이 식별번호가 일치하면 자바에서 해당 객체를 중복으로 인식하여 에러를 발생시킨다.
	private static final long serialVersionUID = 1000000L;

	private String id;
	private String passwd;
	private String name;
	private int code;
	private String email;
	private String post;
	private String addressBasic;
	private String addressDetail;
	private String phone;
	private String photo;
	private int status;
	private int blackCnt;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPasswd() {
		return passwd;
	}

	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getCode() {
		return code;
	}

	public void setCode(int code) {
		this.code = code;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPost() {
		return post;
	}

	public void setPost(String post) {
		this.post = post;
	}

	public String getAddressBasic() {
		return addressBasic;
	}

	public void setAddressBasic(String addressBasic) {
		this.addressBasic = addressBasic;
	}

	public String getAddressDetail() {
		return addressDetail;
	}

	public void setAddressDetail(String addressDetail) {
		this.addressDetail = addressDetail;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public int getblackCnt() {
		return blackCnt;
	}

	public void setBlackCnt(int blackCnt) {
		this.blackCnt = blackCnt;
	}

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public Member() {

	}

	public Member(String id, String passwd, String name, int code, String email, String post, String addressBasic,
			String addressDetail, String phone, String photo) {
		super();
		this.id = id;
		this.passwd = passwd;
		this.name = name;
		this.code = code;
		this.email = email;
		this.post = post;
		this.addressBasic = addressBasic;
		this.addressDetail = addressDetail;
		this.phone = phone;
		this.photo = photo;
	}

	
	public Member(String id, String passwd, String name, int code, String email, String post, String addressBasic,
			String addressDetail, String phone, String photo, int status, int blackCnt) {
		super();
		this.id = id;
		this.passwd = passwd;
		this.name = name;
		this.code = code;
		this.email = email;
		this.post = post;
		this.addressBasic = addressBasic;
		this.addressDetail = addressDetail;
		this.phone = phone;
		this.photo = photo;
		this.status = status;
		this.blackCnt=blackCnt;
	}

}