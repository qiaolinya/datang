package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.BaseDAO;
import com.entity.Employee;
import com.entity.Plan;

/**
 * Servlet implementation class emp_plandelete
 */
@WebServlet("/emp_plandelete")
public class emp_plandelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public emp_plandelete() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		BaseDAO dao=new BaseDAO();
		System.out.println("Ω¯»Î¡À…æ≥˝servlet");
		Integer taskid=(Integer)session.getAttribute("taskid");
		String planid=request.getParameter("planid");
		System.out.println(planid);
	
		dao.delete(Plan.class, "where planid = "+planid);
		request.getRequestDispatcher("emp_planlist?taskid="+taskid).forward(request, response); 
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
