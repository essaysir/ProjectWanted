package com.spring.wanted.ProjectWanted.member.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.spring.wanted.ProjectWanted.member.model.MemberVO;

@Mapper
public interface InterMemberMapper {

	int checkUserid(String userid); // 동일한 아이디가 존재하는지 알아오는 메소드

	MemberVO login(String username); // 스프링 시큐리티를 통한 로그인 실행

	void register(MemberVO mvo); // 
}
