package com.djming.csers.service;

import com.djming.csers.beans.User;
import com.djming.csers.forms.UserForm;

/*
 * @author  djming
 * @date ����ʱ�䣺2018��4��11�� ����2:49:16
 * @throws
 * ҵ���߼��ӿ�
 */
public interface UserManager {  
	  
    public void regUser(UserForm user);  
    
    public User logUser(UserForm user);
    
    public void exreuser(UserForm user);
  
}  