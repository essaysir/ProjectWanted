package com.spring.wanted.ProjectWanted.security.config;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;

import com.spring.wanted.ProjectWanted.member.model.MemberVO;


@SuppressWarnings("serial")
public class MemberContext extends User {

	private final MemberVO mvo;
	
	@Autowired
	public MemberContext(MemberVO mvo , Collection<? extends GrantedAuthority> authorities) {
		super(mvo.getUserid() , mvo.getPwd() , authorities);
		this.mvo = mvo ;
	}
	
	public MemberVO getMemberVO() {
		return mvo ;
	}

}
