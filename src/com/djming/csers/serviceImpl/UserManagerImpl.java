package com.djming.csers.serviceImpl;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.djming.csers.beans.User;
import com.djming.csers.dao.BaseDao;
import com.djming.csers.daoImpl.HibernateSessionFactory;
import com.djming.csers.daoImpl.UserDao;
/*
 * @author  djming
 * @date 创建时间：2018年4月11日 下午2:49:39
 * @throws
 * 业务逻辑实现类
 */ 
import com.djming.csers.forms.UserForm;
import com.djming.csers.service.UserManager;  
  
public class UserManagerImpl implements UserManager {  
	private User user = new User();
	
	private BaseDao dao;  
	  
    private Session session;  
  
    public UserManagerImpl() {  
        dao = new UserDao();
    }  
  
    @Override  
    public void regUser(UserForm userForm) throws HibernateException {  
        session = HibernateSessionFactory.currentSession();  
        dao.setSession(session);  
        // 获取事务  
        Transaction ts = session.beginTransaction();  
        // 构造User对象  
          
        user.setIdNumber(userForm.getIdNumber());  
        System.out.println(user.getIdNumber());
        user.setPassword(userForm.getPassword());  
        System.out.println(user.getPassword());
        user.setQuestion(userForm.getQuestion()); 
        System.out.println(user.getQuestion());
        user.setAnswer(userForm.getAnswer());
        System.out.println(user.getAnswer());
        // 保存User对象  
        dao.saveObject(user);  
        // 提交事务  
        ts.commit();  
        // 关闭Session  
        HibernateSessionFactory.closeSession();  
    }

	@Override
	public User logUser(UserForm user) throws HibernateException {
		session = HibernateSessionFactory.currentSession();  
        dao.setSession(session);  
        String hql = "FROM User WHERE idNumber = ? AND password = ?";
        //List<User> list =super.search("FROM User WHERE idNumber ='"+user.getIdNumber()+"' AND password = '"+user.getPassword()+"'");
        //List<User>list = session.createQuery(hql).setParameter(0, user.getIdNumber()).setParameter(1, user.getPassword()).list();
        Query query = session.createQuery(hql);
        query.setParameter(0, user.getIdNumber());
        query.setParameter(1, user.getPassword());
        List<User> users=query.list();
        users.get(0);
        if(users.size()!=0){
            User user1=(User)users.get(0);
            System.out.println(user1.getIdNumber());
            System.out.println(user1.getQuestion());
            return user1;
        }
        // 关闭Session  
        HibernateSessionFactory.closeSession(); 
        return null;
	}

	public void exreuser(UserForm userform) {
		// TODO Auto-generated method stub
		session = HibernateSessionFactory.currentSession();  
		HttpSession sessions = ServletActionContext.getRequest().getSession();
        dao.setSession(session);  
        // 获取事务  
        Transaction ts = session.beginTransaction();  
        // 构造User对象  
        String hql="update User set image=?,birthdata=?,city=?,education=?,gender=?,name=?,number=?"
        		+ ",positionName=?,province=? where idNumber=?";
        Query queryupdate=session.createQuery(hql);
        queryupdate.setParameter(0, userform.getImage());
        queryupdate.setParameter(1, userform.getBirthdata());
        queryupdate.setParameter(2, userform.getCity());
        queryupdate.setParameter(3, userform.getEducation());
        queryupdate.setParameter(4, userform.getGender());
        queryupdate.setParameter(5, userform.getName());
        queryupdate.setParameter(6, userform.getNumber());
        queryupdate.setParameter(7, userform.getPositionName());
        queryupdate.setParameter(8, userform.getProvince());
        queryupdate.setParameter(9, sessions.getAttribute("userna"));
        queryupdate.executeUpdate();
        
       // user.setImage(userform.getImage());
       // user.setBirthdata(userform.getBirthdata());
       // user.setCity(userform.getCity());
       // user.setEducation(userform.getEducation());
       // user.setGender(userform.getGender());
       // user.setName(userform.getName());
       // user.setNumber(userform.getNumber());
       // user.setPositionName(userform.getPositionName());
       // user.setProvince(userform.getProvince());
        //System.out.println(sessions.getAttribute("userna"));
        // 保存User对象  
        //dao.saveObject(user);  
        // 提交事务  
        ts.commit();  
        // 关闭Session  
        HibernateSessionFactory.closeSession();  
	}  
  
}