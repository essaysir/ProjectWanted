package com.spring.wanted.ProjectWanted.member.service;

import java.util.List;
import java.util.Map;

import com.spring.wanted.ProjectWanted.company.model.CompanyVO;
import com.spring.wanted.ProjectWanted.member.model.MemberVO;
import com.spring.wanted.ProjectWanted.member.model.ResumeVO;
import com.spring.wanted.ProjectWanted.post.model.PostVO;

public interface InterMemberService {

	String checkUserid(String userid); // Login 화면에서 아이디를 체크해주는 것

	void register(MemberVO mvo); // 회원가입 하기 

	PostVO getPostVO(int post_code);

	CompanyVO getCompanyVO(int post_code);

	List<String> getImageList(String company_id);  // Detail 페이지에 쓰기 위한 List

	List<ResumeVO> getResumeList(String userid);

	int apply(Map<String, String> paraMap); 

}
