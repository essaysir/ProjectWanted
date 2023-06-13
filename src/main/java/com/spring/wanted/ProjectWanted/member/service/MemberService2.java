package com.spring.wanted.ProjectWanted.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.wanted.ProjectWanted.member.model.InterMemberDAO2;
import com.spring.wanted.ProjectWanted.member.model.ResumeVO;

@Service
public class MemberService2 implements InterMemberService2{


	private final InterMemberDAO2 mdao2 ;

	@Autowired
	public MemberService2(InterMemberDAO2 mdao2) {
		this.mdao2 = mdao2;
	}

	
	// 이력서작성 페이지에서 입력 받은 데이터 insert 해주기
	@Override
	public int insertResume(ResumeVO resumevo) {
		
		int n  = mdao2.insertResume(resumevo);
		
		return n;
		
	}
	
}	
