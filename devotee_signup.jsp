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
      *{
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
      max-width: 25.938rem;
      background: #F8F9FD;
      /* background: linear-gradient(0deg, rgb(255, 255, 255) 0%, rgb(244, 247, 251) 100%); */
      /* background: radial-gradient(circle at 10% 20%, rgb(255, 200, 124) 0%, rgb(252, 251, 121) 90%); */
      background: linear-gradient(to top, #fff1eb 0%, #ace0f9 100%);
      border-radius: 2.5rem;
      padding: 1.563rem 2.188rem;
      border: 5px solid rgb(255, 255, 255);
      /* box-shadow: rgba(133, 189, 215, 0.8784313725) 0px 30px 30px -20px; */
      margin: 1.25rem;
      margin-left: 7.5rem;
    }

    .heading {
      text-align: center;
      font-weight: 800;
      font-size: 20px;
      color: rgb(16, 137, 211);
    }

    .form1 {
      margin-top: 0.625rem;
    }

    .form1 .input {
      width: 100%;
      background: white;
      border: none;
      padding: 10px 15px;
      border-radius: 15px;
      margin-top: 10px;
      box-shadow: #cff0ff 0px 10px 10px -5px;
      border-inline: 2px solid transparent;
    }
    .form1 .input::-moz-placeholder {
      color: rgb(170, 170, 170);
    }

    .form1 .input::placeholder {
      color: rgb(170, 170, 170);
    }

    .form1 .input:focus {
      outline: none;
      border-inline: 2px solid #12B1D1;
    }



</style>
  </head>
  <body class="gradient-div4">
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
      <section class="form my-4 mx-5">
        <div class="container bg-transparent rounded" style="width: 62.5rem;">
          <div class="row bg-transparent no-gutters g-0">
            <div class="col-md-8 m-auto rounded shadow-lg">
              <div class="container1">
                <div class="heading"><i class="fa-solid fa-gopuram"></i> Devotee Sign Up <i class="fa-solid fa-gopuram"></i></div>
                <form action="devotee_signup.do" id="myForm" class="needs-validation form1" novalidate method="POST">
                  <div class="mb-2">
                    <input required class="input" type="text" name="devotee_name" placeholder="Devotee Name" title="Type Your Name Here" autofocus>
                    <div class="invalid-feedback text-center">
                      Please enter devotee name.
                    </div>
                  </div>
                  <div class="mb-2">
                      <input required class="input" type="text" name="phone_number" placeholder="Enter your phone number" title="Enter your phone number">
                      <div class="invalid-feedback text-center">
                        Please enter phone number.
                      </div>
                    </div>
                    <div class="mb-2">
                      <input required class="input" type="email" name="d_email" placeholder="Email" title="Enter Valid Email">
                      <div class="invalid-feedback text-center">
                        Please enter a valid email address.
                      </div>
                    </div>
                    <div class="mb-3">
                      <input required class="input" type="password" name="d_password" placeholder="Password" title="Enter Valid Password">
                      <div class="invalid-feedback text-center">
                        Please enter a password.
                      </div>
                    </div>
                    <div class="mb-3">
                      <div class="col">
                        <div class="g-recaptcha" data-sitekey="6LdrDbIkAAAAAA6DdTH9au37p09uEmHr9h1_Xe6L"></div>
                      </div>
                    </div>
                  <button type="submit" id="myInput" class="btn btn-primary w-100" onclick="submitForm()">
                    Sign Up
                  </button>
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
    let submit_btn = document.getElementById('myInput'); 
    function submitForm() {
        var form = document.getElementById('myForm');
        if (form.checkValidity() === false) {
            event.preventDefault();
            event.stopPropagation();
        } else {
          //   Form is valid, display a success message in the modal
          
        }
        form.classList.add('was-validated');
     
    }

</script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
  </body>
</html>

