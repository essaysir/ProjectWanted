package com.spring.wanted.ProjectWanted.security.config;

import org.springframework.boot.autoconfigure.security.servlet.PathRequest;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityCustomizer;
import org.springframework.security.crypto.factory.PasswordEncoderFactories;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationSuccessHandler;


@Configuration
@EnableWebSecurity
public class MemberSecurityConfig  {
	
	
	
	
	@Bean
	public PasswordEncoder passwordEncoder() {
		return PasswordEncoderFactories.createDelegatingPasswordEncoder();
	}
	
	
	 @Bean
	    public CustomAuthenticationProvider customAuthenticationProvider() {
	        return new CustomAuthenticationProvider();
	    }

    
	@Bean
	 public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
		http
				.authorizeRequests()
				.antMatchers("/wanted").permitAll() // 메인 페이지 접근권한 모두 허용
				.antMatchers("/wanted/register" ,"/send-one").permitAll() // 회원가입 페이지 접근권한 모두 허용
				.antMatchers("/wanted/login" , "/wanted/login/checkUserid").permitAll()
				.antMatchers("/wanted/company/login" , "/wanted/company/checkUserid").permitAll()
				
				.antMatchers("/wanted/user/**").hasRole("USER")
				.antMatchers("/wanted/company/**").hasRole("COMPANY")
				.anyRequest().authenticated();
		http
		.formLogin()
		.loginPage("/wanted/company/login")
		.loginProcessingUrl("/login/company/proc")
		.usernameParameter("username")
		.passwordParameter("password")
		.permitAll()
		.successHandler(new SimpleUrlAuthenticationSuccessHandler("/wanted/company/candidateList")) // 로그인 성공 후 리다이렉트될 URL 설정
		.failureUrl("/wanted/company/login_error");
		
		http
	    .formLogin()
	        .loginPage("/wanted/login")
	        .loginProcessingUrl("/login/proc")
	        .usernameParameter("username")
	        .passwordParameter("password")
	        .permitAll()
	        .successHandler(new SimpleUrlAuthenticationSuccessHandler("/wanted")) // 로그인 성공 후 리다이렉트될 URL 설정
	        .failureUrl("/wanted/login_error");
		
		


		http
				.csrf().disable();
		
				// .csrf().ignoringAntMatchers("/wanted/login/**" , "/send-one") // CSRF 보호에서 해당 URL은 제외
				// .and()
		        // .headers().frameOptions().sameOrigin(); // X-Frame-Options 헤더 설정
				
		
		
		return http.build();
	}
	// permitAll 과 WebSecurity  의 차이는 permitAll 은 보안 필터를 거치지만, WebSecurity 는 아예 보안필터를 거치지 않는다. 
	 @Bean    
	    public WebSecurityCustomizer webSecurityCustomizer() {
	        // 인증 및 인가 예외 Path URL        
	    	return (web) -> web.ignoring().requestMatchers(PathRequest.toStaticResources().atCommonLocations())
	    			.antMatchers( "/js/**" , "/images/**" , "/bootstrap-4.6.0-dist/**", "/jquery-ui-1.13.1.custom/**","/smarteditor/**" , "/OwlCarousel/**" );
	    				
	 }

	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
}
