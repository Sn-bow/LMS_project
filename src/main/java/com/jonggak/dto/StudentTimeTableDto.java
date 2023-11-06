package com.jonggak.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class StudentTimeTableDto {
	private String stu_id;
	private Integer cla_id;
	private String cla_name;
	private Integer cla_level;
	private String cla_week;
	private String cla_open;
	private String cla_close;
	private String year;
	private Integer cla_sem;
	private Integer dep_id;
	private Integer major_id;
	private Integer electives_id;
}
