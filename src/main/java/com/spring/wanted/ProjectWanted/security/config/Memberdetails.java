package com.spring.wanted.ProjectWanted.security.config;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.spring.wanted.ProjectWanted.member.model.InterMemberDAO;
import com.spring.wanted.ProjectWanted.member.model.MemberVO;

@Service
public class Memberdetails implements UserDetailsService {

	@Autowired
	public InterMemberDAO mdao ; 
	
	@Override
	public UserDetails loadUserByUsername(String username ) throws UsernameNotFoundException {
		MemberVO mvo = mdao.login(username) ;
		if ( mvo == null ) {
			throw new UsernameNotFoundException("UsernameNotFoundException");
		}
		System.out.println(" USERDETAILS 부분 확인용 : "+mvo);
		List<GrantedAuthority>  roles = new ArrayList<>();
		roles.add(new SimpleGrantedAuthority("ROLE_USER"));
		// 추후에 관리자가 들어오거나 COMPANY 가 들어오면 다르게 정의해준다. 
		
		MemberContext memberContext = new MemberContext(mvo ,  roles);
		
		return memberContext ;
				
	}

}
