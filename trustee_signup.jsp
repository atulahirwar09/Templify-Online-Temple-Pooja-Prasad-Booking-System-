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
      background: radial-gradient(circle at 10% 20%, rgb(255, 200, 124) 0%, rgb(252, 251, 121) 90%);
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

    .otp-Form {
  width: 460px;
  height: 350px;
  background: radial-gradient(circle at 10% 20%, rgb(255, 200, 124) 0%, rgb(252, 251, 121) 90%);        
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  padding: 20px 30px;
  gap: 20px;
  position: relative;
  box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.082);
  border-radius: 15px;
}

.mainHeading {
  font-size: 1.5em;
  color: rgb(15, 15, 15);
}

.otpSubheading {
  font-size: 0.8em;
  color: black;
  line-height: 0px;
  text-align: center;
}

.inputContainer {
  width: 100%;
  display: flex;
  flex-direction: row;
  gap: 10px;
  align-items: center;
  justify-content: center;
}

.otp-input {
  background-color: white;
  width: 30px;
  height: 30px;
  text-align: center;
  border: none;
  border-radius: 7px;
  caret-color: rgb(127, 129, 255);
  color: rgb(44, 44, 44);
  outline: none;
  font-weight: 600;
}

.otp-input:focus,
.otp-input:valid {
  background-color: rgba(127, 129, 255, 0.199);
  transition-duration: .3s;
}

.verifyButton {
  width: 100%;
  height: 30px;
  border: none;
  background-color: rgb(104, 106, 239);
  color: white;
  font-weight: 600;
  cursor: pointer;
  border-radius: 10px;
  transition-duration: .2s;
}

.verifyButton:hover {
  background-color: rgb(67, 70, 212);
  transition-duration: .2s;
}

.exitBtn {
  position: absolute;
  top: 5px;
  right: 5px;
  box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.171);
  background-color: rgb(255, 255, 255);
  border-radius: 50%;
  width: 25px;
  height: 25px;
  border: none;
  color: black;
  font-size: 1.1em;
  cursor: pointer;
}

.resendNote {
  font-size: 0.7em;
  color: black;
  width: 100%;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  gap: 5px;
}

.resendBtn {
  background-color: transparent;
  border: none;
  color: rgb(127, 129, 255);
  cursor: pointer;
  font-size: 1.1em;
  font-weight: 700;
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
      <section class="form my-4 mx-5">
        <div class="container bg-transparent rounded" style="width: 62.5rem;">
          <div class="row bg-transparent no-gutters g-0">
            <div class="col-md-8 m-auto rounded gradient-div1 shadow-lg">
              <div class="container1">
                <div class="heading"><i class="fa-solid fa-gopuram"></i> Temple Sign Up <i class="fa-solid fa-gopuram"></i></div>
                <form action="trustee_signup.do" id="myForm" class="needs-validation form1" novalidate method="POST">
                  <div class="mb-2">
                    <input required class="input" type="text" name="trustee_name" placeholder="Trustee Name" title="Add Temple Trustee Name" autofocus>
                    <div class="invalid-feedback text-center">
                      Please enter trustee name.
                    </div>
                  </div>
                  <div class="mb-2">
                      <input required class="input" type="text" name="temple_name" placeholder="Temple Name" title="Add Temple Name">
                      <div class="invalid-feedback text-center">
                        Please enter temple name.
                      </div>
                    </div>
                    <div class="mb-2">
                      <input required class="input" type="email" name="t_email" placeholder="Email" title="Enter Valid Email">
                      <div class="invalid-feedback text-center">
                        Please enter a valid email address.
                      </div>
                    </div>
                    <div class="mb-3">
                      <input required class="input" type="password" name="t_password" placeholder="Password" title="Enter Valid Password">
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
              <!-- Modal -->
              <div class="modal fade" id="myModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                       
                        <div class="modal-body gradient-div2" id="modalBody">
                          <form action="#" class="otp-Form">
 
                            <span class="mainHeading">Enter OTP</span>
                            <p class="otpSubheading">We have sent a verification code to your Email</p>
                            <div class="inputContainer">
                              <input required maxlength="1" type="text" class="otp-input" id="otp-input1" autocomplete="off">
                              <input required maxlength="1" type="text" class="otp-input" id="otp-input2" autocomplete="off">
                              <input required maxlength="1" type="text" class="otp-input" id="otp-input3" autocomplete="off">
                              <input required maxlength="1" type="text" class="otp-input" id="otp-input4" autocomplete="off"> 
                              <input required maxlength="1" type="text" class="otp-input" id="otp-input5" autocomplete="off"> 
                              <input required maxlength="1" type="text" class="otp-input" id="otp-input6" autocomplete="off"> 
                            </div>
                            <button class="verifyButton"  type="submit">Verify</button>
                            <p class="resendNote">Didn't receive the code? <button class="resendBtn">Resend Code</button></p>
                            <button class="exitBtn" data-bs-dismiss="modal"><i class="fa-solid fa-xmark"></i></button>
                             
                            </form>                         
                        </div>
                    </div>
                </div>
              </div>
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
      //   let submit_form = async () => {
      //     let response = await fetch('trustee_signup.do');
      //     let result = await response.text();
      //     return result;
      //   }

      // submit_btn.addEventListener('click', ()=>{
      //   submit_form().then((data)=>{
      //     console.log("Success")  
      //     console.log(data);
      //     console.log("Success")
      //   }).catch((err)=>{
      //     console.log("Error")
      //     console.log(err); 
      //     console.log("Error")
      //   });
      // }); 
    }

