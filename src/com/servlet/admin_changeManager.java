package com.servlet;

import java.io.IOException;
import java.lang.reflect.Field;
import java.util.*;

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
 * Servlet implementation class admin_changeManager
 */
@WebServlet("/admin_changeManager")
public class admin_changeManager extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public admin_changeManager() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession hs=request.getSession();

		BaseDAO dao=new BaseDAO();
		List<Employee> userlistAll=dao.getList(Employee.class);
		List<Employee> userlist=(List<Employee>)hs.getAttribute("userlist");
		String name=null;
		String[] bosses=null;
		if(userlist.get(0).getBoss()!=null) {
		//name=userlistAll.get(userlist.get(0).getBoss()-1).getName();	
			int id=userlist.get(0).getBoss();
			System.out.println(id);
			name=dao.getNameById(id);
			System.out.println(name);
		String[] bossAll=new String[500];
		int a=0;
		for (int i = 0; i < userlistAll.size(); i++) {
			if(userlistAll.get(i).getBoss()==null) {
				bossAll[a]=userlistAll.get(i).getName();
				a++;
			}
		}	
		bosses=new String[a];
		for (int j = 0; j < a; j++) {
			bosses[j]=bossAll[j];
		}
		}
		

		
		
		Integer userid=userlist.get(0).getUserid();
		hs.setAttribute("userid", userid);
		//System.out.println(name);
		//System.out.println(userlist.get(0).getBoss());
		request.setAttribute("bossname", name);
		request.setAttribute("bosses", bosses);
		request.getRequestDispatcher("admin_empdetails.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
