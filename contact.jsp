<!DOCTYPE html>
<html lang="en">
<head>
   
    <title>messager</title>
    <style>
        /* chat message  */



*{
    font-family: 'Poppins', sans-serif;
    margin: 0;
    padding: 0;
    block-size: border-box;
        text-decoration: none;
    
}

body{
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
    background-image: url("./img/message/mailboy.jpg");
    background-size: 100% 100%;
    background-repeat: no-repeat;
}

.contact h2{
    font-size: 40px;
    color: #ededed;
    text-align: center;
    margin-bottom: 10px;

}
.contact form{
    width: 600px;
    text-align: center;
}

form .input-box{
    display: flex;
    justify-content: space-between;
}

.input-box.input-field {
    width: 48.5%;
}

.field .item{
    width: 100%;
    padding: 18px;
    background: transparent;
    border: 2px solid #0ef;
    outline: none;
    border-radius: 6px;
    font-size: 16px;
    color:  #1a242f;
    margin: 12px 0;
}

.field.error .item{
    border-color: #D93025;
}
.field .item::placeholder{
    color:rgb(0, 0, 0);
}

.field  .error-txt{
    font-size: 14.5px;
    color:#D93025;
    text-align: left;
    margin: -5px 0 10px;
    display: none;
}
form .textarea-field .item{
    resize: none;
}
.field.error .error-txt{
    display: block;
}


form .textarea-field .error-txt{
    margin-top: -10px;
}

form button{
    padding: 12px 32px;
    background: #0ef;
    border: none;
    outline: none;
    border-radius: 6px;
    box-shadow: 0 0  10px  #0ef;
    font-size: 16px;
    color: #333;
    letter-spacing: 1px;
    font-weight: 600;
    cursor: pointer;
    margin-top: 20px;
    justify-content: space-between;
    margin-left: 50px;

}
form button:hover
{
    box-shadow: none;
}
.copyright{
    color: rgb(255, 255, 255);
    text-align: center;
    padding: 10px;
    width:700px;
margin-top: 50px;    
background-color: black;

}

    </style>
</head>
<body>
<section class="contact">
<h2>Contect Me!</h2>
<form action="#">
    <div class="input-box">
        <div class="input-field field">
            <input type="text" placeholder="Full Name" id="name" class="item" autocomplete="off">
            <div class="error-txt">Full  Name can't be blank</div>
        </div>
        <div class="input-field field">
            <input type="email" placeholder="Email" id="email" class="item" autocomplete="off">
            <div class="error-txt">Email can't be blank</div>
        </div>

    </div>
    <div class="input-box">
        <div class="input-field field">
            <input type="text" placeholder="Phone Number" id="phone" class="item" autocomplete="off">
            <div class="error-txt">phone number can't be blank</div>
        </div>
        <div class="input-field field">
            <input type="text" placeholder="subject" id="subject" class="item" autocomplete="off">
            <div class="error-txt">subject can't be blank</div>
        </div>
        
    </div>
    <div class="textarea-field field">
        <textarea name="" id="message" cols="30" rows="10" placeholder="Your Massage" class="item" aria-autocomplete="off"></textarea>
        <div class="error-txt">message can't be blank</div>
    </div>
    <button type="submit">Send Message</button>
    <button type="button" class="btn btn-outline-warning" ><a href="Home.jsp" >Back To Shopping</a></button><br>
    <h5 class="copyright">Copyright © Rocky Restaurants Private Limited. All rights reserved.</h5>






</form>

</section>
<script src="https://smtpjs.com/v3/smtp.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script>
const form = document.querySelector("form");
const fullName = document.getElementById("name");
const email = document.getElementById("email");
const phone = document.getElementById("phone");
const subject = document.getElementById("subject");
const message = document.getElementById("message");

function sendEmail() {
    const bodyMessage = `Full Name: ${fullName.value} <br> Email: ${email.value} <br> Phone Number: ${phone.value} <br> Message: ${message.value}`;
    Email.send({
        SecureToken: "3730e443-645f-4ef9-825e-ab27b8175ac9 ",
        To: 'rg429948@gmail.com',
        From: "rg429948@gmail.com",
        Subject: subject.value,
        Body: bodyMessage
    }).then(
        (message) => {
            if (message === "OK") {
                Swal.fire({
                    title: "Success!",
                    text: "Message Sent Successfully!",
                    icon: "success"
                });
            }
        }
    );
}

function checkInputs() {
    const items = document.querySelectorAll(".item");
    let isValid = true;

    for (const item of items) {
        if (item.value === "") {
            item.classList.add("error");
            item.parentElement.classList.add("error");
            isValid = false;
        } else {
            item.classList.remove("error");
            item.parentElement.classList.remove("error");
        }
    }

    return isValid;
}

form.addEventListener("submit", (e) => {
    e.preventDefault();

    if (checkInputs() && !fullName.classList.contains("error") && !email.classList.contains("error") && !phone.classList.contains("error") && !subject.classList.contains("error") && !message.classList.contains("error")) {
        sendEmail();

        form.reset();
        return false;
    }
});

</script>

    
</body>
</html>