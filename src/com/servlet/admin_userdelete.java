package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.BaseDAO;
import com.entity.Employee;

/**
 * Servlet implementation class admin_userdelete
 */
@WebServlet("/admin_userdelete")
public class admin_userdelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public admin_userdelete() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BaseDAO dao=new BaseDAO();
		System.out.println("������ɾ��servlet");
		Integer id=Integer.parseInt(request.getParameter("userid"));
		
	
		dao.delete(Employee.class, id);
		request.getRequestDispatcher("admin_userlist?pagesize=5&page=1").forward(request, response); 
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
