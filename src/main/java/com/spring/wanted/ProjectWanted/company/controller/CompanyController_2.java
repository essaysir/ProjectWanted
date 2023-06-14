package com.spring.wanted.ProjectWanted.company.controller;


import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.spring.wanted.ProjectWanted.company.model.CompanyVO;
import com.spring.wanted.ProjectWanted.company.service.InterCompanyService_2;
import com.spring.wanted.ProjectWanted.post.model.PostVO;

@RequestMapping("/wanted/company")
@Controller
public class CompanyController_2 {
	
	private final InterCompanyService_2 service ; 
	
	private final PasswordEncoder passwordEncoder ;
	
	@Autowired
	public CompanyController_2(InterCompanyService_2 service, PasswordEncoder passwordEncoder) {
	 this.service = service ;
	 this.passwordEncoder = passwordEncoder ;
	}
	
	// job_select에필요한 값 가져오기	
	@GetMapping(value="/recruit")
	public String recruit(HttpServletRequest request){
		
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		CompanyVO mvo = (CompanyVO)authentication.getPrincipal();
		String company_id = mvo.getCompany_id();
		
		List<Map<String, String>> JobList = service.getJobList();
		
		request.setAttribute("JobList", JobList);
		request.setAttribute("company_id", company_id);
		
		
		return "company/company_recruit.tiles2";
	}
	
	// TBL_POST에 등록하기
	@PostMapping(value="/recruit", produces = "text/plain;charset=UTF-8")
	public String recruit(PostVO postvo, @RequestParam(value="tech_code", required = false) List<String> techcode, MultipartHttpServletRequest mrequest){
		
			
			if(techcode != null && techcode.size() > 0) {
				service.insertRecruitSkil(postvo, techcode, mrequest);
			} else {				
				service.insertRecruit(postvo, mrequest);
			}
			
		
		
		return "redirect:jobPost";
				
	}
	
	// job_select에 따라 해당되는 duty_select 가져오기
	@ResponseBody
	@GetMapping(value="/getDuty", produces = "text/plain;charset=UTF-8")
	public String dutySelect(HttpServletRequest request, @RequestParam("jobCode") String jobCode){
		List<Map<String, String>> dutyList = service.getDutyList(jobCode);
		
		JSONObject jsonObj = new JSONObject();
		jsonObj.put("dutyList", dutyList);
		
		return jsonObj.toString();
	}
	
	// 채용공고관리페이지 띄우기
	@GetMapping(value="/jobPost")
	public String jobPost(HttpServletRequest request) {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		CompanyVO mvo = (CompanyVO)authentication.getPrincipal();
		String company_id = mvo.getCompany_id();
		
		int totalPost = service.getTotalPost(company_id);
		
		request.setAttribute("totalPost", totalPost);
		request.setAttribute("company_id", company_id);
				
		return "company/company_jobPost.tiles2";
	}
	
	//ajax로 Post호출하기
	@ResponseBody
	@PostMapping(value="/getPost", produces = "text/plain;charset=UTF-8")
	public String getPost(HttpServletRequest request, @RequestParam Map<String, String> paraMap){
				
		String json = service.getPost(paraMap);
		

		return json;

	}	
		
	//ajax로 수정페이지 띄우기
	@GetMapping(value="/getEditRecruit", produces = "text/plain;charset=UTF-8")
	public String getRecruit(HttpServletRequest request, @RequestParam("post_code") String post_code) {
		
		List<Map<String,String>> editRecruit = service.getEditRecruit(post_code);
		
		request.setAttribute("editRecruit", editRecruit);
		
		return "tiles2/company/content/editRecruit";
	}
	
	// 수정한거 등록하기
	@PostMapping(value="/getEditRecruit", produces = "text/plain;charset=UTF-8")
	public String getRecruit(PostVO postvo){
		service.updateRecruit(postvo);
		
		return "redirect:jobPost";
				
	}
	
