package com.spring.wanted.ProjectWanted.member.model;

import java.util.List;
import java.util.Map;

import com.spring.wanted.ProjectWanted.company.model.CompanyVO;
import com.spring.wanted.ProjectWanted.post.model.PostVO;

public interface InterMemberDAO {

	int checkUserid(String userid); // 

	MemberVO login(String username); // 멤버 회원 로그인 설정

	void register(MemberVO mvo); // 회원가입하기 

	CompanyVO login_comp(String username); // 회사 회원 로그인 설정

	PostVO getPostVO(int post_code); // POST_DETAIL 정보가져오기

	CompanyVO getCompanyVO(int post_code); // COMPANY_VO 가져오기

	List<String> getImageList(String company_id);

	List<ResumeVO> getResumeList(String userid);

	int apply(Map<String, String> paraMap);
}
