package com.project.servlet;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.project.entities.Employee;
import com.project.helper.GetFactory;

/**
 * Servlet implementation class SaveEmpServlet
 */
public class SaveEmpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    public SaveEmpServlet() {
        super();
    }
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		try 
		{
			String name = request.getParameter("name");
			String dept = request.getParameter("dept");
			
			Employee employee = new Employee(name, dept, new Date());
			
			Session session = GetFactory.getFactory().openSession();
			Transaction transaction = session.beginTransaction();
			
			session.save(employee);
			
			transaction.commit();
			session.close();
			
//			response.setContentType("text/html");
			response.sendRedirect("show_emp.jsp");
			
		}
		catch (Exception e) 
		{
			e.printStackTrace();
		}
	}

}
