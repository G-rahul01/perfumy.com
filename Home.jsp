<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <!-- Latest compiled and minified CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Latest compiled JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
  
     <style>
   
*{
    padding: 0;
    margin: 0;
    list-style: none;
    text-decoration: none;
}
body{
    height: 100vh;
    width: 100%;

}
 .logo{
    text-align: left;
    border-width: 2px;
    display:block;
    width: 220px;
 }
h2{
    background-color: black;
    color:white;
    display: inline;
}
h2,ul,li{
    display: inline;
   
}
ul{
    margin-left: 70%;
    
}
li{
    color: gray;
    cursor: pointer;
    
}
li:hover{
    color: white;
}
input{
    width: 60%;
    padding: 15px;
}
.search{
    padding: 50px;
    text-align: center;
}
.box{
    border-color: black;
    border-width: 1px;
    border-style: solid;
    display: inline-block;
    width: 250px;
}
.product{
    text-align: center;
}
.box:hover{
    background-color:black;
    color: white;
    cursor: pointer;
}
.about{
    text-align: center;
    margin-top: 20px;
    padding: 20px;
}
.contact{
    background-color: black;
    color: white;
    text-align: center;
    padding: 20px;
}
html{
    text-align: center;
    margin: 0;
    padding: 0;
  }
 
<!-- Latest compiled fooderpath-->
section{
    padding: 80px 13% 70px;
}
.footer{
padding-top:50px;
    display: grid;
    grid-template-columns: repeat(auto-fit,minmax(200px,auto));
    gap: 5.5 rem;
    background: #1a242f;
    height:500px;
    position: static;
    left: 0;
    right: 0;
bottom: 0;
padding-left:200px;
}
.footer-content p{
    color: #d6d6d6;
}
.footer-content h3{
    color: white;
    margin-bottom: 1.5rem;
    font-size: 20px;
}
.footer-content h3,p{
    padding-right: 70px;
}

.footer-content h4{
    color: white;
    margin-bottom: 1.5rem;
    font-size: 20px;
}
.footer-content li{
    margin: bottom 10px;

}
.icons a{
display: inline-block;
margin-right: 17px;
    transition: all.40s ease;
padding-bottom: 20px;
}
.icons a:hover{
    transform: translateY(-3px) translateY(-5px);
    cursor: pointer;
}

.footer-content li{
    margin-top: 16px;
display: block;
    color: #d6d6d6;
    font-weight: 400;
    font-size: 15px;
    transition: all.40s ease;
    
}
.footer-content li:hover{
color: #9b0a0a;
transform: translateY(-3px) translateY(-5px);
cursor: pointer;
}
.footer-content p:hover{
    color: #b51919;
    transform: translateY(-3px) translateY(-5px);
    cursor: pointer;
    }
.copyright{
    color: rgb(203, 18, 18);
    text-align: center;
    padding: 10px;
    width:700px;
        padding-left: 150%;
    
}
 hr{
 color:white;
 padding-down:20%;
 }
.glow,li{
    display: inline-flex;
    padding-right:20px;
 }

 .glow {
  font-size: 80px;
  color: #fff;
  text-align: center;
  animation: glow 1s ease-in-out infinite alternate;
}

@-webkit-keyframes glow {
  from {
    text-shadow: 0 0 5px #fff, 0 0 20px #fff, 0 0 30px #e60073, 0 0 40px #e60073, 0 0 50px #e60073, 0 0 60px #e60073, 0 0 70px #e60073;
  }
  
  to {
    text-shadow: 0 0 5px #fff, 0 0 30px #ff4da6, 0 0 40px #ff4da6, 0 0 50px #ff4da6, 0 0 60px #ff4da6, 0 0 70px #ff4da6, 0 0 80px #ff4da6;
  }
}
</style>
</head>
<body>
  <nav class=" navbar navbar-expand-lg  
        navbar-light bg-black fixed-top py-lg-0 "> 
  
        <a class="navbar-brand" href="Home.jsp"> 
  
            <!-- Add logo with size of 90*80 -->
            <img src= "./logo/lo1.png" width="150" height="40" alt="logo"> 
        </a> 
  
     
      <ul class="glow">
       <li><h4><a style="text-decoration: none;color:white;" href="userreg.jsp">ᖇEGISTEᖇ  </a></h4></li>
       <li><h4><a style="text-decoration: none;color:white;" href="UserLogin.jsp">ᒪOGIᑎ</a></h4></li>
       <li> <h4><a style="text-decoration: none;color:white;" href="contact.jsp">ᑕOᑎTᗩᑕT</a></h4></li>

     </ul>
 </nav>
 <br>
 <br>
 <br>
 <br>
 <br>
<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
      
    <div class="carousel-inner">
     <div class="carousel-item active">
        <img src="./slider/t3.webp" class="img-fluid" width="1500px"  alt="..." >
      </div>
      <div class="carousel-item ">
        <img src="./slider/jaguar.jpg" class="img-fluid " width="1500px"alt="...">
      </div>
     
      <div class="carousel-item">
        <img src="./slider/fogg.jpg" class="img-fluid" width="1500px" alt="...">
      </div>
      <div class="carousel-item">
        <img src="./slider/park.jpg" class="img-fluid" width="1500px"  alt="...">
      </div>
     
      <div class="carousel-item">
        <img src="./slider/villain.jpg" class="img-fluid" width="1500px" alt="...">
      </div>
      
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Next</span>
    </button>
  </div>
  <div class="search">
<input placeholder ="search">
</div>

