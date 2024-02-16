<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
<title>Insert title here</title>

</head>
<style>
body{
  background-image: url('q1.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed;  
  background-size:100% 100%;
  position:cover;
}
.copyright{
    color: rgb(255, 255, 255);
    text-align: center;
    padding: 10px;
margin-top: 15px;    
background-color: black;
padding:14px;

}


</style>

<nav class="navbar navbar-expand-sm bg-light">
  <div class="container-fluid">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" href="userdetail.jsp">User Details</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="productdetail.jsp">Product Details</a>
      </li>
      <li class="nav-item">
      <a class="nav-link" href="orderdetail.jsp">Order Details</a>
      </li>
    </ul>
  </div>
</nav>
<br>
<!-- Carousel -->
<div id="demo" class="carousel slide" data-bs-ride="carousel">

  <!-- Indicators/dots -->
  

  <!-- The slideshow/carousel -->
  <center>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="p1.jpg" alt="Jaguar" class="d-block w-80" height = "600px">
    </div>
    <div class="carousel-item">
      <img src="p2.jpg" alt="Fogg" class="d-block w-80" height = "600px">
    </div>
    <div class="carousel-item">
      <img src="p3.jpg" alt="Axe" class="d-block w-80" height = "600px">
    </div>
     <div class="carousel-item">
      <img src="p4.jpg" alt="One Man Show" class="d-block w-80" height = "600px">
    </div>
     <div class="carousel-item">
      <img src="p5.jpg" alt="Park Avenue" class="d-block w-80" height = "600px">
    </div>
     <div class="carousel-item">
      <img src="p6.jpg" alt="" class="d-block w-80" height = "600px">
    </div>
     <div class="carousel-item">
      <img src="p7.jpg" alt="Romance" class="d-block w-80" height = "600px">
    </div>
  </div>
  </center>
  <!-- Left and right controls/icons -->
  <button class="carousel-control-prev" type="button" data-bs-target="#demo" data-bs-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#demo" data-bs-slide="next">
    <span class="carousel-control-next-icon"></span>
  </button>
</div>
<h5 class="copyright">Copyright © Perfumy Private Limited. All rights reserved.</h5>

</body>
</html>