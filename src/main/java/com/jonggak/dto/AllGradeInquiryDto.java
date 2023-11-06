package com.jonggak.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class AllGradeInquiryDto {
	private Integer mycla_id;
	private String stu_id;
	private Integer at_score;
	private Integer m_score;
	private Integer f_score;
	private Integer a_score;
	private Integer cla_id;
	private String cla_end;
	private Integer cla_sem;
	private Integer cla_grade;
	private Integer dep_id;
	private String dep_name;
}
