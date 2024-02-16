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
   <style>
body{
  background-image: url('f7.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed;  
  background-size: 100% 100%;
 }
 </style>
</head>
<body>


<div class="container mt-3">
  <h2>Order Details</h2>
  <form action="order" method="post">
    <div class="mb-3 mt-3">
      <label for="product">Product Name</label>
      <input value= <%
String a = session.getAttribute("Pname").toString();
out.println(a);
%> class="form-control" id="product"  name="n11">
    </div>
    
    <div class="mb-3">
      <label for="quantity">Quantity</label>
      <input type="text" class="form-control" id="quantity"  name="n13">
    </div>
     <div class="mb-3">
      <label for="address">Address</label>
      <input type="text" class="form-control" id="address"  name="n14">
    </div>
    <div class="mb-3">
      <label for="payment">Payment Mode</label>
      <input type="text" class="form-control" id="payment"  name="n15">
    </div>
    <div class="mb-3">
      <label for="price">Price</label>
      <input value=<%
String b = session.getAttribute("Price").toString();
out.println(b);
%> class="form-control" id="price"  name="n16">
    </div>
    <div class="form-check mb-3">
      <label class="form-check-label">
        <input class="form-check-input" type="checkbox" name="remember"> Remember me
      </label>
    </div>
    <button type="submit" class="btn btn-primary">Order</button>
  </form>
</div>





</body>
</html>