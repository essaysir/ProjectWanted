package com.spring.wanted.ProjectWanted.company.service;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.google.gson.Gson;
import com.spring.wanted.ProjectWanted.common.common.FileManager;
import com.spring.wanted.ProjectWanted.company.model.InterCompanyDAO_2;
import com.spring.wanted.ProjectWanted.post.model.PostVO;

@Service
public class CompanyService_2 implements InterCompanyService_2 {
	
	private final InterCompanyDAO_2 cdao;
	
	@Autowired
	public CompanyService_2(InterCompanyDAO_2 cdao) {
		this.cdao = cdao;
	}
	
	@Autowired
	private FileManager fileManager;
	
	// job_select에필요한 값 가져오기	
	@Override
	public List<Map<String, String>> getJobList() {

		List<Map<String, String>> JobList = cdao.getJobList();
		
		return JobList;
	}
	
	// job_select에 따라 해당되는 duty_select 가져오기
	@Override
	public List<Map<String, String>> getDutyList(String jobCode) {

		List<Map<String, String>> dutyList = cdao.getDutyList(jobCode);
		
		return dutyList;
	}
	
	// TBL_POST에 등록하기
	@Override
	public void insertRecruit(PostVO postvo, MultipartHttpServletRequest mrequest) {
		
		MultipartFile attach = postvo.getAttach();
		System.out.println(attach.getOriginalFilename());
		if(!attach.isEmpty() ) {
			
			HttpSession session = mrequest.getSession();
			String root = session.getServletContext().getRealPath("/").substring(0, 30);
			
			String path = root + "resources" + File.separator + "static" + File.separator + "images" + File.separator + "post_image";
			
			String newFileName = "";
			
			System.out.println("root" + root);
			System.out.println("path" + path);
			
			byte[] bytes = null;
			
			try {
				
				bytes = attach.getBytes();
				
				String OriginalFilename = attach.getOriginalFilename();
				
				newFileName = fileManager.doFileUpload(bytes, OriginalFilename, path);
				System.out.println("newFileName" + newFileName);
				postvo.setImage(newFileName);
				
			} catch ( Exception e ) {
				e.printStackTrace();
			}
			 
		}
		
		cdao.insertRecruit(postvo);
		
	}
	
	@Override
	public void insertRecruitSkil(PostVO postvo, List<String> techcode, MultipartHttpServletRequest mrequest) {
		cdao.insertRecruitSkil(postvo, techcode);
		
	}
	
	// 채용공고관리페이지 띄우기
	@Override
	public int getTotalPost(String id) {
		int totalPost = cdao.getTotalPost(id);
		
		return totalPost;
	}
	
	//ajax로 Post호출하기
	@Override
	public String getPost(Map<String, String> paraMap) {
		
		String fk_company_id = paraMap.get("fk_company_id");
		String start = paraMap.get("start");
		String len = paraMap.get("len");
		
		String end = String.valueOf(Integer.parseInt(start)+ Integer.parseInt(len)-1);
		
		paraMap.put("fk_company_id", fk_company_id);
		paraMap.put("start", start);
		paraMap.put("end", end);
		
		
		List<Map<String, String>> postList = cdao.getPost(paraMap);
		
		
		Gson gson = new Gson();
		String result = gson.toJson(postList);
		
		return result;
	}
	
	//ajax로 수정페이지 띄우기
	@Override
	public List<Map<String, String>> getEditRecruit(String post_code) {
		
		List<Map<String, String>> editRecruit = cdao.getEditRecruit(post_code);
		
		return editRecruit;
	}
	
	// 수정한거 등록하기
	@Override
	public void updateRecruit(PostVO postvo) {
		cdao.updateRecruit(postvo);
	}
	
	// 기간만료 공고 삭제하기 
	@Override
	public int deleteRecruit(String post_code, HttpServletRequest request) {
		
		Map<String, String> paraMap = new HashMap<>();
		
		// 공고삭제를위한 하나의 공고 가져오기
		PostVO postvo = cdao.getOneRecruit(post_code);
		
		String image = postvo.getImage();
		
		if(image != null && !"".equals(image)) {
			HttpSession session = request.getSession();
			String root = session.getServletContext().getRealPath("/").substring(0, 30);
			String path = root + "resources" + File.separator + "static" + File.separator + "images" + File.separator + "post_image";
			
			paraMap.put("path", path); // 삭제해얗할 파일이 저장된 경로
			paraMap.put("image", image); // 삭제해야될 파일명
		}
		
		int n = cdao.deleteRecruit(post_code, paraMap);
		
	    return n;
	}
	
	// 공고 중단 하기 
	@Override
	public int stopRecruit(String post_code) {
		
		int n = cdao.stopRecruit(post_code);
		
	    return n;
	}
	
	//ajax로 결제 상세페이지 띄우기
	@Override
	public List<Map<String, String>> viewPostPayment(String post_code) {
		
		List<Map<String, String>> postPayment = cdao.viewPostPayment(post_code);
		
		return postPayment;
	}
	
	//결제완료 후 pay_status update하기
	@Override
	public void updatePostPayment(String post_code) {

		cdao.updatePostPayment(post_code);
		
	}
	
	//ajax로 연장상세페이지 띄우기
	@Override
	public List<Map<String, String>> viewExtendPost(String post_code) {

		List<Map<String, String>> extendPost = cdao.viewExtendPost(post_code);
		
		return extendPost;
	}
	
	//결제완료 후 deadline update하기
	@Override
	public void updateExtendPost(String post_code) {

		cdao.updateExtendPost(post_code);
		
	}
	
}
