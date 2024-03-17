<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">    <script src="https://kit.fontawesome.com/fa2f46837d.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="static/css/style.css">
    <script src="https://kit.fontawesome.com/fa2f46837d.js" crossorigin="anonymous"></script>
    <script src="https://www.google.com/recaptcha/api.js" async defer></script>
    <title>TEMPLE</title>
    <style>
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }
    .row {
    border-radius: 100px;
    /* box-shadow: 12px 12px 22px rgb(195, 195, 195); */
    }
    body{
        background: linear-gradient(106.5deg, rgba(255, 215, 185, 0.91) 23%, rgba(223, 159, 247, 0.8) 93%);        
    }
    .container1 {
        max-width: 26.938rem;
        background: #F8F9FD;
        /* background: linear-gradient(0deg, rgb(255, 255, 255) 0%, rgb(244, 247, 251) 100%); */
        background: radial-gradient(circle at 10% 20%, rgb(255, 200, 124) 0%, rgb(252, 251, 121) 90%);
        border-radius: 2.5rem;
        padding: 1.563rem 2.188rem;
        border: 5px solid rgb(255, 255, 255);
        /* box-shadow: rgba(133, 189, 215, 0.8784313725) 0px 30px 30px -20px; */
        margin: 1.25rem;
        margin-left: 7.5rem;
    }
    .form {
    display: flex;
    align-items: center;
    flex-direction: column;
    justify-content: space-around;
    width: 350px;
    /* background-color: white; */
    border-radius: 12px;
    padding: 20px;
    border: 1px solid black;
  }

.title {
  font-size: 20px;
  font-weight: bold;
  color: black
}

.message {
  color: #a3a3a3;
  font-size: 14px;
  margin-top: 4px;
  text-align: center
}

.inputs {
  margin-top: 10px
}

.inputs input {
  width: 32px;
  height: 32px;
  text-align: center;
  border: none;
  border-bottom: 1.5px solid #d2d2d2;
  margin: 0 10px;
}

.inputs input:focus {
  border-bottom: 1.5px solid royalblue;
  outline: none;
}

.otp-input:focus,
.otp-input:valid {
  background-color: white;
  transition-duration: .3s;
}

  </style>
  </head>
  <body class="gradient-div2">
    <!-- Header -->
    <nav class="navbar navbar-expand-lg nav-gradient">
      <div class="container-fluid">
          <a class="navbar-brand link-dark" href="index.jsp">
            <img src="static/images/logo.png" alt="" width="30" height="24" class="d-inline-block align-text-top">
            TEMPLE
          </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"><i class="fa-solid fa-bars"></i></span>
        </button>
        <div class="collapse navbar-collapse " id="navbarSupportedContent">
          <button type="button" class="btn btn-light border border-dark ml-auto">
            <a href="login.do" class="text-decoration-none link-dark">
              Login &nbsp;&nbsp; <i class="fa-solid fa-gopuram"></i>
            </a>
          </button>
          <button type="button" class="btn btn-success ml-3">
            <a href="signup_dashboard.jsp" class="text-decoration-none" style="color: azure;">Sign Up <i class="fa-regular fa-user"></i></a>
          </button>
        </div>
      </div>
  </nav>
  <!-- Header -->
      <!-- Signup Form -->
    <div class="container-fluid">
      <section class="my-4 mx-5">
        <div class="container bg-transparent rounded" style="width: 62.5rem;">
          <div class="row bg-transparent no-gutters g-0">
            <div class="col-md-8 m-auto rounded gradient-div1 shadow-lg">
              <div class="container1">
                <form action="#" class="form" id="otpForm" method="post">
                    <div class="title">OTP</div>
                    <div class="title">Verification Code</div>
                    <p class="message">We have sent a verification code to your mobile number</p> 
                    <div class="inputs"> 
                      <input required maxlength="1" type="text" name="num3" class="otp-input" id="otp3" autocomplete="off" oninput="handleInput(event, document.getElementById('otp4'))">
                      <input required maxlength="1" type="text" name="num4" class="otp-input" id="otp4" autocomplete="off" oninput="handleInput(event, document.getElementById('otp5'))"> 
                      <input required maxlength="1" type="text" name="num5" class="otp-input" id="otp5" autocomplete="off" oninput="handleInput(event, document.getElementById('otp6'))"> 
                      <input required maxlength="1" type="text" name="num6" class="otp-input" id="otp6" autocomplete="off" oninput="handleInput(event, null)" onpaste="handlePaste(event)"> 
                    </div> 
                    <p class="mt-4 w-100 text-center">
                      <input type="submit" class="btn btn-outline-success w-50" value="Verify"> 
                    </p>
                  </form>
              </div>
            </div>
          </div>
        </div>
      </section>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
    <script>
        const form = document.getElementById('otpForm');
        const otpFields = document.querySelectorAll('.otp-input');

        form.addEventListener('submit', function(event) {
        event.preventDefault();

        let otp = '';
        otpFields.forEach(function(field) {
            otp += field.value;
        });

        if (/^\d{4}$/.test(otp)) {
            // Here, you can submit the form or perform further actions.
            console.log("Form submitted successfully!");
        } else {
            document.getElementById('error-message').style.display = 'block';
        }
        });

        // Remove error class on input focus
        otpFields.forEach(function(field) {
        field.addEventListener('input', function() {
            if (/^\d{1}$/.test(field.value)) {
            field.classList.remove('error');
            }
        });
        });

        function handleInput(e, nextInput) {
        const maxLength = 1;
        const inputValue = e.target.value;

        if (inputValue.length > maxLength) {
            e.target.value = inputValue.slice(0, maxLength);
        }

        if (inputValue && nextInput) {
            nextInput.focus();
        }
        }

        function handlePaste(e) {
        e.preventDefault();
        const pasteData = e.clipboardData.getData('text/plain');
        const otpInputs = document.querySelectorAll('.otp-input');

        for (let i = 0; i < otpInputs.length; i++) {
            otpInputs[i].value = pasteData[i] || '';
        }
        }

        function clearOTPInputs() {
        const otpInputs = document.querySelectorAll('.otp-input');
        for (let i = 0; i < otpInputs.length; i++) {
            otpInputs[i].value = '';
        }
        document.getElementById('otp1').focus();
        }

    </script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
  </body>
</html>
