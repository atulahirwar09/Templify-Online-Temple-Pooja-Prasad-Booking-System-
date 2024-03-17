<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="static/css/style.css">
    <title>TEMPLE</title>
    <style>
        * {
          margin: 0;
          padding: 0;
          box-sizing: border-box;
        }
        /* body{
          background-color: rgb(241, 234, 234);
        } */
        .row {
          border-radius: 10px;
          box-shadow: 12px 12px 22px rgb(195, 195, 195);
        }
        
    </style>
  </head>
  <body>
    <c:import url="header.jsp" />
    <div class="container-fluid">
      <section class="form my-4 mx-5">
          <div class="container rounded-right  bg-white rounded" style="width: 62.5rem;">
            <div class="row bg-white no-gutters g-0 gradient-div1">
              <div class="col-md-4">
                <img src="static/images/shree ram.jpg" class="img-fluid rounded-left rounded-start" alt="" style="width: 19.375rem;">
              </div>
              <div class="col-md-7 px-5  pt-5 m-auto gradient-div1 shadow-lg">
                <h4 style="font-family: Arial, Helvetica, sans-serif;">Sign to your account</h4>
                <form action="login.do" method="post" name="myForm">
                  <div class="form-row">
                    <div class="col-md-7">
                      <input type="email" autofocus name="demail" required class="form-control my-3 p-2" placeholder="Email-Address" id="d_email" onblur="validate('email_feild')">
                      <small class="text-danger" id="email-validation"></small>
                    </div>
                  </div>
                  <div class="form-row">
                    <div class="col-md-7">
                      <input type="password" name="dpassword" required class="form-control my-3 p-2" placeholder="******" id="d_password" onblur="validate('password_feild')">
                      <small class="text-danger" id="password-validation"></small>
                    </div>
                  </div>
                  <div class="form-row">
                    <div class="col-md-7">
                      <button type="submit" class="btn btn-info w-100 mt-3 mb-3">Login</button>
                    </div>
                  </div>
                  <p><a href="#">Forgot password</a></p>
                  <hr width="50%">
                  <p>Are you a <b>Temple Trustee</b>? <a href="trustee_signup.do">Register here</a> </p>
                  <p>Are you a <b>Devotee</b>? <a href="devotee_signup.do">Register here</a> </p>
                </form>
              </div>
            </div>
          </div>
      </section>
    </div>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
  </body>
</html>
    <!-- <div class="container-fluid">
        <div class="row border border-primary">
            <div class="d-md-inline-flex">
                <div class="col-md-1"></div>
                <div class="col-md-5 border border-dark">
                    <img src="static/images/shree ram.jpg" class="h-50 g-0" alt="">
                </div>
                <div class="col-md-5 border border-danger">
                    B
                </div>
                <div class="col-md-1"></div>
            </div>
        </div>
    </div> -->