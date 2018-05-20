package com.djming.csers.service;

import com.djming.csers.beans.User;
import com.djming.csers.forms.UserForm;

/*
 * @author  djming
 * @date 创建时间：2018年4月11日 下午2:49:16
 * @throws
 * 业务逻辑接口
 */
public interface UserManager {  
	  
    public void regUser(UserForm user);  
    
    public User logUser(UserForm user);
    
    public void exreuser(UserForm user);
  
}  