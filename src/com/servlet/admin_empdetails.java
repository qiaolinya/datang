package com.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import com.dao.BaseDAO;
import com.entity.Employee;

/**
 * Servlet implementation class admin_empdetails
 */
@WebServlet("/admin_empdetails")
public class admin_empdetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public admin_empdetails() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		BaseDAO dao=new BaseDAO();
		System.out.println("servlet");
		Integer id=Integer.parseInt(request.getParameter("userid"));
		session.setAttribute("cmid", id);
		System.out.println("admin_empdetails的userid = "+id);
		List<Employee> userlist=dao.getList(Employee.class, "where userid="+id);
		session.setAttribute("userlist",userlist);
		if (userlist.size()>0) {
			 request.setAttribute("userlist", userlist); 
		        request.setAttribute("userlistsize", userlist.size()); 
		        request.getRequestDispatcher("admin_changeManager").forward(request, response);
		        
		}else { 
			System.out.println("异常");
	        request.getRequestDispatcher("admin_emplist.jsp").forward(request, response); 
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
