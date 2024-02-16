
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

import java.io.*;

/**
 * Servlet implementation class order
 */
@WebServlet("/order")
public class order extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter pw=response.getWriter();
		String a=request.getParameter("n11");
		int b=Integer.parseInt(request.getParameter("n13"));
		String c=request.getParameter("n14");
		String d=request.getParameter("n15");
		int e = Integer.parseInt(request.getParameter("n16"));
		int dbqu=0;
		int pri;
		
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/perfume","root","rahul2001");
			Statement st=con.createStatement();
			Statement st1=con.createStatement();
			Statement st2=con.createStatement();
			ResultSet rs=st.executeQuery("select * from product where product_name='"+a+"' ");	
			if(rs.next()) {
		              
				    dbqu=rs.getInt(5);
				    pri = rs.getInt(4);
				    
				    if(b<dbqu)
				    {
				    	int fp = pri * b;
				    	int ah=dbqu-b;
					st.executeUpdate("update product set quantity='"+ah+"' where product_name='"+a+"'");
					st1.executeUpdate("insert into orderdetail values('"+a+"','"+b+"','"+c+"','"+d+"','"+e+"')");
					st2.executeUpdate("update orderdetail set price='"+fp+"' where product_name='"+a+"' ");
				    pw.println("your order is placed !!!");
				    }
				
			}
		}
		catch (Exception e1)
		{
			pw.println(e1);
		}
	}

}
