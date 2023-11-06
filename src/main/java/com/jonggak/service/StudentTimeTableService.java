package com.jonggak.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.jonggak.dto.StudentTimeTableDto;
import com.jonggak.mapper.TimeTableMapper;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class StudentTimeTableService {
	
	private final TimeTableMapper timeTableMapper;
	
	public List<StudentTimeTableDto> getStTimeTable(String stu_id, String year ,int cla_sem) {
		
		List<StudentTimeTableDto> temp = this.timeTableMapper.getStTimeTable(stu_id, year, cla_sem);
		System.out.println("===========service ==============");
		for(StudentTimeTableDto a : temp) {
			System.out.println(a);
		}
		System.out.println("===========service ==============");
		return this.timeTableMapper.getStTimeTable(stu_id, year, cla_sem);
	}
}
