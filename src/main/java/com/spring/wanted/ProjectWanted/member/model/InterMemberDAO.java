package com.spring.wanted.ProjectWanted.member.model;

import java.util.List;

public interface InterMemberDAO {

	int checkUserid(String userid); // 

	MemberVO login(String username);

	void register(MemberVO mvo); // 회원가입하기 
}
