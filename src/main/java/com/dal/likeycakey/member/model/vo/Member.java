package com.dal.likeycakey.member.model.vo;

import org.springframework.stereotype.Component;

@Component
public class Member implements java.io.Serializable{
	// 자바 내부에서 사용하는 자료를 자바 외의 프로그램에서도 인식할 수 있게 바이트로 변환하여
	// 데이터를 전송하기 위해 직렬화 처리를 한다.
	// 이 때 프로그램을 인식시키기 위한 고유의 식별 번호를 부여한다.
	// 만약 이 식별번호가 일치하면 자바에서 해당 객체를 중복으로 인식하여 에러를 발생시킨다.
	private static final long serialVersionUID = 1000001L;
	
	
	private String id;
	private String passwd;
	private String name;
	private int code;
	private String email;
	private String post;
	private String addressB;
	private String addressD;
	private String phone;
	private String photoo;
	
	public Member() {
		
	}
	
	public Member(String id, String passwd) {
		super();
		this.id = id;
		this.passwd = passwd;
	}
	
	public Member(String id, String passwd, String name, int code, String email, String post, String addressB,
			String addressD, String phone, String photo) {
		super();
		this.id = id;
		this.passwd = passwd;
		this.name = name;
		this.code = code;
		this.email = email;
		this.post = post;
		this.addressB = addressB;
		this.addressD = addressD;
		this.phone = phone;
		this.photoo = photo;
	}
	
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
	public String getAddressB() {
		return addressB;
	}
	public void setAddressB(String addressB) {
		this.addressB = addressB;
	}
	public String getAddressD() {
		return addressD;
	}
	public void setAddressD(String addressD) {
		this.addressD = addressD;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getPhotoo() {
		return photoo;
	}
	public void setPhotoo(String photo) {
		this.photoo = photo;
	}
	
}
