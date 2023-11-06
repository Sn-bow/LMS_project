package com.jonggak.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ClassConfirmDto {
	private Integer confirm_id;
	private Integer item1;
	private Integer item2;
	private Integer item3;
	private Integer item4;
	private String feedback;
	private Integer mycla_id;
}
