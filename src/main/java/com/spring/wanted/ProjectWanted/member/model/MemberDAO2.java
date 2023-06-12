package com.spring.wanted.ProjectWanted.member.model;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.spring.wanted.ProjectWanted.company.mapper.InterCompanyMapper_2;
import com.spring.wanted.ProjectWanted.member.mapper.InterMemberMapper2;

@Component
@Repository
public class MemberDAO2 implements InterMemberDAO2 {

	private final InterMemberMapper2 mapper2;
	
	@Autowired
	public MemberDAO2(InterMemberMapper2 mapper2) {
		this.mapper2 = mapper2;
	}

	// 이력서작성 페이지에서 입력 받은 데이터 insert 해주기
	@Override
	public void insertResume(ResumeVO resumevo) {
		
		int n = 0;
		
		if(n == 1) {
			
		}
		
		mapper2.insertResume(resumevo);
		
	}

	


}
