package com.chatRobot.dao;

import com.chatRobot.model.User;

import java.util.List;

public interface IUserDao {

	User selectUser(long id);

	User selectUserName(long id);

	User addUser();

	public List<User> listM();//查询所有

}