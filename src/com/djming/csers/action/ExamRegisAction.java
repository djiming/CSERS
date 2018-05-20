package com.djming.csers.action;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.djming.csers.forms.UserForm;
import com.djming.csers.service.UserManager;
import com.djming.csers.serviceImpl.UserManagerImpl;
import com.opensymphony.xwork2.ActionSupport;

/*
 * @author  djming
 * @date 创建时间：2018年5月8日 下午6:48:39
 * @throws
 */
public class ExamRegisAction extends ActionSupport{
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
            System.out.println(user.getImage());
            System.out.println(user.getName());
            System.out.println(user.getBirthdata());
            System.out.println(user.getEducation());
            System.out.println(user.getProvince());
            System.out.println(user.getCity());
            System.out.println(user.getGender());
            System.out.println(user.getNumber());
            System.out.println(user.getPositionName());
            userManager.exreuser(user);
            return SUCCESS;  
  
        } catch (Exception e) {  
            e.printStackTrace();  
            return ERROR;  
        }  
    }  
}
