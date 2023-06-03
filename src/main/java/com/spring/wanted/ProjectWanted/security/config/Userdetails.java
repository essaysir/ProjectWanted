package com.spring.wanted.ProjectWanted.security.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.spring.wanted.ProjectWanted.member.model.InterMemberDAO;
import com.spring.wanted.ProjectWanted.member.model.MemberVO;

@Service
public class Userdetails implements UserDetailsService {

	@Autowired
	public InterMemberDAO mdao ; 
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		MemberVO mvo = mdao.login(username) ;
	
		   return 
				   org.springframework.security.core.userdetails.User.builder()
	                .username(mvo.getUserid())
	                .password(mvo.getPwd())
	                .build();
	}

}
