package com.spring.wanted.ProjectWanted.member.model;

import lombok.Data;

@Data
public class LanguageVO {

	private int language_code;
    private int fk_Resume_code;
    private String for_lang;
    private String lang_content;
    private String lang_date;
}
