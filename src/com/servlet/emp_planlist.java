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
import com.entity.Plan;
import com.entity.Task;

/**
 * Servlet implementation class emp_planlist
 */
@WebServlet("/emp_planlist")
public class emp_planlist extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public emp_planlist() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		BaseDAO dao=new BaseDAO();
		
		String str_pagesize=request.getParameter("pagesize");
		int pagesize=10;
	
		if (str_pagesize!=null&&!"".equals(str_pagesize)) {
			pagesize=Integer.parseInt(str_pagesize);
		}
		String str_page=request.getParameter("page");
		int page=1;
		
		if (str_page!=null&&!"".equals(str_page)) {
			page=Integer.parseInt(str_page);
		}
		
		int size=dao.getListSize()/5;	
		if (dao.getListSize()%5!=0) {
			size++;
		}
		int count=0;
		if (size%pagesize==0) {
			count=size/pagesize;
		}else {
			count=size/pagesize+1;
		}
		
		int index=pagesize*(page-1);
		Integer taskid=Integer.parseInt(request.getParameter("taskid"));
		//System.out.println(taskid);
		List<Task> Tlist=dao.getListT(index, pagesize, taskid);
		session.setAttribute("taskid", taskid);
		List<Plan> list=dao.getListP(index,pagesize,taskid);
		request.setAttribute("Tlist", Tlist);
		
		request.setAttribute("pagesize", size);
		request.setAttribute("count", count);
		request.setAttribute("page", page);
		if (list.size()>0) {
			 request.setAttribute("planlist", list); 
		        request.setAttribute("listsize", list.size()); 
		        request.getRequestDispatcher("plan_list.jsp").forward(request, response);
		}else { 
			System.out.println("º∆ªÆ≤È—Ø ß∞‹");
	        request.getRequestDispatcher("plan_list.jsp").forward(request, response); 
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