	// 기간만료 공고 삭제하기 
	@ResponseBody
	@GetMapping(value="/deleteRecruit", produces = "text/plain;charset=UTF-8")
	public String deleteRecruit(HttpServletRequest request, @RequestParam("post_code") String post_code){
		
		int n = service.deleteRecruit(post_code, request);
		
	    if (n==1) {
	        return "success";
	    } else {
	        return "fail";
	    }

	}
	
	// 공고 중단하기 
	@ResponseBody
	@GetMapping(value="/stopRecruit", produces = "text/plain;charset=UTF-8")
	public String stopRecruit(@RequestParam("post_code") String post_code){
				
		int n = service.stopRecruit(post_code);
		
	    if (n==1) {
	        return "success";
	    } else {
	        return "fail";
	    }

	}
	
	//ajax로 결제 상세페이지 띄우기
	@GetMapping(value="/viewPostPayment", produces = "text/plain;charset=UTF-8")
	public String viewPostPayment(HttpServletRequest request, @RequestParam("post_code") String post_code) {
		
		List<Map<String,String>> postPayment = service.viewPostPayment(post_code);
		
		request.setAttribute("postPayment", postPayment);
		
		return "tiles2/company/content/postPayment";
	}
	
	//아임포트 결제페이지 이동
	@PostMapping(value="/goPostPayment", produces = "text/plain;charset=UTF-8")
	public String goPostPayment(HttpServletRequest request, @RequestParam("post_code") String post_code) {
		
		String name = "공고연장대금 결제";
		
		int payorextend = 0;
		
		request.setAttribute("post_code", post_code);
		request.setAttribute("payorextend", payorextend);
		request.setAttribute("name", name);
		
		return "company/paymentGateway.tiles2";
	}
	
	//결제완료 후 pay_status update하기
	@PostMapping(value="/updatePostPayment")
	public String updatePostPayment(@RequestParam("post_code") String post_code) {
		
		service.updatePostPayment(post_code);
		
		return "redirect:jobPost";
	}
		
		
	//ajax로 연장상세페이지 띄우기
	@GetMapping(value="/viewExtendPost", produces = "text/plain;charset=UTF-8")
	public String viewExtendPost(HttpServletRequest request, @RequestParam("post_code") String post_code) {
		
		List<Map<String,String>> extendPost = service.viewExtendPost(post_code);
		
		request.setAttribute("extendPost", extendPost);
		
		return "tiles2/company/content/extendPost";
	}
	
	//아임포트 결제페이지 이동
	@PostMapping(value="/goExtendPost", produces = "text/plain;charset=UTF-8")
	public String goExtendPost(HttpServletRequest request, @RequestParam("post_code") String post_code) {
				
		String name = "공고연장대금 결제";
		
		int payorextend = 1;
		
		request.setAttribute("post_code", post_code);
		request.setAttribute("payorextend", payorextend);
		request.setAttribute("name", name);
		
		
		return "company/paymentGateway.tiles2";
	}
	
	//결제완료 후 deadline update하기
	@PostMapping(value="/updateExtendPost")
	public String updateExtendPost(@RequestParam("post_code") String post_code) {
		
		service.updateExtendPost(post_code);
		
		return "redirect:jobPost";
	}
	
	// 멤버 정보가져오기
	@GetMapping(value="/companyInfo")
	public String getCompanyInfo(HttpServletRequest request) {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		CompanyVO mvo = (CompanyVO)authentication.getPrincipal();
		String company_id = mvo.getCompany_id();
					
		List<Map<String,String>> companyinfo = service.getCompanyInfo(company_id);
		
		request.setAttribute("companyinfo", companyinfo);
		
		return "company/companyInfo.tiles2";
		
	}
	
	// 이름업데이트하기
	@ResponseBody
	@GetMapping(value="/nameUpdate", produces = "text/plain;charset=UTF-8")
	public String nameUpdate(@RequestParam Map<String, String> paraMap){
					
		int n = service.nameUpdate(paraMap);
		
	    if (n==1) {
	        return "success";
	    } else {
	        return "fail";
	    }

	}
	
