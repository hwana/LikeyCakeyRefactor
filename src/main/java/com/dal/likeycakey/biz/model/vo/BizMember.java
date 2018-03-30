package com.dal.likeycakey.biz.model.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component
public class BizMember implements java.io.Serializable {
	
	// 자바 내부에서 사용하는 자료를 자바 외의 프로그램에서도 인식할 수 있게
	// 바이트로 변환하여 데이터를 전송하기 위해 직렬화 처리를 합니다. 
	// 이 때 프로그램을 인식시키기 위한 고유의 식별 번호를 부여합니다.
	// 만약 이 식별 번호가 일치하면 자바에서 해당 객체를 중복으로 인식하여 에러를 발생시킵니다.
	private static final long serialVersionUID = 10000000L;

	/*
	 * private : 해당되는 각각의 컬럼 값을 필드 변수
	 * 
	 * 기본 생성자와 필드변수를 매개변수로 갖는 생성자를 선언
	 * 
	 * getter & setter를 선언
	 * 
	 */
}
