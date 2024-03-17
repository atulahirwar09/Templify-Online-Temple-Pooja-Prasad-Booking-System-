<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="static/css/style.css">
    <title>TEMPLE</title>
  </head>
  <body>
    <c:import url="header.jsp" />

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-6 gradient-div1 p-3">
                <div class="w-100 m-auto mt-5 mb-5 p-5 bg-gradient  shadow shadow-lg">
                    <p class="text-center gradient-heading">For Temple Trustee</p>
                    <p class="text-center fw-light fs-3"> 
                        We are here to join more temple Trustee <br>
                        because the can make the devotee life easy 
                    </p>
                    <p class="text-center ">
                        <a href="trustee_signup.do" class="text-decoration-none btn btn-success w-25" style="color: azure;">
                            Get Started <i class="fa-solid fa-arrow-right"></i>
                        </a>
                    </p>
                    <p class="text-center fs-5">
                        Already Have an account ?<br>
                        <a href="login.do" class="text-decoration-none">Login</a>
                    </p>
                </div>
            </div>
            <div class="col-md-6 gradient-div2 p-3">
                <div class="w-100 m-auto mt-5 mb-5 p-5 shadow shadow-lg">
                    <p class="text-center gradient-heading">For Devotee's</p>
                    <p class="text-center fw-light fs-3"> 
                        Join here to book your  <br>
                        Temple appointment in Convenient & fastly
                    </p>
                    <p class="text-center">
                        <a href="devotee_signup.do" class="btn btn btn-outline-dark w-25">
                            Get Started <i class="fa-solid fa-arrow-right"></i>
                        </a>
                    </p>
                    <p class="text-center fs-5">
                        Already Have an account ?<br>
                        <a href="login.do" class="text-decoration-none">Login</a>
                    </p>
                </div>
            </div>
        </div>
    </div>
    
      
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
  </body>
</html>