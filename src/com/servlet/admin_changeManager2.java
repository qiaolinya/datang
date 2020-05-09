package com.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.BaseDAO;
import com.entity.Employee;

/**
 * Servlet implementation class admin_changeManager2
 */
@WebServlet("/admin_changeManager2")
public class admin_changeManager2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public admin_changeManager2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession hs2=request.getSession();
		BaseDAO dao=new BaseDAO();
		Integer userid=(Integer) hs2.getAttribute("cmid");
		System.out.println("cm2的userid = "+userid);
		List<Employee> bosslistAll=dao.getBossList(Employee.class);
		Integer bossin=Integer.parseInt(request.getParameter("superId"));
		System.out.println("bossin = "+bossin);
		Integer bossid=bosslistAll.get(bossin-1).getUserid();
		System.out.println("bossid = "+bossid);
		if(bossin!=null) {
			dao.UpdateByUserid("employee", userid, bossid);
		}
		
		
		
		request.getRequestDispatcher("admin_empdetails?userid="+userid).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
