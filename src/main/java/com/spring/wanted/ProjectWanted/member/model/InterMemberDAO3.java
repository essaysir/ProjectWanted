package com.spring.wanted.ProjectWanted.member.model;

import java.util.List;
import java.util.Map;

public interface InterMemberDAO3 {
	
	//멤버 정보가져오기
	List<Map<String, String>> getMemberInfo(String userid);
	
	//이름 업데이트하기
	int nameUpdate(Map<String, String> paraMap);
	
	//이름 업데이트하기
	int nickUpdate(Map<String, String> paraMap);
	
	//패스워드가져오기
	String getPasswd(String userid);
	
	//패스워드 업데이트하기
	int passwdUpdate(Map<String, String> paraMap);

}
