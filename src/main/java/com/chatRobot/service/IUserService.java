package com.chatRobot.service;

import com.chatRobot.model.User;

import java.util.List;

public interface IUserService {

	public User selectUser(long userId);

	public User selectUserName(long userId);

	public User addUser();

	List<User> list();//查询所有



}