<div class="product">
<div class="box">
    
    <a href="jaguar.jsp">
    <img src="./p1.jpg" height="220px" width="220px" alt="jaguar">
    </a>
    <h4>JAGUAR Perfume(..Read more)</h4>
</div>
<div class="box">
     <a href="fogg.jsp">
    <img src="./p2.jpg" height="220px" width="220px" alt="Fogg">
    </a>
    <h4>FOGG Parfume(..Read more)</h4>
</div>
<div class="box">
    <a href="axe.jsp">
    <img src="./p3.jpg" height="220px" width="220px" alt="Axe">
     </a>
    <h4>AXE Signater Perfume(..Read more)</h4>
   
</div>

</div> <br> <br>

<div class="product">
    <div class="box">
            <a href="one man show.jsp">
    
        <img src="./p4.jpg" height="220px" width="220px" alt="One Man Show">
        </a>
        <h4>One Man Show Perfume (..Read more)</h4>
    </div>
    <div class="box">
        <a href="park avenue.jsp">
        <img src="./p5.jpg" height="220px" width="220px" alt="Park Avenue">
        </a>
        <h4>PARK AVENUE Dynamo Eau de Parfum (..Read more)</h4>
        
    </div>
    <div class="box">
            <a href="blue lady.jsp">
    
        <img src="./p6.jpg" height="220px" width="220px" alt="Blue Lady">
        </a>
        <h4>RASASI BLUE LADY PERFUME (..Read more)</h4>
    </div>
    
    </div> <br> <br>
    
<div class="product">
    <div class="box">
            <a href="romance.jsp">
    
        <img src="./p7.jpg" height="220px" width="220px" alt="Romance Perfume">
        </a>
        <h4>RASASI Romance Eau de Parfume (..Read more)</h4>
    </div>
    <div class="box">
                <a href="villain.jsp">
    
        <img src="./p8.webp" height="220px" width="220px" alt="Villain Perfume">
        </a>
        <h4>VILLAIN BLACK Eau de Parfume (..Read more)</h4>
    </div>
    <div class="box">
    <a href="the man company.jsp">
        <img src="./p9.webp" height="220px" width="220px" alt="Tne Man Company Perfume">
        </a>
        <h4>THE MAN COMPANY Perfume (..Read more)</h4>
    </div>
    
    </div>

<div class="about">
<h1>About</h1>
<p>WELCOME TO PERFUME DIRECT, THE UK'S PREMIER ONLINE FRAGRANCE & BEAUTY STORE.

    STOCKING A RANGE OF SPECIALLY SELECTED PERFUMES, AFTERSHAVES & GIFT SETS FROM LUXURY BRANDS SUCH AS HUGO BOSS, GUCCI, ARMANI, PACO RABANNE, CALVIN KLEIN, DKNY, JIMMY CHOO & MANY MORE. 
    
    OUR CUSTOMER FOCUSED APPROACH MEANS THAT OUR BUSINESS IS BUILT AROUND YOU. WE SET OUT TO PROVIDE THE BEST PRODUCTS, AT THE BEST PRICE WITH THE BEST CUSTOMER CARE PACKAGE ON THE MARKET. 
    
    WE HAVE BUILT AN EXTENSIVE GLOBAL NETWORK OF BRANDS & SUPPLIERS WHICH ENABLES US TO SOURCE THE LATEST FRAGRANCES AT A GREAT PRICE, WHICH IS THE REASON WE ARE ABLE TO KEEP OUR PRICES LOW. 
    </p>
    
    
    
    
       <section class="footer">
<div class="footer-content">
    <h3>OUR PROMISE</h3>
  <p>We make emotive, uncomplicated fragrances designed to make you feel good. <br>

   <br> Discover a unique range of bath, body, & skincare essentials with captivating fragrances at Perfumy - a luxury lifestyle personal care brand that celebrates responsible luxury & thoughtful skincare.</p>
    <br>
<div class="icons">
    <a href="https://wa.me/qr/HPRZNEANPSVKE1"><img src="./fooder/whatsapp.png" width="40" height="30"/></a>
    <a href="https://www.facebook.com/profile.php?id=100038506965517&mibextid=zLoPMf" ><img src="./fooder/facebook.png"width="40" height="30"/></a>
    <a href="https://instagram.com/iam_rahulg_?igshid=YzAwZjE1ZTI0Zg=="><img src="./fooder/instagram.png"/width="40" height="30"></a>
    <a href="mailto:rg429948@gmail.com?"><img src="./fooder/gmail.png"/width="40" height="30"></a>
   
</div>


</div>
<div class="footer-content">
    <h4>CATEGORIES</h4>
    <li>Beard</li>
    <li>Fragrance</li>
    <li>Hair</li>
    <li>Tools & Accessories</li>

</div>
<div class="footer-content">
    <h4>INFORMATION</h4>
    <li>Blogs</li>
    <li>About Us</li>
    <li>Contact Us</li>
    <li>Terms of Service</li>

</div>



<div class="footer-content">
    <h4>SUPPORT</h4>
    <li>Privacy Policy</li>
    <li>Shipping Policy</li>
    <li>Refund & Return Policy</li>
    <li>Terms & Conditions</li>

</div>

<div class="footer-content">
<h4>Address</h4>
<p style="padding-left:80px">Address:55,Thiruvalluvar street,Rajendrasozhagan post,Kattumannarkoil,Cuddalore,<br>Tamilnadu-606301.<br>Phone.no:8973461155</p>
</div>

<hr style="color: #1a242f">
<hr>
<hr>
<hr>
<hr>
<hr>
<br>

<h5 class="copyright">Copyright © Perfumy Private Limited. All rights reserved.</h5>

    </section>
</div>


</body>
</html>