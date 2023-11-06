package com.jonggak.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.jonggak.dto.ClassConfirmDto;
import com.jonggak.dto.LecturInquiryDto;
import com.jonggak.dto.LoginDto;
import com.jonggak.dto.ProfessorToClassDto;
import com.jonggak.service.LectureService;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class LectureController {
	
	private final LectureService lectureService;
	
	@GetMapping("/student/lecture")
	public String lectureInquiry(HttpServletRequest request,Model model) {
		HttpSession session = request.getSession();
		LoginDto userInfo = (LoginDto) session.getAttribute("student");
		
		if(userInfo == null) {
			return "redirect:/login";
		}
		
		String student_id = userInfo.getStu_id();
		List<LecturInquiryDto> lectureList = this.lectureService.getLecturInquiryList(student_id);
		model.addAttribute("lectureList", lectureList);
		return "student/lectureInquiry";
	}
	
	@GetMapping("/student/lectureInsert/{id}")
	public String lectureInsert(Model model, @PathVariable("id") int myclass_id) {
		
		String student_id = "S20231015";
		LecturInquiryDto lectur = this.lectureService.getLecturInquiry(student_id, myclass_id);
		model.addAttribute("lectur", lectur);
		
		return "student/classConfirm";
	}
	
	@GetMapping("/professor/lectureCheck")
	public String prfLectureCheck(Model model) {
		String prfId = "P20231023";
		List<ProfessorToClassDto> prfClassList = this.lectureService.getPrfClassList(prfId);
		model.addAttribute("prfClassList", prfClassList);
		return "professor/lectureCheck";
	}
	
	
	@PostMapping("/student/lectureInsert/{id}")
	public String lectureInsert(@ModelAttribute ClassConfirmDto classConfirmDto, @PathVariable("id") int myclass_id) {
		
		int result = this.lectureService.setClassConfirm(classConfirmDto, myclass_id);
		if (result > 0) {
			return "redirect:/student/lecture";
		}else {
			return "redirect:/student/lectureInsert/" + myclass_id;
		}
	}
}
