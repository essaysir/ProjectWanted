package com.spring.wanted.ProjectWanted.common.model;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.wanted.ProjectWanted.common.mapper.InterCommonMapper;
import com.spring.wanted.ProjectWanted.company.model.CompanyVO;

@Repository
public class CommonDAO implements InterCommonDAO{

	private final InterCommonMapper mapper ;
	
	@Autowired
	public CommonDAO (InterCommonMapper mapper) {
		this.mapper = mapper ;
	}

	@Override
	public List<Map<String, String>> getSkill() {
		List<Map<String,String>> skillList = mapper.getSkill();

		return skillList;
	}

	@Override
	public List<Map<String, String>> searchSkill(String input_val) {
		List<Map<String,String>> skillList = mapper.searchSkill(input_val);
		
		return skillList;
	}

	@Override
	public int checkUserid(String userid) {
		int n = mapper.comp_checkUserid(userid);
		
		return n ;
	}

	@Override
	public void register_comp(CompanyVO cvo) {
		
		String addresss = cvo.getAddresss();
		String[] addressParts = addresss.split(" ");
		
	    if (addressParts.length >= 2) {
	        String region_name = addressParts[0];
	        String region_detail_name = addressParts[1];
	        cvo.setRegion_name(region_name);
	        cvo.setRegion_detail_name(region_detail_name);
	       
	        System.out.println(region_name);
	        System.out.println(region_detail_name);
	        
	        int region_detail_code = mapper.getRegionDetailCodeByNames(cvo);
	        System.out.println(" 확인용 region" + region_detail_code);
	        cvo.setFk_region_detail_code(region_detail_code);
	    } else {
	    	throw new IllegalArgumentException("Invalid address format: " + addresss);
	    }

		mapper.register_comp(cvo);
	}
	
	
}
