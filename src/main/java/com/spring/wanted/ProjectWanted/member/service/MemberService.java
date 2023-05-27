package com.spring.wanted.ProjectWanted.member.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.wanted.ProjectWanted.member.model.InterMemberDAO;

@Service
public class MemberService implements InterMemberService{

	@Autowired
	private InterMemberDAO mdao ; 
	
	@Override
	public List<String> getJob() {
		List<String> JobList = mdao.getJob();
		
		return JobList;
	}

	
}
