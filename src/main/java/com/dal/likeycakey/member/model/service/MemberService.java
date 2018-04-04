<<<<<<< HEAD
package com.dal.likeycakey.member.model.service;

import com.dal.likeycakey.member.model.vo.Member;

public interface MemberService {
	// Controller에서 서비스를 수행하기 위한 메소드의 이름을
	// 정의하여 프로젝트에 규칙을 부여합니다.

	public Member loginMember(String id, String passwd);
	public int insertMember(Member m);
	public int updateMember(Member m);
	public int deleteMember(String id);
	public int checkIdDup(String id);
}
=======
package com.dal.likeycakey.member.model.service;

import com.dal.likeycakey.member.model.vo.Member;

public interface MemberService {
	public int insertMember(Member m) throws Exception;
	public Member loginMember(String id, String passwd) throws Exception;
	public int idCheck(String id);
}
>>>>>>> refs/heads/master
