package com.servlet;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.Image;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class CodeServlet
 */
@WebServlet("/CodeServlet")
public class CodeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CodeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Random r=new Random();
		int number=r.nextInt(8999)+1000;
		String code=String.valueOf(number);
		BufferedImage image=new BufferedImage(80, 25, BufferedImage.TYPE_INT_RGB);
		Graphics g=image.getGraphics();
		g.setColor(Color.BLUE);
		g.fillRect(0, 0, 80, 25);
		g.setFont(new Font("", Font.BOLD, 25));
		g.setColor(Color.RED);
		g.drawString(code, 10, 20);
		ImageIO.write(image, "JPEG", response.getOutputStream());
		
		request.getSession().setAttribute("code", code);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
