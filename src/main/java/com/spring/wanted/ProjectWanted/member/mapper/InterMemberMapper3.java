package com.spring.wanted.ProjectWanted.member.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface InterMemberMapper3 {
	
	//멤버정보가져오기
	List<Map<String, String>> getMemberInfo(String userid);
	
	//이름업데이트하기
	int nameUpdate(Map<String, String> paraMap);
	
	//닉네임업데이트하기
	int nickUpdate(Map<String, String> paraMap);
	
	//패스워드가져오기	
	String getPasswd(String userid);
	
	//패스워드 업데이트하기
	int passwdUpdate(Map<String, String> paraMap);

	

}
