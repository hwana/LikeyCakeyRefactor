package com.dal.likeycakey.member.model.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dal.likeycakey.member.model.dao.MemberDao;
import com.dal.likeycakey.member.model.vo.Member;
import com.dal.likeycakey.qna.model.vo.Homeqna;

@Service("memberService")
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberDao memberDao;


	// 로그인하기위한 서비스
	@Override
	public Member forLogin(String id, String passwd) throws Exception {
		return memberDao.forLogin(id, passwd);
	}

	// ID CHECK
	@Override
	public int idCheck(String id) {
		return memberDao.selectMember(id);
	}

	@Override
	public int mdupid(String id) {
		return memberDao.selectMember(id);
	}

	// member 삽입
	@Override
	public int insertMember(Member m) throws Exception {
		int result = memberDao.insertMember(m);
		return result;
	}

	// update
	@Override
	public int updateMember(Member m) throws Exception {
		return memberDao.updateMember(m);
	}
	
	@Override
	public Member selectMemberInfo(String id) {
		return memberDao.selectMemberInfo(id);
	}
	
	// id 찾기
	@Override
	public ArrayList<String> findId(Member m) throws Exception {
		List<Member> mlist = memberDao.findId(m);
		ArrayList<String> findId = new ArrayList<String>();
		for(int i =0; i <mlist.size(); i ++) {
			String id = mlist.get(i).getId();
			findId.add(id);
		}
		return findId;
	}

	// 비밀번호 변경
	@Override
	public int updatePassword(Member m) throws Exception {
		return memberDao.updatePassword(m);
	}

	// 홈큐앤에이 리스트 출력
	@Override
	public ArrayList<Homeqna> homeqlist(Member m) throws Exception {
		return memberDao.homeqlist(m);
	}


}