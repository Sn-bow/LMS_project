package com.jonggak.controller;

import java.time.LocalDate;
import java.util.List;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.jonggak.dto.ChoseGradeInquiryDto;
import com.jonggak.dto.ClassInforDto;
import com.jonggak.dto.GradeInquiryDto;
import com.jonggak.dto.LectureInfoDto;
import com.jonggak.dto.StudentTimeTableDto;
import com.jonggak.request.ClaSemAndYearRequest;
import com.jonggak.request.ClassIdRequest;
import com.jonggak.request.TimeTableRequest;
import com.jonggak.service.GradeService;
import com.jonggak.service.LectureService;
import com.jonggak.service.StudentTimeTableService;

import lombok.RequiredArgsConstructor;

@RestController
@RequiredArgsConstructor
public class AjaxController {

	private final GradeService gradeService;
	private final LectureService lectureService;
	private final StudentTimeTableService studentTimeTableService;

	@PostMapping("/professor/classInfo")
	public ClassInforDto getClassInfo(@RequestBody ClassIdRequest classIdRequest) {
		// classId
		ClassInforDto classInfo = this.gradeService.getClassInfo(classIdRequest.getClaId());
		return classInfo;
	}

	@PostMapping("/professor/gradeInquiry")
	public List<GradeInquiryDto> getGradeInquiry(@RequestBody ClassIdRequest classIdRequest) {
		LocalDate now = LocalDate.now();
		int year = now.getYear();
		int sem = 0;
		String nowDateYear = String.valueOf(year);
		int nowDateMonth = now.getMonthValue();
		System.out.println(nowDateYear);
		System.out.println(nowDateMonth);
		if (nowDateMonth >= 3 && nowDateMonth <= 7) {
			sem = 1;
		} else if (nowDateMonth >= 9 && nowDateMonth <= 12) {
			sem = 2;
		}
		List<GradeInquiryDto> gradeInquiryList = this.gradeService.getGradeInquiryList(classIdRequest.getClaId(),
				nowDateYear, sem);
		return gradeInquiryList;
	}

	@PostMapping("/professor/gradeInsert")
	public List<GradeInquiryDto> getGradeInsert(@RequestBody ClassIdRequest classIdRequest) {
		LocalDate now = LocalDate.now();
		int year = now.getYear();
		int sem = 0;
		String nowDateYear = String.valueOf(year);
		int nowDateMonth = now.getMonthValue();
		System.out.println(nowDateYear);
		System.out.println(nowDateMonth);
		if (nowDateMonth >= 3 && nowDateMonth <= 7) {
			sem = 1;
		} else if (nowDateMonth >= 9 && nowDateMonth <= 12) {
			sem = 2;
		}
		List<GradeInquiryDto> gradeInsertList = this.gradeService.getGradeInsertList(classIdRequest.getClaId(),
				nowDateYear, sem);

		for (GradeInquiryDto a : gradeInsertList) {
			System.out.println(a);
		}

		return gradeInsertList;
	}

	@PostMapping("/professor/LectureInfo")
	public LectureInfoDto getLectureInfo(@RequestBody ClassIdRequest classIdRequest) {
		return this.lectureService.getLectureInfo(classIdRequest.getClaId());
	}

	@PostMapping("/professor/lectureFeedback")
	public List<String> getFeedbackList(@RequestBody ClassIdRequest classIdRequest) {
		return this.lectureService.getFeedbackList(classIdRequest.getClaId());
	}
	
	
//	=====================================================================================
	
	@PostMapping("/student/allGradeInquiry")
	public List<ChoseGradeInquiryDto> getAllGradeInquiryList(@RequestBody ClaSemAndYearRequest claSemAndYearRequest) {
		String stuId = "S20231019";
		List<ChoseGradeInquiryDto> aaa = this.gradeService.getChoseGradeInquiryList(stuId, stuId, 3);
		return this.gradeService.getChoseGradeInquiryList(stuId, "2023", 2);
	}
	
//	-------------------------------------------------------------------------------------
	
	@PostMapping("/student/timeTable")
	public List<StudentTimeTableDto> getTimeTableList (@RequestBody TimeTableRequest timeTableRequest) {
		System.out.println("=======================");
		System.out.println(timeTableRequest);
		System.out.println("=======================");
		String stu_id = "S20231038";
		List<StudentTimeTableDto> timeTableList = this.studentTimeTableService.getStTimeTable(stu_id, timeTableRequest.getYear(), timeTableRequest.getCla_sem());
		System.out.println("===========ajax controller ==================");
		for(StudentTimeTableDto a : timeTableList) {
			System.out.println(a);
		}
		System.out.println("===========ajax controller ==================");
		return this.studentTimeTableService.getStTimeTable(stu_id, timeTableRequest.getYear(), timeTableRequest.getCla_sem());
	}
	
}
