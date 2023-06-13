package com.spring.wanted.ProjectWanted.security.config;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;

import com.spring.wanted.ProjectWanted.company.model.CompanyVO;
import com.spring.wanted.ProjectWanted.member.model.MemberVO;


@SuppressWarnings("serial")
public class CompanyContext extends User {

	private final CompanyVO cvo;
	
	@Autowired
	public CompanyContext(CompanyVO cvo , Collection<? extends GrantedAuthority> authorities) {
		super(cvo.getCompany_id() , cvo.getPwd() , authorities);
		this.cvo = cvo ;
	}
	
	public CompanyVO getCompanyVO() {
		return cvo ;
	}

}
