

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.sql.*;

import java.io.*;
/**
 * Servlet implementation class login
 */
@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter pw=response.getWriter();
		String a=request.getParameter("username");
		String b=request.getParameter("password");
		String c=request.getParameter("choose");
		
		if(c.equals("User"))
		{
			
			try
			{
				Class.forName("com.mysql.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/perfume","root","rahul2001");
				Statement st=con.createStatement();
				ResultSet rs=st.executeQuery("select * from user where username='"+a+"' and password='"+b+"'");
				if(rs.next())
				{
					HttpSession session = request.getSession();
					session.setAttribute("usern", a);
					
				response.sendRedirect("userhome.jsp");
				}
				else
				{
					response.sendRedirect("UserLogin.jsp");
					}
						
			}
			catch(Exception e1)
			{
				pw.println(e1);
			}
			
			
		}
		if(c.equals("Admin"))
		{
			
			if(a.equals("Admin") && b.equals("Admin@123"))
			{
				response.sendRedirect("adminhome.jsp");
			}
			else
			{
				response.sendRedirect("UserLogin.jsp");
			}
				
		}
	}

}
