package com.chatRobot.service.impl;

import com.chatRobot.dao.IUserDao;
import com.chatRobot.model.User;
import com.chatRobot.service.IUserService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

@Service("userService")
@Transactional(propagation= Propagation.REQUIRES_NEW,readOnly=true)

public class UserServiceImpl implements IUserService {

//	@Resource装配顺序
//　　1. 如果同时指定了name和type，则从Spring上下文中找到唯一匹配的bean进行装配，找不到则抛出异常
//　　2. 如果指定了name，则从上下文中查找名称（id）匹配的bean进行装配，找不到则抛出异常
//　　3. 如果指定了type，则从上下文中找到类型匹配的唯一bean进行装配，找不到或者找到多个，都会抛出异常
//　　4. 如果既没有指定name，又没有指定type，则自动按照byName方式进行装配；如果没有匹配，则回退为一个原始类型进行匹配，

//	推荐使用：@Resource注解在字段上，这样就不用写setter方法了，并且这个注解是属于J2EE的，减少了与spring的耦合。这样代码看起就比较优雅。
	@Resource
	private IUserDao userDao;

	public User selectUser(long userId) {
		return this.userDao.selectUser(userId);
	}

	public User selectUserName(long userId) {
		return this.userDao.selectUserName(userId);
	}

	public User addUser() {
		return this.userDao.addUser();
	}

	@Override
	public List<User> list() {
		// TODO Auto-generated method stub
		return this.userDao.listM();
	}


}