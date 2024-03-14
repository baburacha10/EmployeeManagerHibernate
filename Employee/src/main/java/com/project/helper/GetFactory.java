package com.project.helper;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class GetFactory 
{
	public static SessionFactory sessionFactory;
	
	public static SessionFactory getFactory()
	{
		if (sessionFactory == null)
		{
			sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
		}
		
		return sessionFactory;
	}
}