</script>
<!-- <form action="verify.do" class="otp-Form" method="post">
                            
  <span class="mainHeading">Enter OTP</span>
  <p class="otpSubheading">We have sent a verification code to your Email</p>
  <div class="inputContainer">
      <input required="required" name="num1" maxlength="1" type="text" class="otp-input" id="otp-input1" autocomplete="off">
      <input required="required" name="num2" maxlength="1" type="text" class="otp-input" id="otp-input2" autocomplete="off">
      <input required="required" name="num3" maxlength="1" type="text" class="otp-input" id="otp-input3" autocomplete="off">
      <input required="required" name="num4" maxlength="1" type="text" class="otp-input" id="otp-input4" autocomplete="off"> 
      <input required="required" name="num5" maxlength="1" type="text" class="otp-input" id="otp-input5" autocomplete="off"> 
      <input required="required" name="num6" maxlength="1" type="text" class="otp-input" id="otp-input6" autocomplete="off"> 
  </div>
  <button class="verifyButton" type="submit">Verify</button>
      <button class="exitBtn" data-bs-dismiss="modal"><i class="fa-solid fa-xmark fa-sm"></i></button>
      <p class="resendNote">Didn't receive the code? <button class="resendBtn">Resend Code</button></p>
    
</form> -->
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
  </body>
</html>

<!-- let submit_form = async () => {
  let response = await fetch('trustee_signup.do');
  let result = await response.text();
  return result;
}

submit_btn.addEventListener('click', ()=>{
  submit_form().then((data)=>{
    console.log(data);
  }).catch((err)=>{
    console.log(err); 
  });
}); -->

