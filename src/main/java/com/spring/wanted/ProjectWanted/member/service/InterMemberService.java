package com.spring.wanted.ProjectWanted.member.service;

import java.util.List;

import com.spring.wanted.ProjectWanted.member.model.MemberVO;
import com.spring.wanted.ProjectWanted.post.model.PostVO;

public interface InterMemberService {

	String checkUserid(String userid); // Login 화면에서 아이디를 체크해주는 것

	void register(MemberVO mvo); // 회원가입 하기 

	PostVO getPostVO(int post_code);
}
