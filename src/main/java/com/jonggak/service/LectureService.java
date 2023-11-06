package com.jonggak.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.jonggak.dto.ClassConfirmDto;
import com.jonggak.dto.LecturInquiryDto;
import com.jonggak.dto.LectureInfoDto;
import com.jonggak.dto.ProfessorToClassDto;
import com.jonggak.mapper.LectureMapper;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class LectureService {

	private final LectureMapper lectureMapper;
	
	
	public List<LecturInquiryDto> getLecturInquiryList(String student_id) {
		List<LecturInquiryDto> aaa = this.lectureMapper.getLecturInquiryList(student_id);
		return aaa;
		
	}
	
	public LecturInquiryDto getLecturInquiry(String student_id, int mycla_id) {
		return this.lectureMapper.getLecturInquiry(student_id, mycla_id);
	}
	
	public int setClassConfirm(ClassConfirmDto classConfirmDto, int myclass_id) {
		classConfirmDto.setMycla_id(myclass_id);
		if (classConfirmDto.getItem1() != null) {
			return this.lectureMapper.setClassConfirm(classConfirmDto);
		} else {
			return 0;
		}	
	}
	
	public List<ProfessorToClassDto> getPrfClassList(String prf_id) {
		return this.lectureMapper.getPrfClassList(prf_id);
	}
	
	public LectureInfoDto getLectureInfo(int cla_id) {
		return this.lectureMapper.getLectureInfo(cla_id);
	}
	
	public List<String> getFeedbackList(int cla_id) {
		return this.lectureMapper.getFeedbackList(cla_id);
	}
	
}
