package com.spring.wanted.ProjectWanted.member.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface InterMemberMapper {
	 
	String test_select();

	List<String> getJob();

    List<String> getDuty(String jobname);
}
