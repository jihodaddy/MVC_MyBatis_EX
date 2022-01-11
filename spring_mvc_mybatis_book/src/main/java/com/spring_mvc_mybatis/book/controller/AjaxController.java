package com.spring_mvc_mybatis.book.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class AjaxController {
	
	//로그인 폼으로 이동
	@RequestMapping("/loginForm")
	public String loginForm() {
		return "ajax/loginForm"; //loginForm.jsp 연습
	}
	
	//로그인 처리
	@ResponseBody
	@RequestMapping("/login")
	//public String loginCheck(@RequestParam("user_id") String id,
	//											@RequestParam("user_pw")String pw) {
	public String loginCheck(@RequestParam("id") String id,
											@RequestParam("pw")String pw) {
		String result = "";
		if(id.equals("abcd") && pw.equals("1234"))
			result = "success";
		else
			result="fail";
		
		return result;
	}
	
	
}



