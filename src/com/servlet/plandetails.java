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
import com.entity.Plan;
import com.entity.Task;

/**
 * Servlet implementation class plandetails
 */
@WebServlet("/plandetails")
public class plandetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public plandetails() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("进入了plandetails");
		HttpSession hs=request.getSession();
		BaseDAO dao=new BaseDAO();
		Integer planid=Integer.parseInt(request.getParameter("planid"));
		//Integer taskid=Integer.parseInt(request.getParameter("taskid"));
		//System.out.println("planid = "+planid);
		 request.getSession().setAttribute("planid", planid);  
		List<Plan> planlist=dao.getList(Plan.class, "where planid="+planid);
		Integer taskid=planlist.get(0).getTaskid();
		System.out.println("pd的taskid = "+taskid);
		List<Task> tasklist=dao.getList(Task.class, "where taskid="+taskid);
		String taskname=tasklist.get(0).getTaskname();
		System.out.println("taskname = "+taskname);
		planlist.get(0).setFeedback(taskname);
		if (planlist.size()>0) {
			 request.setAttribute("planlist", planlist); 
		        request.getRequestDispatcher("plan_details.jsp").forward(request, response);
		}else { 
			System.out.println("计划详细信息查询失败");
	        //request.getRequestDispatcher("taskdetails?taskid="+taskid).forward(request, response); 
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
