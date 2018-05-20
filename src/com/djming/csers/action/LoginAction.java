package com.djming.csers.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.apache.struts2.ServletActionContext;

import com.djming.csers.forms.UserForm;
import com.djming.csers.service.UserManager;
import com.djming.csers.serviceImpl.UserManagerImpl;
import com.opensymphony.xwork2.ActionSupport;

/*
 * @author  djming
 * @date 创建时间：2018年5月7日 上午1:30:42
 * @throws
 */
public class LoginAction  extends ActionSupport{
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
            boolean validated=false;//验证成功标识
            System.out.println(user.getIdNumber());
            System.out.println(user.getPassword());
            if(userManager.logUser(user)!= null) {
            	HttpSession session = ServletActionContext.getRequest().getSession();
            	session.setAttribute("userna", userManager.logUser(user).getIdNumber());
            	//HttpServletRequest request=ServletActionContext.getRequest();
            	//request.setAttribute("userna",userManager.logUser(user).getIdNumber());
            	return SUCCESS;
            }else {
            	return ERROR;
            }
  
        } catch (Exception e) {  
            e.printStackTrace();  
            return ERROR;  
        }  
    }  

}
