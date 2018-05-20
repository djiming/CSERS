package com.djming.csers.daoImpl;  
  
import org.hibernate.HibernateException;  
import org.hibernate.Session;  
import org.hibernate.SessionFactory;  
import org.hibernate.cfg.Configuration;
  
public class HibernateSessionFactory {  
  
  
    private static final ThreadLocal<Session> threadLocal = new ThreadLocal<Session>();  
  
    private static final Configuration cfg = new Configuration().configure();  // ��ȡ�����ļ���Ϣ
  
    private static SessionFactory sessionFactory;  
  
    public static Session currentSession() throws HibernateException {  
        Session session = threadLocal.get();  
  
        if (session == null || session.isOpen() == false) {  
  
            if (sessionFactory == null) {  
                try {   
                    sessionFactory = cfg.buildSessionFactory();  // ����SessionFactory
                } catch (Exception e) {  
                    e.printStackTrace();  
                }  
            }  
  
            session = sessionFactory.openSession();  //����Session
            threadLocal.set(session);  
  
        }  
  
        return session;  
    }  
  
    public static void closeSession() throws HibernateException {  
        Session session = threadLocal.get();  
        threadLocal.set(null);  
        if (session != null) {  
            session.close();  
        }  
    }  
  
} 