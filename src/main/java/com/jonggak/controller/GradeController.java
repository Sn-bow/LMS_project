package com.jonggak.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.jonggak.dto.ClassInquiryDto;
import com.jonggak.dto.MyGradeDto;
import com.jonggak.dto.SelectYearGradeDto;
import com.jonggak.service.GradeService;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class GradeController {

	private final GradeService gradeService;

	@GetMapping("/professor/grade")
	public String professorGradeInquiry(Model model) {
		// parameter : professorId
		List<ClassInquiryDto> classInquiryList = this.gradeService.getProfessorClassList("P20231023");
		model.addAttribute("classInquiryList", classInquiryList);
		return "professor/Pro_grade_Inquiry";
	}

	@GetMapping("/professor/gradeInsert")
	public String professorGradeInsert(Model model) {
		// parameter : professorId getGradeInsertList
		List<ClassInquiryDto> classInquiryList = this.gradeService.getProfessorClassList("P20231023");
		System.out.println(classInquiryList);
		model.addAttribute("classInquiryList", classInquiryList);
		return "professor/Pro_grade_Insert";
	}

	@PostMapping("/professor/gradeInset")
	public String professorGradeInsert(@ModelAttribute MyGradeDto myGradeDto) {
		System.out.println(myGradeDto);
		if (myGradeDto.getMycla_id() != null && myGradeDto.getAt_score() != null) {
			this.gradeService.setGrade(myGradeDto);
			return "redirect:/professor/gradeInsert";
		} else {
			System.out.println("성적 입력 실패");
			return "redirect:/professor/gradeInsert";
		}
	}

	@PostMapping("/professor/gradeUpgrade")
	public String professorGradeUpdate(Model model, @ModelAttribute MyGradeDto updateGradeDto) {
		System.out.println(updateGradeDto);
//		location.href="이동할_페이지명"
		if (updateGradeDto.getMycla_id() != null && updateGradeDto.getMygrade_id() != null
				&& updateGradeDto.getA_score() != null && updateGradeDto.getAt_score() != null
				&& updateGradeDto.getF_score() != null && updateGradeDto.getM_score() != null) {
			this.gradeService.updateGrade(updateGradeDto);
			model.addAttribute("callgrade", updateGradeDto.getMygrade_id());
			return "redirect:/professor/gradeInsert";
		} else {
			System.out.println("성적 업데이트 실패");
			return "redirect:/professor/gradeInsert";
		}
	}

//	================================================================================================

	@GetMapping("/student/allGradeInquiry")
	public String allGradeInquiry(Model model) {
		// session -> 로그인한 유저에대한 정보를 가지고올거야 : 유저의 아이디
		// user mapper : select * from student join department on s.dep_id = d.dep_id
		// where stu_id = 'S20231019';
		String stu_id = "S20231019";
		String dep_name = "전자공학부";
		List<SelectYearGradeDto> selectYearGradeList = this.gradeService.getSelectYearGrade(dep_name, stu_id);
		model.addAttribute("selectYearGradeList", selectYearGradeList);
		return "student/allGradeInquiry";
	}

	@GetMapping("/student/nowGradeInquiry")
	public String nowGradeInquiry(Model model) {
		return "student/nowGradeInquiry";
	}

}
