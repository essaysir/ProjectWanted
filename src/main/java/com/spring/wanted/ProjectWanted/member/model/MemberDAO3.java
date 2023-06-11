package com.spring.wanted.ProjectWanted.member.model;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.spring.wanted.ProjectWanted.member.mapper.InterMemberMapper3;

@Component
@Repository
public class MemberDAO3 implements InterMemberDAO3 {
	
	private final InterMemberMapper3 mapper;

	@Autowired
	public MemberDAO3 (InterMemberMapper3 mapper) {
		this.mapper = mapper;
	}
	
	//멤버정보가져오기
	@Override
	public List<Map<String, String>> getMemberInfo(String userid) {
		List<Map<String, String>> memberInfo = mapper.getMemberInfo(userid);
		
		return memberInfo;
	}
	
	//이름업데이트하기
	@Override
	public int nameUpdate(Map<String, String> paraMap) {
		
		int n = mapper.nameUpdate(paraMap);
		
		return n;
	}
	
	//닉네임업데이트하기
	@Override
	public int nickUpdate(Map<String, String> paraMap) {
		
		int n = mapper.nickUpdate(paraMap);
		
		return n;
	}
	
	//패스워드가져오기
	@Override
	public String getPasswd(String userid) {
		
		String getPasswd = mapper.getPasswd(userid);
		
		return getPasswd;
	}
	
	//패스워드 업데이트하기
	@Override
	public int passwdUpdate(Map<String, String> paraMap) {
		int n = mapper.passwdUpdate(paraMap);
		return n;
	}

	

}
