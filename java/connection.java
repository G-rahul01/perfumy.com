

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.sql.*;

import java.io.*;
/**
 * Servlet implementation class connection
 */
@WebServlet("/connection")
public class connection extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter pw=response.getWriter();
		int a;
		int c;
		 a = Integer.parseInt(request.getParameter("n1"));
		String b = request.getParameter("n2");
		 c = Integer.parseInt(request.getParameter("n4"));
		String d = request.getParameter("n5");
		
		
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/perfume","root","rahul2001");
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery("select * from product where product_id='"+a+"'and product_name= '"+b+ "' and price='"+c+"' ");
			if(rs.next())
			{
				HttpSession session = request.getSession();
				session.setAttribute("Pname", b);
				
				HttpSession sessionPrice = request.getSession();
				sessionPrice.setAttribute("Price", c);
				
			response.sendRedirect("order.jsp");
			}
		}
		catch(Exception e)
		{
			pw.println(e);
		}
		
		
	}

}
