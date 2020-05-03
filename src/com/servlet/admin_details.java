package com.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.BaseDAO;
import com.entity.Employee;

/**
 * Servlet implementation class admin_userdetails
 */
@WebServlet("/admin_details")
public class admin_details extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public admin_details() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BaseDAO dao=new BaseDAO();
		Integer id=Integer.parseInt(request.getParameter("userid"));
		
		System.out.println(id);
		 request.getSession().setAttribute("id", id);  
 
		List<Employee> userlist=dao.getList(Employee.class, "where userid="+id);
		
		if (userlist.size()>0) {
			 request.setAttribute("userlist", userlist); 
		        request.setAttribute("userlistsize", userlist.size()); 
		        request.getRequestDispatcher("admin_changedetails.jsp").forward(request, response);
		}else { 
			System.out.println("详细信息查询失败");
	        request.getRequestDispatcher("admin_userlist.jsp").forward(request, response); 
	    }
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
