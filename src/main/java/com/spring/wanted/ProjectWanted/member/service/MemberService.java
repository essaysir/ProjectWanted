package com.spring.wanted.ProjectWanted.member.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.wanted.ProjectWanted.member.model.InterMemberDAO;

@Service
public class MemberService implements InterMemberService{


	private final InterMemberDAO mdao ;

	@Autowired
	public MemberService(InterMemberDAO mdao) {
		this.mdao = mdao;
	}


	@Override
	public String checkUserid(String userid) {
		int n = mdao.checkUserid(userid);
		if ( n == 1 ) {
			return  "tiles1/member/loginpassword" ;
		}
		else {
			return "tiles1/member/signup"; 
		}
	}




}
