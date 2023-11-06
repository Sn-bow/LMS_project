package com.jonggak.controller;

import java.net.http.HttpRequest;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.jonggak.dto.LoginDto;
import com.jonggak.service.UserService;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class UserController {
	
	private final UserService userService;

	@GetMapping("/login")
	public String login() {
		return "user/login";
	}
	
	
	@PostMapping("/login")
	public String login(@ModelAttribute LoginDto loginDto, HttpServletRequest request) {
		
		if(loginDto != null) {
			HttpSession session = request.getSession();
			if(loginDto.getStu_id().charAt(0) == 'S') {
				LoginDto loginUser = this.userService.getLoginUserInfo(loginDto.getStu_id(), loginDto.getStu_pw());
				session.setAttribute("student", loginUser);
				System.out.println("============UserController==========");
				System.out.println("학생으로 로그인 되었습니다" + loginUser);
				System.out.println("============UserController==========");
			}
			if(loginDto.getStu_id().charAt(0) == 'P') {
				LoginDto loginUser = this.userService.getLoginUserInfo(loginDto.getStu_id(), loginDto.getStu_pw());
				session.setAttribute("professor", loginUser);
				System.out.println("============UserController==========");
				System.out.println("교수로 로그인 되었습니다" + loginUser);
				System.out.println("============UserController==========");
			}
			
			return "redirect:/student/lecture";
		}else {
			return "redirect:/login";
		}
		
	}
	
	@PostMapping("/logout")
	public String logout(HttpServletRequest request) {
		HttpSession session = request.getSession(false);
	    if (session != null) {
	        session.invalidate();
	    }
	    return "redirect:/login";
	}
	

}
