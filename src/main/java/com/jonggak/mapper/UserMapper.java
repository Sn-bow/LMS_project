package com.jonggak.mapper;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.jonggak.dto.LoginDto;

public interface UserMapper {
	@Select("SELECT * FROM STUDENT WHERE STU_ID = #{stu_id} AND STU_PW = #{stu_pw}")
	public LoginDto getLoginUserInfo(@Param("stu_id") String stu_id, @Param("stu_pw") String stu_pw);
}
