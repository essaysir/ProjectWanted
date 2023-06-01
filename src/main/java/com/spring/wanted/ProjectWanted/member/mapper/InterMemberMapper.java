package com.spring.wanted.ProjectWanted.member.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface InterMemberMapper {

	int checkUserid(String userid); // 동일한 아이디가 존재하는지 알아오는 메소드
}
