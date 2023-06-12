package com.spring.wanted.ProjectWanted.member.mapper;


import org.apache.ibatis.annotations.Mapper;

import com.spring.wanted.ProjectWanted.member.model.ResumeVO;

@Mapper
public interface InterMemberMapper2 {

	void insertResume(ResumeVO resumevo);

	 
	
}
