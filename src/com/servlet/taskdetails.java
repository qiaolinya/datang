package com.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.BaseDAO;
import com.entity.Plan;
import com.entity.Task;

/**
 * Servlet implementation class taskdetails
 */
@WebServlet("/taskdetails")
public class taskdetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public taskdetails() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BaseDAO dao=new BaseDAO();
		Integer id=Integer.parseInt(request.getParameter("taskid"));
		//System.out.println(id);	
		   request.getSession().setAttribute("taskid", id);  
		List<Task> tasklist=dao.getList(Task.class, "where taskid="+id);
		//System.out.println("tasklist的size = "+tasklist.size());
		Integer Implperson=Integer.parseInt(tasklist.get(0).getImplperson());
		//System.out.println("Implperson= "+Implperson);
		String imname=dao.getNameById(Implperson);
		tasklist.get(0).setImplperson(imname);
		if(tasklist.get(0).getState().equals("1")) {
			tasklist.get(0).setState("已完成");
		}else if(tasklist.get(0).getState().equals("0")) {
			tasklist.get(0).setState("未完成");	
		}
		
		List<Plan> planlist=dao.getList(Plan.class, "where taskid = "+id);
		for(int i=0;i<planlist.size();i++) {
			if(planlist.get(i).getState().equals("1")) {
				planlist.get(i).setState("已完成");
				System.out.println("等于1");
			}else if(planlist.get(i).getState().equals("0")) {
				planlist.get(i).setState("未完成");
				System.out.println("等于0");
			}
			if(planlist.get(i).getIsfeedback().equals("1")) {
				planlist.get(i).setIsfeedback("已反馈");
				System.out.println("等于1");
			}else if(planlist.get(i).getIsfeedback().equals("0")) {
				planlist.get(i).setIsfeedback("未反馈");
				System.out.println("等于0");
			}
			
		}
		if (tasklist.size()>0) {
			 request.setAttribute("tasklist", tasklist); 
			 request.setAttribute("planlist", planlist);
		     request.setAttribute("tasklistsize", tasklist.size()); 
		     request.getRequestDispatcher("taskdetails.jsp").forward(request, response);
		}else { 
			System.out.println("详细信息查询失败");
	        request.getRequestDispatcher("tasklist.jsp").forward(request, response); 
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
