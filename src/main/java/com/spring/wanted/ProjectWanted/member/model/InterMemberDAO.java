package com.spring.wanted.ProjectWanted.member.model;

import java.util.List;

import com.spring.wanted.ProjectWanted.company.model.CompanyVO;

public interface InterMemberDAO {

	int checkUserid(String userid); // 

	MemberVO login(String username); // 멤버 회원 로그인 설정

	void register(MemberVO mvo); // 회원가입하기 

	CompanyVO login_comp(String username); // 회사 회원 로그인 설정
}
