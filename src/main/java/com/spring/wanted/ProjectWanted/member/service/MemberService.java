package com.spring.wanted.ProjectWanted.member.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.wanted.ProjectWanted.company.model.CompanyVO;
import com.spring.wanted.ProjectWanted.member.model.InterMemberDAO;
import com.spring.wanted.ProjectWanted.member.model.MemberVO;
import com.spring.wanted.ProjectWanted.post.model.PostVO;

@Service
public class MemberService implements InterMemberService{


	private final InterMemberDAO mdao ;

	@Autowired
	public MemberService(InterMemberDAO mdao) {
		this.mdao = mdao;
	}


	@Override
	public String checkUserid(String userid) {
		int n = mdao.checkUserid(userid);
		if ( n == 1 ) {
			return  "tiles1/member/loginpassword" ;
		}
		else {
			return "tiles1/member/signup"; 
		}
	}


	@Override
	public void register(MemberVO mvo) {
		mdao.register(mvo);
	
	}


	@Override
	public PostVO getPostVO(int post_code) {
		PostVO pvo = mdao.getPostVO(post_code);
		return pvo;
	}


	@Override
	public CompanyVO getCompanyVO(int post_code) {
		CompanyVO cvo = mdao.getCompanyVO(post_code);
		return cvo;
	}


	@Override
	public List<String> getImageList(String company_id) {
		List<String> imageList = mdao.getImageList(company_id);
		return imageList ;
	}
	




}
