package com.spring.wanted.ProjectWanted.security.config;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.spring.wanted.ProjectWanted.company.model.CompanyVO;
import com.spring.wanted.ProjectWanted.member.model.InterMemberDAO;

@Service
public class Companydetails implements UserDetailsService {

	@Autowired
	public InterMemberDAO mdao ; 
	
	@Override
	public UserDetails loadUserByUsername(String username ) throws UsernameNotFoundException {
		CompanyVO cvo = mdao.login_comp(username) ;
		if ( cvo == null ) {
			throw new UsernameNotFoundException("UsernameNotFoundException");
		}
		System.out.println(" USERDETAILS 부분 확인용 : "+cvo);
		List<GrantedAuthority>  roles = new ArrayList<>();
		roles.add(new SimpleGrantedAuthority("ROLE_COMPANY"));
		// 추후에 관리자가 들어오거나 COMPANY 가 들어오면 다르게 정의해준다. 
		CompanyContext companyContext = new CompanyContext(cvo, roles);
		
		return companyContext ;
				
	}

}
