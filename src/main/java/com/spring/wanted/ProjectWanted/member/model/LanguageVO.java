package com.spring.wanted.ProjectWanted.member.model;

import lombok.Data;

@Data
public class LanguageVO { 
	
    private int language_Code;
    private int fk_Resume_Code;
    private String for_Lang;
    private String content;
    private String lang_Date;
}
