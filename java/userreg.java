

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

import java.io.*;
/**
 * Servlet implementation class userreg
 */
@WebServlet("/userreg")
public class userreg extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userName = request.getParameter("username");
		String password = request.getParameter("password");
		String email = request.getParameter("email");
		String question = request.getParameter("option");
		String answer = request.getParameter("answer");
		String address = request.getParameter("address");
		String phoneNumber = request.getParameter("phonenumber");
		
		String confirmPassword = request.getParameter("confirm");
		PrintWriter pw = response.getWriter();
		
		if(password.equals(confirmPassword))
		{
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/perfume","root","rahul2001");
			PreparedStatement ps = con.prepareStatement("insert into user values(?,?,?,?,?,?,?)");
			ps.setString(1,userName);
			ps.setString(2,password);
			ps.setString(3,email);
			ps.setString(4,question);
			ps.setString(5,answer);
			ps.setString(6,address);
			ps.setString(7,phoneNumber);
			ps.executeUpdate();
			response.sendRedirect("UserLogin.jsp");
		}
		catch(Exception e1)
		{
			pw.println(e1);
		}
		}else 
		{
			response.sendRedirect("userreg.jsp");
		}
		
	}

}
