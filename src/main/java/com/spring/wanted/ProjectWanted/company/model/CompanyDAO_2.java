package com.spring.wanted.ProjectWanted.company.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.spring.wanted.ProjectWanted.common.common.FileManager;
import com.spring.wanted.ProjectWanted.company.mapper.InterCompanyMapper_2;
import com.spring.wanted.ProjectWanted.company.model.CompanyVO;
import com.spring.wanted.ProjectWanted.post.model.PostVO;

@Component
@Repository
public class CompanyDAO_2 implements InterCompanyDAO_2 {
	
	private final InterCompanyMapper_2 mapper;
	
	@Autowired
	public CompanyDAO_2(InterCompanyMapper_2 mapper) {
		this.mapper = mapper;
	}
	
	@Autowired
	private FileManager fileManager;
	
	// job_select에필요한 값 가져오기	
	@Override
	public List<Map<String, String>> getJobList() {
		
		List<Map<String, String>> JobList = mapper.getJobList();
		
		return JobList;
	}
	
	// job_select에 따라 해당되는 duty_select 가져오기
	@Override
	public List<Map<String, String>> getDutyList(String jobCode) {
		List<Map<String, String>> dutyList = mapper.getDutyList(jobCode);
		return dutyList;
	}
	
	// TBL_POST에 등록하기
	@Override
	public void insertRecruit(PostVO postvo) {
		
		mapper.insertRecruit(postvo);
	}
	
	// TBL_POST에 등록하기
	@Override
	@Transactional(propagation=Propagation.REQUIRED, isolation=Isolation.READ_COMMITTED, rollbackFor= {Throwable.class})
	public void insertRecruitSkil(PostVO postvo, List<String> techcode) {
		
		int n=0;
		
		n=mapper.insertRecruit(postvo);
		
		
		if( n ==1 ) {
			String post_code = postvo.getPost_code();
			
			System.out.println(post_code);
			
			Map<String, String> paraMap = new HashMap<>();
			
			paraMap.put("post_code", post_code);
			
			for(int i =0; i<techcode.size(); i++) {
				paraMap.put("fk_tech_code", techcode.get(i));
				
				mapper.insertTech(paraMap);
			}
		}
		
				
	}
	
	// 채용공고관리페이지 띄우기
	@Override
	public int getTotalPost(String company_id) {
		int totalPost = mapper.getTotalPost(company_id);
		
		return totalPost;
	}
	
	//ajax로 Post호출하기
	@Override
	public List<Map<String, String>> getPost(Map<String, String> paraMap) {
		List<Map<String, String>> postList = mapper.getPost(paraMap);
		return postList;
	}
	
	//ajax로 수정페이지 띄우기
	@Override
	public List<Map<String, String>> getEditRecruit(String post_code) {
		
		List<Map<String, String>> editRecruit = mapper.getEditRecruit(post_code);
		
		return editRecruit;
	}
	
	// 수정한거 등록하기
	@Override
	public void updateRecruit(PostVO postvo) {
		mapper.updateRecruit(postvo);
		
	}
	
	// 기간만료 공고 삭제하기 
	@Override
	public int deleteRecruit(String post_code, Map<String, String> paraMap) {
		
		int n = mapper.deleteRecruit(post_code);
		
		// === # 165.파일첨구가 된글이라면~~
		if(n==1){
			String path = paraMap.get("path");
			String image = paraMap.get("image");

			if( image != null && !"".equals(image)){
				try {
					fileManager.doFileDelete(image, path);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}
		
		return n;
	}
	
	// 공고 중단하기
	@Override
	public int stopRecruit(String post_code) {
		int n = mapper.stopRecruit(post_code);
		return n;
	}
	
	//ajax로 결제 상세페이지 띄우기
	@Override
	public List<Map<String, String>> viewPostPayment(String post_code) {

		List<Map<String, String>> postPayment = mapper.getEditRecruit(post_code);
		
		return postPayment;
	}
	
	//결제완료 후 pay_status update하기
	@Override
	public void updatePostPayment(String post_code) {
		mapper.updatePostPayment(post_code);
		
	}
	
	//ajax로 연장상세페이지 띄우기
	@Override
	public List<Map<String, String>> viewExtendPost(String post_code) {

		List<Map<String, String>> extendPost = mapper.viewExtendPost(post_code);
		
		return extendPost;
	}
	
	//결제완료 후 deadline update하기
	@Override
	public void updateExtendPost(String post_code) {

		mapper.updateExtendPost(post_code);
		
	}
	
	// 공고삭제를위한 하나의 공고 가져오기
	@Override
	public PostVO getOneRecruit(String post_code) {
		PostVO oneRecruit = mapper.getOneRecruit(post_code);
		
		return oneRecruit;
	}

	//멤버정보가져오기
	@Override
	public List<Map<String, String>> getCompanyInfo(String company_id) {
		List<Map<String, String>> companyInfo = mapper.getCompanyInfo(company_id);
		
		return companyInfo;
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
	public String getPasswd(String company_id) {
		
		String getPasswd = mapper.getPasswd(company_id);
		
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
	public int profileImageUpdate(CompanyVO companyvo) {

		int n = mapper.profileImageUpdate(companyvo);
		return n;
	}
	
	// 원래프로필이미지 가져오기
	@Override
	public CompanyVO getCompanyImage(String company_id) {
		CompanyVO companyImage = mapper.getCompanyImage(company_id);
		return companyImage;
	}
	
	// 회원탈퇴하기
	@Override
	public int companyExit(String company_id) {
		int n = mapper.companyExit(company_id);
		return n;
	}

}