	// 닉네임업데이트하기
	@ResponseBody
	@GetMapping(value="/nickUpdate", produces = "text/plain;charset=UTF-8")
	public String nickUpdate(@RequestParam Map<String, String> paraMap){
					
		int n = service.nickUpdate(paraMap); 
		
	    if (n==1) {
	        return "success";
	    } else {
	        return "fail";
	    }

	}
	
	//비밀번호 일치 여부
	@ResponseBody
	@GetMapping(value="/pwdCheck", produces = "text/plain;charset=UTF-8")
	public String pwdCheck(HttpServletRequest request, @RequestParam Map<String, String> paraMap){
		
		String inputPwd = paraMap.get("inputPwd");
		
		String company_id = paraMap.get("company_id");
		
		String passwd = service.getPasswd(company_id);
		
		  if ( passwordEncoder.matches(inputPwd, passwd )) {
	        return "success";
	    } else {
	        return "fail";		        
	    }

	}
	
	// 비밀번호업데이트하기
	@ResponseBody
	@GetMapping(value="/passwdUpdate", produces = "text/plain;charset=UTF-8")
	public String passwdUpdate(@RequestParam Map<String, String> paraMap){
					
		int n = service.passwdUpdate(paraMap); 
		
	    if (n==1) {
	        return "success";
	    } else {
	        return "fail";
	    }

	}
	
	// 프로필사진 변경
	@ResponseBody
	@PostMapping(value = "/profileImageUpdate", produces = "text/plain;charset=UTF-8")		
	public String profileImageUpdate(CompanyVO companyvo, MultipartHttpServletRequest mrequest) {
	    // membervo를 사용하여 필요한 데이터 처리

	    // attach 파일을 사용하여 프로필 사진 업데이트 처리
		int n = service.profileImageUpdate(companyvo, mrequest);

		if (n==1) {
	        return "success";
	    } else {
	        return "fail";
	    }
	}
	
	@GetMapping(value = "/companyExit")
	public String companyExit(HttpServletRequest request) {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		CompanyVO mvo = (CompanyVO)authentication.getPrincipal();
		String company_id = mvo.getCompany_id();
		
		List<Map<String,String>> companyinfo = service.getCompanyInfo(company_id);
		
		request.setAttribute("companyinfo", companyinfo);
		
		return "company/companyExit.tiles2";
	}
	
	// 프로필사진 변경
	@ResponseBody
	@PostMapping(value = "/companyExit", produces = "text/plain;charset=UTF-8")		
	public String companyExit(@RequestParam("company_id") String company_id, HttpServletRequest request, HttpServletResponse response) {
	    
		int n = service.companyExit(company_id, request);

		if (n==1) {
			Authentication authentication = SecurityContextHolder.getContext().getAuthentication() ;
			if  ( authentication != null ) {
				new SecurityContextLogoutHandler().logout(request, response, authentication);
			}
	        return "success";
	    } else {
	        return "fail";
	    }
	}
	
	// 회사상세이미지 업로드
	@ResponseBody
	@PostMapping(value = "/companyDetailImageUpload", produces = "text/plain;charset=UTF-8")		
	public String companyDetailImageUpload(@RequestParam Map<String, String> paraMap, MultipartHttpServletRequest mrequest) {
	    // membervo를 사용하여 필요한 데이터 처리

	    // attach 파일을 사용하여 프로필 사진 업데이트 처리
		int n = service.companyDetailImageUpload(paraMap, mrequest);

		if (n==1) {
	        return "success";
	    } else {
	        return "fail";
	    }
	}
	
	
	//===============================SJS시작==================================
	@ResponseBody
	@GetMapping(value="/getHeaderList" , produces = "text/plain;charset=UTF-8" )
	public String getHeaderList() {
		List<Map<String,String>> jobList = service.getJobList();
		
		JSONObject jsonobj = new JSONObject();
		
		jsonobj.put("jobList", jobList);
		
		return jsonobj.toString();
	}
	
	@GetMapping(value="/login")
	public String Login() {
	
		return "tiles2/company/content/company_login";
	}
	
	//===============================SJS끝==================================

}
