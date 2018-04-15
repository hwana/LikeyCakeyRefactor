package com.dal.likeycakey.detailView.model.vo;

import java.util.Date;

import org.springframework.stereotype.Component;

import com.fasterxml.jackson.annotation.JsonFormat;

@Component
public class ProductQna implements java.io.Serializable {

	   private static final long serialVersionUID = 3099990L;
	   
	   private int pqNum; // 질문 게시글 번호
	   private int pbNum; // 질문 게시글이 참조하는 게시글 번호
	   private String id; // 질문 글쓴 회원 아이디
	   private String pqContent; //질문 글 내용
	   @JsonFormat(pattern="yyyy/MM/dd")
	   private Date pqDate; // 질문 글 작성일
	   private int pqcNum; // 질문 댓글 번호
	   private String pqcContent; // 질문 댓글 내용
	   @JsonFormat(pattern="yyyy/MM/dd")
	   private Date pqcDate; // 질문 댓글 작성일
		   
		public ProductQna() {
			super();
			// TODO Auto-generated constructor stub
		}
	
		public ProductQna(int pqNum, int pbNum, String id, String pqContent, Date pqDate, int pqcNum, String pqcContent,
				Date pqcDate) {
			super();
			this.pqNum = pqNum;
			this.pbNum = pbNum;
			this.id = id;
			this.pqContent = pqContent;
			this.pqDate = pqDate;
			this.pqcNum = pqcNum;
			this.pqcContent = pqcContent;
			this.pqcDate = pqcDate;
		}

		public int getPqNum() {
			return pqNum;
		}

		public void setPqNum(int pqNum) {
			this.pqNum = pqNum;
		}

		public int getPbNum() {
			return pbNum;
		}

		public void setPbNum(int pbNum) {
			this.pbNum = pbNum;
		}

		public String getId() {
			return id;
		}

		public void setId(String id) {
			this.id = id;
		}

		public String getPqContent() {
			return pqContent;
		}

		public void setPqContent(String pqContent) {
			this.pqContent = pqContent;
		}

		public Date getPqDate() {
			return pqDate;
		}

		public void setPqDate(Date pqDate) {
			this.pqDate = pqDate;
		}

		public int getPqcNum() {
			return pqcNum;
		}

		public void setPqcNum(int pqcNum) {
			this.pqcNum = pqcNum;
		}

		public String getPqcContent() {
			return pqcContent;
		}

		public void setPqcContent(String pqcContent) {
			this.pqcContent = pqcContent;
		}

		public Date getPqcDate() {
			return pqcDate;
		}

		public void setPqcDate(Date pqcDate) {
			this.pqcDate = pqcDate;
		}

		public static long getSerialversionuid() {
			return serialVersionUID;
		}

		@Override
		public String toString() {
			return "ProductQna [pqNum=" + pqNum + ", pbNum=" + pbNum + ", id=" + id + ", pqContent=" + pqContent
					+ ", pqDate=" + pqDate + ", pqcNum=" + pqcNum + ", pqcContent=" + pqcContent + ", pqcDate="
					+ pqcDate + "]";
		}
		  
	}

