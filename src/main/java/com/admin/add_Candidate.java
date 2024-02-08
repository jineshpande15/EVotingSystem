package com.admin;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;

import javax.servlet.http.HttpServletResponse;

import java.io.*;
//import com.sun.java.swing.plaf.windows.TMSchema.Part;
import javax.servlet.http.Part;

@WebServlet("/add")
@MultipartConfig
public class add_Candidate  extends HttpServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		 try {
		        String select=req.getParameter("select");
		        String cname = req.getParameter("cname");
		        String pname = req.getParameter("party");
		        String add = req.getParameter("add");
		        String phno = req.getParameter("phno");
//		        String bimg = req.getParameter("bimg");
		        Part part=	req.getPart("bimg");
				String fileName=part.getSubmittedFileName();
		     
		        Class.forName("com.mysql.cj.jdbc.Driver");
		        Connection conn = DriverManager.getConnection("jdbc:mysql:///voting_system?useSSL=false","root","root");
		        Statement st = conn.createStatement();
		        st.executeUpdate("INSERT INTO add_candidate VALUES ('"+select+"','" + cname + "','" + pname + "','" + add + "','" + phno + "','" + fileName + "','"+0+"')");


				String  path=getServletContext().getRealPath("")+"book";
				File file= new File(path);
				System.out.print(path);
				part.write(path+File.separator+fileName);
		        
		//MultipartRequest m = new MultipartRequest(request, "C:/Users/jines/OneDrive/Documents/NetBeansProjects/online voting system/web/book");  
//		        resp.sendRedirect("add_Candidate.jsp");
				 String message = "Candidate added successfully!";
				    resp.getWriter().println("<script>alert('" + message + "'); window.location.href='add_Candidate.jsp';</script>");

		    } catch (Exception e) {
		        e.printStackTrace();
		    }
		
	}


		
	}
