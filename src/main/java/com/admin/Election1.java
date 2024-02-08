package com.admin;

import java.io.IOException;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/fetch")
@MultipartConfig
public class Election1 extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PrintWriter out = resp.getWriter();
		out.println("<img src=\"online-voting.jpg\"  width=\"1400\" height=\"600\">");
		
		try
	{
		String s1=req.getParameter("select");
		   Class.forName("com.mysql.cj.jdbc.Driver");
	        Connection conn = DriverManager.getConnection("jdbc:mysql:///voting_system?useSSL=false","root","root");
	        Statement st = conn.createStatement();
//	        st.executeUpdate("INSERT INTO add_candidate VALUES ('"+select+"','" + cname + "','" + pname + "','" + add + "','" + phno + "','" + fileName + "')");
ResultSet rs= st.executeQuery("select bimg,candidate,party from add_candidate where election='"+s1+"'");
// Generate the HTML code for the table

out.println("<html>");
out.println("<head>");
out.println("<iframe src=\"included.jsp\" ></iframe>");
out.println("</head>");
out.println("<body>");
out.println("<table class='table'>");
out.println("<thead class='thead-dark'>");
out.println("<tr>");
out.println("<th scope='col'>Candidate Profile</th>");
out.println("<th scope='col'>Candidate Name</th>");
out.println("<th scope='col'>Party</th>");
out.println("<th scope='col'>Vote</th> ");
out.println("</tr>");	
out.println("</thead >");
while(rs.next())
	{
        
	out.println("<tbody>");
        out.println("<tr>");
        out.println("<td scope='row'><img alt=\"\" src=\"book/" + rs.getString(1) + "\" style=\"width:100px;height:100px\"></td>");

//        out.println("<td><img alt=\"\" src=\"book/'" + rs.getString(1) + "'\" style=\"width:150px;height:50px\"></td>");
//        out.println("<td>'"+rs.getString(1)+"'</td>");
        out.println("<td scope='row'>'"+rs.getString(2)+"'</td>");
        out.println("<td scope='row'>'"+rs.getString(3)+"'</td>");
//        out.println("<td><img alt="" src="book/'"+rs.getString(1)+"'" style="width:150px;height:50px"></td>");
        
//        out.println("<td><img alt=\"\" src=\"C:\\Users\\jines\\OneDrive\\Documents\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\vSystem\\book/" + rs.getString(1) + "\" style=\"width:150px;height:50px\"></td>");

        out.println("</tr>");	
        out.println("</tr>");
        
     
    }

out.println("</table>");
out.println("</body>");
out.println("</html>");
	
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	}

}
