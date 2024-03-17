<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <script src="https://kit.fontawesome.com/fa2f46837d.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <link rel="stylesheet" href="static/css/style.css">
    <title>Admin Console</title>
  </head>
  <body>
    <!-- Header -->
    <nav class="navbar navbar-light gradient-div1">
        <div class="container-fluid">
          <a class="navbar-brand" href="admin_dashboard.do">
            <img src="static/images/logo.png" alt="" width="30" height="24" class="d-inline-block align-text-top">
                TEMPLE 
          </a>
          <button type="button" id="logout_admin" class="btn btn-danger">Logout</button>
        </div>
    </nav>

    <!-- Menu -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light mb-2">
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
          <div class="navbar-nav m-sm-auto">
            <a class="nav-link active" style="font-size: 20px;" href="admin_dashboard.do">
              Inactive<span class="sr-only">(current)</span>
            </a>
            &nbsp;&nbsp;&nbsp; 
            <a class="nav-link" style="font-size: 20px;" href="admin_dashboard.do?status=1">
              Active
            </a>
            &nbsp;&nbsp;&nbsp; 
            <a class="nav-link" style="font-size: 20px;" href="admin_dashboard.do?status=3">
              Blocked
            </a>
          </div>
        </div>
      </nav>

      
      <div class="container">
        <div class="row row-cols-3">
          <c:forEach var="td"  items="${templeData}">

            <!-- Inactive User -->
            <c:if test="${td.statusId.statusId == 2 && parameter eq 'inactive'}">

              <div class="col-4 mx-auto">
                <div class="card text-center">
                  
                  <div class="card-header gradient-div1">
                    ${td.trusteeName}
                  </div>
  
                  <div class="card-body gradient-div2">
                    <h5 class="card-title">${td.templeName}</h5>
                    <span class="card-text">God Name: ${td.deityId.name}</span>
                    <span class="card-text">City: ${td.cityId.city}</span>
                    <p class="card-text">Website: ${td.website}</p>
                    <p class="card-text">Address: ${td.address}</p>
                    <p class="card-text">Description: ${td.description}</p>
                  </div>
                  <!-- Card Buttons For Decision Making -->
                  <div class="card-footer text-muted gradient-div1">
                    <a href="admin_status_control.do?type=reject&tt_id=${td.templeTrusteeId}&t_name=${td.trusteeName}&t_email=${td.email}" class="btn btn-danger">
                      Reject &#10006;
                    </a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="admin_status_control.do?type=accept&tt_id=${td.templeTrusteeId}&t_name=${td.trusteeName}&t_email=${td.email}" class="btn btn-success">
                      Accept &#10004;
                    </a>
                  </div>
  
                </div>
              </div>
            </c:if>

            <!-- Active user -->
            <c:if test="${td.statusId.statusId == 1 && parameter eq 'active'}">

              <div class="col-4 card-group mx-auto">
                <div class="card text-center">
                  
                  <div class="card-header gradient-div1">
                    ${td.trusteeName}
                  </div>
  
                  <div class="card-body gradient-div2">
                    <h5 class="card-title">${td.templeName}</h5>
                    <span class="card-text">God Name: ${td.deityId.name}</span>
                    <span class="card-text">City: ${td.cityId.city}</span>
                    <p class="card-text">Website: ${td.website}</p>
                    <p class="card-text">Address: ${td.address}</p>
                    <p class="card-text">Description: ${td.description}</p>
                  </div>
                  <!-- Card Buttons For Decision Making -->
                  <div class="card-footer text-muted gradient-div1">
                    <a href="admin_status_control.do?type=block_user&tt_id=${td.templeTrusteeId}&t_name=${td.trusteeName}&t_email=${td.email}" class="btn btn-danger">
                      Block User &#10006;
                    </a>
                  </div>
  
                </div>
              </div>
            </c:if>

            <!-- Blocked User -->
            <c:if test="${td.statusId.statusId == 3 && parameter eq 'blocked'}">

              <div class="col-4 mx-auto">
                <div class="card text-center">
                  
                  <div class="card-header gradient-div1">
                    ${td.trusteeName}
                  </div>
  
                  <div class="card-body gradient-div2">
                    <h5 class="card-title">${td.templeName}</h5>
                    <span class="card-text">God Name: ${td.deityId.name}</span>
                    <span class="card-text">City: ${td.cityId.city}</span>
                    <p class="card-text">Website: ${td.website}</p>
                    <p class="card-text">Address: ${td.address}</p>
                    <p class="card-text">Description: ${td.description}</p>
                  </div>
                  <!-- Card Buttons For Decision Making -->
                  <div class="card-footer text-muted gradient-div1">
                    <a href="admin_status_control.do?type=accept&tt_id=${td.templeTrusteeId}&t_name=${td.trusteeName}&t_email=${td.email}" class="btn btn-success">
                      Accept &#10004;
                    </a>
                  </div>
  
                </div>
              </div>
            </c:if>
          </c:forEach>
        </div>
      </div>

    <script>
      let logout_admin = document.querySelector('#logout_admin');

      logout_admin.addEventListener('click',()=>{
        window.location = "logout.do";
      });
    </script>
      
    
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>    
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
   
  </body>
</html>
    