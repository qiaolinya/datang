package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.BaseDAO;
import com.entity.Employee;
import com.util.MD5Util;

/**
 * Servlet implementation class admin_changedetails
 */
@WebServlet("/admin_changedetails")
public class admin_changedetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public admin_changedetails() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BaseDAO dao=new BaseDAO();
		request.setCharacterEncoding("UTF-8");
		response.setContentType("textml;charset=utf-8");
		//Integer userid=Integer.parseInt(request.getParameter("userid"));
		Integer boss=Integer.parseInt(request.getParameter("boss"));
		System.out.println("主管："+boss);
		Integer userid = (Integer) request.getSession().getAttribute("id");     
		//Integer boss = (Integer) request.getSession().getAttribute("boss");  
		//String userid = request.getParameter("userid");
		System.out.println("userid:"+userid);
		//Integer userid=Integer.parseInt(request.getParameter("id"));
		String table="employee";
		String username=request.getParameter("username");
		String name=request.getParameter("name");
		String password=request.getParameter("password");
		String md5pwd=MD5Util.getMD5(password);
		String sexvalue=request.getParameter("sex");
		String birthday=request.getParameter("birthday");
		
		String job=request.getParameter("job");
		String entrytime=request.getParameter("entrytime");
		String role=request.getParameter("role");
		String sex="男";
		if(sexvalue=="2") {
			sex="女";
		}
		String education=request.getParameter("education");
		String speciality=request.getParameter("speciality");
		String experience=request.getParameter("experience");
	
        
        dao.UpdateByUserid(table,userid,username,name,md5pwd,boss,sex,birthday,job,entrytime,role,education,speciality,experience);
        
        request.getRequestDispatcher("admin_userlist?pagesize=5&page=1").forward(request, response); 
		
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
