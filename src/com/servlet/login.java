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

import org.apache.jasper.tagplugins.jstl.core.Out;

import com.entity.Employee;
import com.util.MD5Util;
import com.util.WordFilter;
import com.dao.BaseDAO;




/**
 * Servlet implementation class login
 */
@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		String role=request.getParameter("role");
		String md5pwd=MD5Util.getMD5(password);
		WordFilter wf=new WordFilter(request);
		
		String s=wf.getParameter("word");
		BaseDAO dao=new BaseDAO();
		
		String session_code=(String)request.getSession().getAttribute("code");
		String code=request.getParameter("code");
		if (code.equals(session_code)) {
			List<Employee> List=dao.getList(Employee.class, "where username='"+username+"' and md5pwd='"+md5pwd+"' and role ='"+role+"'");
			if (List.size()>0) {
				request.getSession().setAttribute("user", List.get(0));
				request.getRequestDispatcher("index.jsp").forward(request, response);
			}else {
				request.getRequestDispatcher("login.jsp").forward(request, response);
			}
		}else {
			request.getRequestDispatcher("login.jsp").forward(request, response);
			request.setAttribute("tip", "");
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
