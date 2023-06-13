package com.spring.wanted.ProjectWanted.member.service;

import java.io.File;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.spring.wanted.ProjectWanted.common.common.FileManager;
import com.spring.wanted.ProjectWanted.member.model.InterMemberDAO3;
import com.spring.wanted.ProjectWanted.member.model.MemberVO;

@Service
public class MemberService3 implements InterMemberService3 {
	
	private final InterMemberDAO3 mdao ;

	@Autowired
	public MemberService3(InterMemberDAO3 mdao) {
		this.mdao = mdao;
	}
	
	@Autowired
	private FileManager fileManager;
	
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
	
	// 프로필사진업데이트하기
	@Override
	public int profileImageUpdate(MemberVO membervo, MultipartHttpServletRequest mrequest) {
		
		MultipartFile attach = membervo.getAttach();
		String userid = membervo.getUserid();
		//System.out.println(attach.getOriginalFilename());
		if(!attach.isEmpty() ) {
			
			HttpSession session = mrequest.getSession();
			
			String root = session.getServletContext().getRealPath("/").substring(0, 30);
			
			String path = root + "resources" + File.separator + "static" + File.separator + "images" + File.separator + "profile_image";
			
			String newFileName = "";
			
			membervo = mdao.getMemberImage(userid);
			
			String image = membervo.getProfile_image();
			
			if(!image.equals("profile_default.png")) {
								
				try {
					fileManager.doFileDelete(image, path);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			
			//System.out.println("root" + root);
			//System.out.println("path" + path);
			byte[] bytes = null;
			
			try {
				
				bytes = attach.getBytes();
				
				String OriginalFilename = attach.getOriginalFilename();
				
				newFileName = fileManager.doFileUpload(bytes, OriginalFilename, path);
				//System.out.println("newFileName" + newFileName);
				membervo.setProfile_image(newFileName);
				
			} catch ( Exception e ) {
				e.printStackTrace();
			}
			 
		}
		
		int n = mdao.profileImageUpdate(membervo);
		
		return n;
		
	}
	
	//회원탈퇴 처리
	@Override
	public int memberExit(String userid, MultipartHttpServletRequest mrequest) {
		
		MemberVO membervo = mdao.getMemberImage(userid);
		
		HttpSession session = mrequest.getSession();
		
		String root = session.getServletContext().getRealPath("/").substring(0, 30);
		
		String path = root + "resources" + File.separator + "static" + File.separator + "images" + File.separator + "profile_image";
		
		String image = membervo.getProfile_image();
		
		if(!image.equals("profile_default.png")) {
							
			try {
				fileManager.doFileDelete(image, path);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		int n = mdao.memberExit(userid);
		
		
		return n;
	}
	

}
