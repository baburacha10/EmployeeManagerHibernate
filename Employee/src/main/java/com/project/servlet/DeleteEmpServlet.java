package com.project.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.project.entities.Employee;
import com.project.helper.GetFactory;

/**
 * Servlet implementation class DeleteEmpServlet
 */
public class DeleteEmpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    public DeleteEmpServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		int id = Integer.parseInt(request.getParameter("empId"));
		
		Session session = GetFactory.getFactory().openSession();
		Transaction transaction = session.beginTransaction();
		Employee employee = session.get(Employee.class, id);
		
		session.delete(employee);
		
		transaction.commit();
		session.close();
		
		response.sendRedirect("show_emp.jsp");
	}
}
