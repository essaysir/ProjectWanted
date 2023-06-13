package com.spring.wanted.ProjectWanted.member.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.spring.wanted.ProjectWanted.member.model.MemberVO;

public interface InterMemberService3 {
	
	// 멤버 정보가져오기
	List<Map<String, String>> getMemberInfo(String userid);
	
	// 이름업데이트하기
	int nameUpdate(Map<String, String> paraMap);
	
	// 닉네임업데이트하기
	int nickUpdate(Map<String, String> paraMap);
	
	//비밀번호 일치 여부
	String getPasswd(String userid);
	
	// 패스워드 업데이트하기
	int passwdUpdate(Map<String, String> paraMap);
	
	// 프로필사진업데이트하기
	int profileImageUpdate(MemberVO membervo, MultipartHttpServletRequest mrequest);
	
	// 회원탈퇴처리
	int memberExit(String userid, HttpServletRequest request);

	

}
