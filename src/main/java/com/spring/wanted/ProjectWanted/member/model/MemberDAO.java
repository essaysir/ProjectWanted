package com.spring.wanted.ProjectWanted.member.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.spring.wanted.ProjectWanted.company.model.CompanyVO;
import com.spring.wanted.ProjectWanted.member.mapper.InterMemberMapper;
import com.spring.wanted.ProjectWanted.post.model.PostVO;

@Component
@Repository
public class MemberDAO implements InterMemberDAO {

	private final InterMemberMapper mapper ;
	
	@Autowired
	public MemberDAO (InterMemberMapper mapper) {
		this.mapper = mapper ;
	}

	@Override
	public int checkUserid(String userid) {
		int n = mapper.checkUserid(userid);
		
		return n ;
	}

	@Override
	public MemberVO login(String username) {
		MemberVO mvo = mapper.login(username);
		return mvo ;
	}

	@Override
	public void register(MemberVO mvo) {
		 mapper.register(mvo);
	}

	@Override
	public CompanyVO login_comp(String username) {
		CompanyVO cvo = mapper.login_comp(username);
		return cvo;
	}

	@Override
	public PostVO getPostVO(int post_code) {
		PostVO pvo = mapper.getPostVO(post_code);
		return pvo ;
	}


}
