package com.spring.wanted.ProjectWanted.security.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.crypto.password.PasswordEncoder;


public class MemberAuthenticationProvider implements AuthenticationProvider {

	@Autowired
	private  Memberdetails userDetailService ; 
	@Autowired
	private PasswordEncoder passwordEncoder ;
	
	
	// 검증을 위한 구현이 들어가야 하는 곳
	@Override
	public Authentication authenticate(Authentication authentication) throws AuthenticationException {
		String userid = authentication.getName(); // 유저 아이디 
		System.out.println(" MemberProvider USERID : " + userid);
		String pwd = (String)authentication.getCredentials() ; // 유저 비밀번호
		
		MemberContext memberContext =(MemberContext)userDetailService.loadUserByUsername(userid);
		System.out.println(" 검증 구현 중 ~~~~~~~~~~~~~~");
		System.out.println(memberContext.getAuthorities());
		if ( ! passwordEncoder.matches(pwd, memberContext.getMemberVO().getPwd())) { 
				throw new BadCredentialsException(" 비밀번호가 일치하지 않습니다. ");
		}
		
		UsernamePasswordAuthenticationToken usernamePasswordAuthenticationToken = new UsernamePasswordAuthenticationToken(memberContext.getMemberVO(),  null , memberContext.getAuthorities());
		
		return usernamePasswordAuthenticationToken ;
	}

	
	@Override
	public boolean supports(Class<?> authentication) {
		return UsernamePasswordAuthenticationToken.class.isAssignableFrom(authentication);
	}

}
