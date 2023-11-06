package com.jonggak.service;

import org.springframework.stereotype.Service;

import com.jonggak.dto.LoginDto;
import com.jonggak.mapper.UserMapper;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class UserService {
	
	private final UserMapper userMapper;
	
	public LoginDto getLoginUserInfo(String stu_id, String stu_pw) {
		return this.userMapper.getLoginUserInfo(stu_id, stu_pw);
	}
}
