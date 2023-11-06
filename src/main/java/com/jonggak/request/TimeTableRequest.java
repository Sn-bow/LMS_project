package com.jonggak.request;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class TimeTableRequest {
	private String year;
	private Integer cla_sem;
}
