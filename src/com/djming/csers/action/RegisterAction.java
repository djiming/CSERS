package com.djming.csers.action;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.djming.csers.forms.UserForm;
import com.djming.csers.service.UserManager;
import com.djming.csers.serviceImpl.UserManagerImpl;
import com.opensymphony.xwork2.ActionSupport;

/*
 * @author  djming
 * @date 创建时间：2018年4月11日 下午2:48:38
 * @throws
 * 注册动作类
 */
public class RegisterAction extends ActionSupport{
	private static final long serialVersionUID = 1L;  
	  
    private UserForm user;  
  
    private UserManager userManager;  
  
    public UserForm getUser() {  
        return user;  
    }  
  
    public void setUser(UserForm user) {  
        this.user = user;  
    }  
  
    public UserManager getUserManager() {  
        return userManager;  
    }
  
    public void setUserManager(UserManager userManager) {  
        this.userManager = userManager;  
    }  
  
    public String execute() {  
        try {  
            this.setUserManager(new UserManagerImpl());
            System.out.println(user.getIdNumber());
            System.out.println(user.getPassword());
            System.out.println(user.getQuestion());
            System.out.println(user.getAnswer());
            userManager.regUser(user); 
            HttpSession session = ServletActionContext.getRequest().getSession();
        	session.setAttribute("userna", user.getIdNumber());
            return SUCCESS;  
  
        } catch (Exception e) {  
            e.printStackTrace();  
            return ERROR;  
        }  
    }  
}
