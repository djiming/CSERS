package com.djming.csers.dao;
import org.hibernate.Session;

import org.hibernate.HibernateException;

public interface BaseDao {  
  
    public void saveObject(Object obj) throws HibernateException;  
  
    public Session getSession();  
  
    public void setSession(Session session);  
} 