<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Order Details</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <style>
body{
  background-image: url('p11.webp');
  background-repeat: no-repeat;
  background-attachment: fixed;  
  background-size: 100% 110%;
 }
 </style>
</head>
<body><br><br>
<div class="container mt-3">          
  <table class="table table-striped">
    <thead>
      <tr>
        <th>Product Name </th>
        <th>Quantity </th>
        <th>Address</th>
        <th>payment mode</th>
         <th>price</th>
      </tr>
    </thead>
<%
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/perfume","root","rahul2001");
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from orderdetail");
	while(rs.next())
	{%>
	
	<tbody>
      <tr>
        <td><%= rs.getString(1)%></td>
        <td><%= rs.getString(2)%></td>
        <td> <%=rs.getString(3) %></td>
        <td> <%=rs.getString(4) %></td>
        <td> <%=rs.getString(5) %></td>
  
		
		
		
	<%}
	%>
	
	 </tbody>
 </table>
</div>
	
	
	    <%
}
catch(Exception e)
{
	
}

%>
<a href="adminhome.jsp" class="btn btn-primary">back</a>


</body>
</html>