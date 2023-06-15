package com.spring.wanted.ProjectWanted.member.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.spring.wanted.ProjectWanted.company.model.CompanyVO;
import com.spring.wanted.ProjectWanted.member.model.MemberVO;
import com.spring.wanted.ProjectWanted.member.model.ResumeVO;
import com.spring.wanted.ProjectWanted.post.model.PostVO;

@Mapper
public interface InterMemberMapper {

	int checkUserid(String userid); // 동일한 아이디가 존재하는지 알아오는 메소드

	MemberVO login(String username); // 스프링 시큐리티를 통한 회원 로그인 실행

	void register(MemberVO mvo); // 

	CompanyVO login_comp(String username); // 스프링 시큐리티를 통한 기업 로그인 실행

	PostVO getPostVO(int post_code);

	CompanyVO getCompanyVO(int post_code);

	List<String> getImageList(String company_id);

	List<ResumeVO> getResumeList(String userid);

	int apply(Map<String, String> paraMap);
	
}
