package com.spring.wanted.ProjectWanted.member.service;

import java.util.List;
import java.util.Map;

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

	

}
