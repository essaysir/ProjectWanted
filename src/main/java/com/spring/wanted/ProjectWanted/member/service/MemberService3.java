package com.spring.wanted.ProjectWanted.member.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.wanted.ProjectWanted.member.model.InterMemberDAO3;

@Service
public class MemberService3 implements InterMemberService3 {
	
	private final InterMemberDAO3 mdao ;

	@Autowired
	public MemberService3(InterMemberDAO3 mdao) {
		this.mdao = mdao;
	}
	
	//멤버 정보가져오기
	@Override
	public List<Map<String, String>> getMemberInfo(String userid) {
		
		List<Map<String, String>> memberInfo = mdao.getMemberInfo(userid);
		
		return memberInfo;
	}
	
	//이름 업데이트하기
	@Override
	public int nameUpdate(Map<String, String> paraMap) {
		int n = mdao.nameUpdate(paraMap);
		return n;
	}
	
	//이름 업데이트하기
	@Override
	public int nickUpdate(Map<String, String> paraMap) {
		int n = mdao.nickUpdate(paraMap);
		return n;
	}
	
	// 비밀번호 가져오기
	@Override
	public String getPasswd(String userid) {
		
		String getPasswd = mdao.getPasswd(userid);
		
		return getPasswd;
	}

	//패스워드 업데이트하기
	@Override
	public int passwdUpdate(Map<String, String> paraMap) {
		int n = mdao.passwdUpdate(paraMap);
		return n;
	}
	

}
