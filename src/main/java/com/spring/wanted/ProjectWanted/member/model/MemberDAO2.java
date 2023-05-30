package com.spring.wanted.ProjectWanted.member.model;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.spring.wanted.ProjectWanted.member.mapper.InterMemberMapper;

@Component
@Repository
public class MemberDAO2 implements InterMemberDAO2 {

	@Autowired
	private InterMemberMapper mapper ;

	


}
