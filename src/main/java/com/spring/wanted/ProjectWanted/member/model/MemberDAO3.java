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
	
	// 프로필사진업데이트하기
	@Override
	public int profileImageUpdate(MemberVO membervo) {

		int n = mapper.profileImageUpdate(membervo);
		return n;
	}
	
	// 원래프로필이미지 가져오기
	@Override
	public MemberVO getMemberImage(String userid) {
		MemberVO memberImage = mapper.getMemberImage(userid);
		return memberImage;
	}
	
	// 회원탈퇴하기
	@Override
	public int memberExit(String userid) {
		int n = mapper.memberExit(userid);
		return n;
	}
	
	// 멤버가 작성한 이력서 가져오기
	@Override
	public List<ResumeVO> getMyresume(String fk_userid) {
		
		List<ResumeVO> resumeList = mapper.getMyresume(fk_userid);
		
		return resumeList;
	}
	

}
