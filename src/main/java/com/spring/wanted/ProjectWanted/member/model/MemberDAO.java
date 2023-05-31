package com.spring.wanted.ProjectWanted.member.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.spring.wanted.ProjectWanted.member.mapper.InterMemberMapper;

@Component
@Repository
public class MemberDAO implements InterMemberDAO {

	private final InterMemberMapper mapper ;
	
	@Autowired
	public MemberDAO (InterMemberMapper mapper) {
		this.mapper = mapper ;
	}

	@Override
	public int checkUserid(String userid) {
		int n = mapper.checkUserid(userid);
		
		return n ;
	}


}
