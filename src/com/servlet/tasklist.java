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
 * Servlet implementation class emp_tasklist
 */
@WebServlet("/tasklist")
public class tasklist extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public tasklist() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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

		List<Task> list=dao.getListT(index,pagesize);
		for(int i=0;i<list.size();i++) {
			//System.out.println("第"+(i+1)+"条 = "+list.get(i).getState());
			if(list.get(i).getState().equals("1")) {
				list.get(i).setState("已完成");
				System.out.println("等于1");
			}else if(list.get(i).getState().equals("0")) {
				list.get(i).setState("未完成");
				System.out.println("等于0");
			}
			
		}
		
		
		request.setAttribute("list", list);
		request.setAttribute("pagesize", size);
		request.setAttribute("count", count);
		request.setAttribute("page", page);
		if (list.size()>0) {
			 request.setAttribute("tasklist", list); 
		        request.setAttribute("listsize", list.size()); 
		        request.getRequestDispatcher("task_list.jsp").forward(request, response);
		}else { 
			System.out.println("�����ѯʧ��");
	        request.getRequestDispatcher("task_list.jsp").forward(request, response); 
	    }
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

	public static void main(String[] args) {
		
	}

}
