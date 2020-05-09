package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.BaseDAO;

import com.entity.Plan;

/**
 * Servlet implementation class emp_planadd
 */
@WebServlet("/emp_planadd")
public class emp_planadd extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public emp_planadd() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		request.setCharacterEncoding("UTF-8");
        response.setContentType("textml;charset=utf-8");
		BaseDAO dao=new BaseDAO();
		String planName=request.getParameter("planName");
		String planDescription=request.getParameter("planDescription");
		String planBeginDate=request.getParameter("planBeginDate");
		String planEndDate=request.getParameter("planEndDate");
		String state="δ���";
		String feedback="1";
		Integer creater=2;
		String isfeedback="δ����";
        Integer taskid=(Integer)session.getAttribute("taskid");
        System.out.println(taskid);
        dao.Insert(new Plan(planName,planDescription,planBeginDate,planEndDate,taskid,isfeedback,state,feedback,creater));
        
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