<!-- <div class="col-md-5 mx-auto rounded mt-1 p-1">
  <div class="w-full max-w-full px-3 mx-auto mt-0 md:flex-0 shrink-0">
      <div class="relative z-0 flex flex-col min-w-0 break-words bg-white border-0 shadow-soft-xl rounded-2xl bg-clip-border gradient-div1">
      <br>
          <h1 class="fs-2 text-center" style="font-family: Arial, Helvetica, sans-serif;">
              <img src="static/images/logo.png" alt="" width="30" height="24" class="d-inline-block align-text-top">
              Temple Trustee Signup
              <img src="static/images/logo.png" alt="" width="30" height="24" class="d-inline-block align-text-top">
          </h1>
      <br>
        <div class="flex-auto p-7">
          <form action="#" method="post" role="form text-left">
            <div class="mb-4">
              <input aria-describedby="email-addon" name="temple_name" required aria-label="Name" placeholder="Temple Name" class="text-sm focus:shadow-soft-primary-outline leading-5.6 ease-soft block w-full appearance-none rounded-lg border border-solid border-gray-300 bg-white bg-clip-padding py-2 px-3 font-normal text-gray-700 transition-all focus:border-fuchsia-300 focus:bg-white focus:text-gray-700 focus:outline-none focus:transition-shadow" type="text">
            </div>
            <div class="mb-4">
              <input aria-describedby="email-addon" name="trustee_name" required aria-label="Name" placeholder="Temple Trustee Name" class="text-sm focus:shadow-soft-primary-outline leading-5.6 ease-soft block w-full appearance-none rounded-lg border border-solid border-gray-300 bg-white bg-clip-padding py-2 px-3 font-normal text-gray-700 transition-all focus:border-fuchsia-300 focus:bg-white focus:text-gray-700 focus:outline-none focus:transition-shadow" type="text">
            </div>
            <div class="mb-4">
              <input aria-describedby="email-addon" name="email" required aria-label="Email" placeholder="Email" class="text-sm focus:shadow-soft-primary-outline leading-5.6 ease-soft block w-full appearance-none rounded-lg border border-solid border-gray-300 bg-white bg-clip-padding py-2 px-3 font-normal text-gray-700 transition-all focus:border-fuchsia-300 focus:bg-white focus:text-gray-700 focus:outline-none focus:transition-shadow" type="email">
            </div>
            <div class="mb-3">
              <input aria-describedby="password-addon" name="password" required aria-label="Password" placeholder="Password" class="text-sm focus:shadow-soft-primary-outline leading-5.6 ease-soft block w-full appearance-none rounded-lg border border-solid border-gray-300 bg-white bg-clip-padding py-2 px-3 font-normal text-gray-700 transition-all focus:border-fuchsia-300 focus:bg-white focus:text-gray-700 focus:outline-none focus:transition-shadow" type="password">
            </div>
            <div class="mb-3">
                <div class="form-group">
                    <div class="col">
                        <div class="g-recaptcha" data-sitekey="6LdrDbIkAAAAAA6DdTH9au37p09uEmHr9h1_Xe6L" ></div>
                    </div>
                </div>
            </div>
            <div class="text-center">
              <button id="submit_btn" data-bs-toggle="modal" data-bs-target="#exampleModal" class="btn btn-primary" type="button">
                  Sign up
              </button>
            </div>
            <div class="modal fade modal-dialog modal-dialog-centered" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true" data-bs-target="#staticBackdrop">
              <div class="modal-dialog">
                  <div class="modal-content">
                    <div class="modal-body">
                        <form action="verify.do" class="otp-Form" method="post">
            
                            <span class="mainHeading">Enter OTP</span>
                            <p class="otpSubheading">We have sent a verification code to your Email</p>
                            <div class="inputContainer">
                                <input required="required" name="num1" maxlength="1" type="text" class="otp-input" id="otp-input1" autocomplete="off">
                                <input required="required" name="num2" maxlength="1" type="text" class="otp-input" id="otp-input2" autocomplete="off">
                                <input required="required" name="num3" maxlength="1" type="text" class="otp-input" id="otp-input3" autocomplete="off">
                                <input required="required" name="num4" maxlength="1" type="text" class="otp-input" id="otp-input4" autocomplete="off"> 
                                <input required="required" name="num5" maxlength="1" type="text" class="otp-input" id="otp-input5" autocomplete="off"> 
                                <input required="required" name="num6" maxlength="1" type="text" class="otp-input" id="otp-input6" autocomplete="off"> 
                            </div>
                            <button class="verifyButton" type="submit">Verify</button>
                                <button class="exitBtn" data-bs-dismiss="modal"><i class="fa-solid fa-xmark fa-sm"></i></button>
                                <p class="resendNote">Didn't receive the code? <button class="resendBtn">Resend Code</button></p>
                              
                        </form>
                    </div>
                  </div>
              </div>
              </div>
            <p class="mt-4 mb-0 leading-normal text-sm">Already have an account? <a class="font-bold text-slate-700" href="login.do">Sign in</a></p>
          </form>
        </div>
      </div>
  </div>
</div> -->

