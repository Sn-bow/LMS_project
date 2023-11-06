package com.jonggak.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ClassInquiryController {
	
	@GetMapping("/student/classTimeTableInquiry")
	public String classTimeTableInquiry() {
		return "student/studentClassTimeTable";
	}
}
