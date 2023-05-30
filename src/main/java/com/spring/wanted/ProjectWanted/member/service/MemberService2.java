package com.spring.wanted.ProjectWanted.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.wanted.ProjectWanted.member.model.InterMemberDAO2;

@Service
public class MemberService2 implements InterMemberService2{


	private final InterMemberDAO2 mdao ;

	@Autowired
	public MemberService2(InterMemberDAO2 mdao) {
		this.mdao = mdao;


	}
	
}	
