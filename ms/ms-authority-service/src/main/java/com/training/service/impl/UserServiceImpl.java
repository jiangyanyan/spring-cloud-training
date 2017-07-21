package com.training.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.training.common.GenericDao;
import com.training.common.GenericServiceImpl;
import com.training.dao.UserMapper;
import com.training.model.User;
import com.training.service.UserService;

@Service
public class UserServiceImpl extends GenericServiceImpl<User, Long> implements UserService{
	@Autowired
	UserMapper userMapper;

	@Override
	public GenericDao<User, Long> getDao() {
		return userMapper;
	}

}
