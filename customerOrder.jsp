<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>

<div class="container mt-3">
  <h2>Basic Card</h2>
  <div class="card">
    <div class="card-body">Basic card</div>
  </div>
</div>

<%

try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/shopping","root","Root@123");
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from orderdetail");
	while(rs.next())
	{%>
	
	<div class="container mt-3">
  <h2>Basic Card</h2>
  <div class="card">
    <div class="card-body">Basic card</div>
    Product name: <input value=<%=rs.getString(1) %>><br><br>
    Quantity : <input value=<%=rs.getString(2) %>><br><br>
    Address : <input value=<%=rs.getString(3) %>><br><br>
    Payment Mode : <input value=<%=rs.getString(4) %>><br><br>
    Price : <input value=<%=rs.getString(5) %>><br><br>
  </div>
</div>
	
	
	<%}
	
}
catch(Exception e){
	
}



%>



</body>
</html>