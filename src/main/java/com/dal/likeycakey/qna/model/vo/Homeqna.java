package com.dal.likeycakey.qna.model.vo;

import org.springframework.stereotype.Component;

@Component
public class Homeqna implements java.io.Serializable {
	private static final long serialVersionUID = 3000100L;
	
	private int hqNum; // 게시글 번호
	private String id; // 회원 아이디
	private String hqContent; // 게시글 내용
	private String hqTitle; // 게시글 제목
	private int hqreRef; // 원글 참조번호
	private int hqreLev; // 답글 레벨
	private int hqreSeq; // 답글 시퀀스
	
	
	public Homeqna() {
		super();
	}
	
	public Homeqna(int hqNum, String id, String hqContent, String hqTitle,
			int hqreRef, int hqreLev, int hqreSeq) {
		this.hqNum = hqNum;
		this.id = id;
		this.hqContent = hqContent;
		this.hqTitle = hqTitle;
		this.hqreRef = hqreRef;
		this.hqreLev = hqreLev;
		this.hqreSeq = hqreSeq;
	}
	
	public int getHqNum() {
		return hqNum;
	}
	
	public void setHqNum(int hqNum) {
		this.hqNum = hqNum;
	}
	
	public String getId() {
		return id;
	}
	
	public void setId(String id) {
		this.id = id;
	}
	
	public String getHqContent() {
		return hqContent;
	}
	
	public void setHqContent(String hqContent) {
		this.hqContent = hqContent;
	}
	
	public String getHqTitle() {
		return hqTitle;
	}
	
	public void setHqTitle(String hqTitle) {
		this.hqTitle = hqTitle;
	}
	
	public int getHqreRef() {
		return hqreRef;
	}
	
	public void setHqreRef(int hqreRef) {
		this.hqreRef = hqreRef;
	}
	
	public int getHqreLev() {
		return hqreLev;
	}
	
	public void setHqreLev(int hqreLev) {
		this.hqreLev = hqreLev;
	}
	
	public int getHqreSeq() {
		return hqreSeq;
	}
	
	public void setHqreSeq(int hqreSeq) {
		this.hqreSeq = hqreSeq;
	}

}
