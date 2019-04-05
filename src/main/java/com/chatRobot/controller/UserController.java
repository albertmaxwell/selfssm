package com.chatRobot.controller;

import javax.servlet.http.HttpServletRequest;

import com.chatRobot.model.User;
import com.chatRobot.service.IUserService;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {

	@Resource
	private IUserService userService;

	@RequestMapping("/showUser.do")
	public void selectUser(HttpServletRequest request, HttpServletResponse response) throws IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		long userId = Long.parseLong(request.getParameter("id"));
		User user = this.userService.selectUser(userId);
		ObjectMapper mapper = new ObjectMapper();
		response.getWriter().write(mapper.writeValueAsString(user));
		response.getWriter().close();
	}


	@RequestMapping("/showUserName.do")
	public void showUserName(HttpServletRequest request, HttpServletResponse response) throws IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		long userId = Long.parseLong(request.getParameter("id"));
		User user = this.userService.selectUserName(userId);
		ObjectMapper mapper = new ObjectMapper();
		response.getWriter().write(mapper.writeValueAsString(user));
		response.getWriter().close();
	}

	@RequestMapping("/crm.do")
	public ModelAndView requestCrm(HttpServletRequest request, HttpServletResponse response) throws IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		return new ModelAndView("index");


	}

	@RequestMapping("/addUser.do")
	public ModelAndView addUser(HttpServletRequest request, HttpServletResponse response) throws IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		User user = this.userService.addUser();
		ObjectMapper mapper = new ObjectMapper();
		response.getWriter().write(mapper.writeValueAsString(user));
		response.getWriter().close();

		return new ModelAndView("index");

	}

	// 查询列表
	@RequestMapping("list")
	public ModelAndView list() {
		ModelAndView mav = new ModelAndView();
		List<User> ls = userService.list();
		mav.addObject("ls", ls);
		mav.setViewName("index");
		return mav;
	}





}