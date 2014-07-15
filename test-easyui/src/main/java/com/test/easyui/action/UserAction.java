package com.test.easyui.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.test.easyui.bean.User;
import com.test.easyui.dao.UserDao;

@Controller
@RequestMapping("user")
public class UserAction {
	
	@Autowired
	private UserDao userDao;
	
	@ResponseBody
	@RequestMapping("list")
	public List<User> list() {
		return userDao.list(User.class);
	}
	
	@ResponseBody
	@RequestMapping("add")
	public void add(User u) {
		userDao.add(u);
	}
	
	@ResponseBody
	@RequestMapping("update")
	public void update(User u) {
		userDao.update(u);
	}
	
	@ResponseBody
	@RequestMapping("saveOrUpdate")
	public void saveOrUpdate(User u) {
		userDao.saveOrUpdate(u);
	}
	
	@ResponseBody
	@RequestMapping("delete")
	public String delete(User u) {
		userDao.delete(u);
		return "";
	}

}