<!-- <div class="w-full max-w-full px-3 mx-auto mt-0 md:flex-0 shrink-0">
  <div class="relative z-0 flex flex-col min-w-0 break-words bg-white border-0 shadow-soft-xl rounded-2xl bg-clip-border gradient-div1">
  <br>
      <h1 class="fs-2 text-center" style="font-family: Arial, Helvetica, sans-serif;">
          <img src="static/images/logo.png" alt="" width="30" height="24" class="d-inline-block align-text-top">
          Temple Trustee Signup
          <img src="static/images/logo.png" alt="" width="30" height="24" class="d-inline-block align-text-top">
      </h1>
  <br>
    <div class="flex-auto p-7">
      <form action="#" method="post" role="form text-left">
        <div class="mb-4">
          <input aria-describedby="email-addon" pattern="[a-zA-Z]" oninvalid="setCustomValidity('Please enter on alphabets only. ')" name="temple_name" required aria-label="Name" placeholder="Temple Name" class="text-sm focus:shadow-soft-primary-outline leading-5.6 ease-soft block w-full appearance-none rounded-lg border border-solid border-gray-300 bg-white bg-clip-padding py-2 px-3 font-normal text-gray-700 transition-all focus:border-fuchsia-300 focus:bg-white focus:text-gray-700 focus:outline-none focus:transition-shadow" type="text">
        </div>
        <div class="mb-4">
          <input aria-describedby="email-addon" name="trustee_name" pattern="[a-zA-Z]" required aria-label="Name" placeholder="Temple Trustee Name" class="text-sm focus:shadow-soft-primary-outline leading-5.6 ease-soft block w-full appearance-none rounded-lg border border-solid border-gray-300 bg-white bg-clip-padding py-2 px-3 font-normal text-gray-700 transition-all focus:border-fuchsia-300 focus:bg-white focus:text-gray-700 focus:outline-none focus:transition-shadow" type="text">
        </div>
        <div class="mb-4">
          <input aria-describedby="email-addon" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" oninvalid="setCustomValidity('Enter Valid email..')" name="email" required aria-label="Email" placeholder="Email" class="text-sm focus:shadow-soft-primary-outline leading-5.6 ease-soft block w-full appearance-none rounded-lg border border-solid border-gray-300 bg-white bg-clip-padding py-2 px-3 font-normal text-gray-700 transition-all focus:border-fuchsia-300 focus:bg-white focus:text-gray-700 focus:outline-none focus:transition-shadow" type="email">
        </div>
        <div class="mb-3">
          <input aria-describedby="password-addon" id="psw" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" name="password" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required aria-label="Password" placeholder="Password" class="text-sm focus:shadow-soft-primary-outline leading-5.6 ease-soft block w-full appearance-none rounded-lg border border-solid border-gray-300 bg-white bg-clip-padding py-2 px-3 font-normal text-gray-700 transition-all focus:border-fuchsia-300 focus:bg-white focus:text-gray-700 focus:outline-none focus:transition-shadow" type="password">
        </div>
        <div id="message">
          <h3>Password must contain the following:</h3>
          <p id="letter" class="invalid">A <b>lowercase</b> letter</p>
          <p id="capital" class="invalid">A <b>capital (uppercase)</b> letter</p>
          <p id="number" class="invalid">A <b>number</b></p>
          <p id="length" class="invalid">Minimum <b>8 characters</b></p>
        </div>
        <div class="mb-3 ms-5">
            <div class="form-group">
                <div class="col">
                    <div class="g-recaptcha" data-sitekey="6LdrDbIkAAAAAA6DdTH9au37p09uEmHr9h1_Xe6L" ></div>
                </div>
            </div>
        </div>
        <div class="text-center">
          <-- <button type="button" id="submit_btn" class="btn btn-primary w-100" data-bs-toggle="modal" data-bs-target="#exampleModal">
            Sign up
          </button> -->
          <!-- <button class="custom-btn btn-2 w-100" id="submit_btn" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
            Hello
          </button> -->
          <!-- <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
            Launch static backdrop modal
          </button> -->
        <!-- </div>
        <p class="mt-4 mb-0 leading-normal text-sm">Already have an account? <a class="font-bold text-slate-700" href="login.do">Sign in</a></p>
      </form>
    </div>
  </div>
</div>  -->

<!-- <form id="myForm" class="needs-validation" novalidate>
  <div class="mb-3">
      <label for="name" class="form-label">Name</label>
      <input type="text" class="form-control" id="name" name="name" required>
      <div class="invalid-feedback">
          Please enter your name.
      </div>
  </div>
  <div class="mb-3">
      <label for="email" class="form-label">Email</label>
      <input type="email" class="form-control" id="email" name="email" required>
      <div class="invalid-feedback">
          Please enter a valid email address.
      </div>
  </div>
  <div class="mb-3">
      <label for="password" class="form-label">Password</label>
      <input type="password" class="form-control" id="password" name="password" required>
      <div class="invalid-feedback">
          Please enter a password.
      </div>
  </div>
  <button type="button" id="myInput" class="btn btn-primary" onclick="submitForm()">Submit</button>
</form> -->