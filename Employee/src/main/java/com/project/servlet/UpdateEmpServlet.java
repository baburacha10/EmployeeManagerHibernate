package com.project.servlet;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.project.entities.Employee;
import com.project.helper.GetFactory;

/**
 * Servlet implementation class UpdateEmpServlet
 */
public class UpdateEmpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public UpdateEmpServlet() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException 
	{
		int id = Integer.parseInt(request.getParameter("id"));
		String name = request.getParameter("name");
		String dept = request.getParameter("dept");
		
		Session session = GetFactory.getFactory().openSession();
		Transaction transaction = session.beginTransaction();
		Employee employee = session.get(Employee.class, id);
		
		employee.setId(id);
		employee.setName(name);
		employee.setDept(dept);
		employee.setAddedDate(new Date());
		
		session.save(employee);
		
		transaction.commit();
		session.close();
		
		response.sendRedirect("show_emp.jsp");
	}

}
