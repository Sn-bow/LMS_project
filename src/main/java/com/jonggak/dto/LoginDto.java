package com.jonggak.dto;



import java.util.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class LoginDto {
	private String stu_id;
	private String stu_pw;
	private String stu_name;
	private String stu_rnn;
	private String stu_phonenum;
	private String stu_address;
	private String stu_email;
	private Integer pic_id;
	private String pro_id;
	private Integer dep_id;
	private Date startyear;
	private Date endyear;
	private Integer stu_level;
	private Integer stu_smester;
	private String stu_state;
}
