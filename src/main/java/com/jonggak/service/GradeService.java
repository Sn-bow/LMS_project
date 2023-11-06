package com.jonggak.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.jonggak.dto.ChoseGradeInquiryDto;
import com.jonggak.dto.ClassInforDto;
import com.jonggak.dto.ClassInquiryDto;
import com.jonggak.dto.GradeInquiryDto;
import com.jonggak.dto.MyGradeDto;
import com.jonggak.dto.SelectYearGradeDto;
import com.jonggak.mapper.GradeMapper;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class GradeService {

	private final GradeMapper gradeMapper;

	public List<ClassInquiryDto> getProfessorClassList(String professorId) {
		return this.gradeMapper.getProfClassList(professorId);
	}

	public ClassInforDto getClassInfo(int classId) {
		return this.gradeMapper.getClassInfo(classId);
	}

	public List<GradeInquiryDto> getGradeInquiryList(int classId, String nowYear, int sem) {
		return this.gradeMapper.getGradeInquiryList(classId, nowYear, sem);
	}

	public List<GradeInquiryDto> getGradeInsertList(int classId, String nowYear, int sem) {
		return this.gradeMapper.getGradeInsertList(classId, nowYear, sem);
	}

	public int setGrade(MyGradeDto myGradeDto) {
		return this.gradeMapper.setGrade(myGradeDto);
	}

	public int updateGrade(MyGradeDto updateGradeDto) {
//		MyGradeDto existingGrade = this.gradeMapper.getMyGrade(updateGradeDto.getMygrade_id());
//		existingGrade.setA_score(updateGradeDto.getA_score());
//		existingGrade.setAt_score(updateGradeDto.getAt_score());
//		existingGrade.setF_score(updateGradeDto.getF_score());
//		existingGrade.setM_score(updateGradeDto.getM_score());

		return this.gradeMapper.updateGrade(updateGradeDto);
	}
	
	
//	 ========================================================================================
	
	public List<SelectYearGradeDto> getSelectYearGrade(String dep_name, String stu_id) {
		return this.gradeMapper.getSelectYearGrade(dep_name, stu_id);
	}
	
	public List<ChoseGradeInquiryDto> getChoseGradeInquiryList(String stu_id, String year, int cla_sem) {
		return this.gradeMapper.getChoseGradeInquiryList(stu_id, year, cla_sem);
	}

}
