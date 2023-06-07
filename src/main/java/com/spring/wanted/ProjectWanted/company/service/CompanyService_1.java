package com.spring.wanted.ProjectWanted.company.service;

import java.util.List;
import java.util.Map;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.wanted.ProjectWanted.company.model.InterCompanyDAO_1;

@Service
public class CompanyService_1 implements InterCompanyService_1 {
	
	private final InterCompanyDAO_1 cdao;
	
	@Autowired
	public CompanyService_1(InterCompanyDAO_1 cdao) {
		this.cdao = cdao;
	}
	
	
	// 회사 지원자List 불러오기
	@Override
	public List<Map<String, String>> candidateList(Map<String, String> paraMap) {
		List<Map<String, String>> candidateList = cdao.getcandidateList(paraMap);
		return candidateList;
	}
	
	
	// 지원자List 페이징
	@Override
	public int getTotalCount(Map<String, String> paraMap) {
		int n = cdao.getTotalCount(paraMap);
		return n;
	}


	// 검색기능
	@Override
	public List<Map<String, String>> listSearchWithPaging(Map<String, String> paraMap) {
		List<Map<String, String>> candidateList = cdao.listSearchWithPaging(paraMap); 
		return candidateList;
	}


	// 지원자 이력서  가져오기
	@Override
	public List<Map<String, String>> candidateResume(Map<String, String> paraMap) {
		List<Map<String, String>> candidateResume = cdao.getResume(paraMap);
		return null;
	}
	
	
/*	
	@Override 
	public String wordSearchShow(Map<String, String> paraMap) {
		List<String> wordList =  cdao.wordSearchShow(paraMap);
		
		JSONArray jsonArr = new JSONArray(); // []
		
		if(wordList != null) {
			for(String word : wordList) {
				JSONObject jsonObj = new JSONObject();
				jsonObj.put("word", word);
				
				jsonArr.put(jsonObj);
			}// end of for----------------------------
		}
		
		return jsonArr.toString();
	}

*/




	
	
	
	
	

}
