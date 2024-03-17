<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="static/css/style.css">
    <title>Temple</title>

    <style>
      .home_card:hover {
        cursor: pointer;
        box-shadow: 5px 5px 25px #c4bebe;
        border: 1px solid rgb(104, 102, 102);
        /* padding: 4px; */
      }
      

    </style>
  </head>
  <body>
    <c:import url="header.jsp" />
    
    <div id="carouselExampleFade" class="carousel slide carousel-fade" data-bs-ride="carousel">
      <div class="carousel-inner">
        <div class="carousel-item active">
          <img src="static/images/home1.jpg" class="d-block w-100" height="480px" alt="...">
        </div>
        <div class="carousel-item">
          <img src="static/images/home2.jpg" class="d-block w-100" height="480px" alt="...">
        </div>
      </div>
      <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
      </button>
      <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
      </button>
    </div>
    
    <p class="text-center gradient-div2 h3 p-3 mt-3 shadow-lg">
      POPULAR TEMPLE'S
    </p>
    <div class="container-fluid p-5">
      <!-- temple cards -->
      <div class="row row-cols-1 row-cols-md-4 g-4 shadow-lg p-3">
        <c:forEach var="td" items="${templeData}" varStatus="x">
          <c:if test="${x.count le 8}">
            <div class="col">
              <a href="temple_details.jsp?tt_Id=${td.key.templeTrusteeId}" class="text-decoration-none text-dark">
                <div class="card h-100 home_card">
                  <img src="fetch_image.do?type=profile_pic&path=${td.value[0].path}" height="200px" width="150px" class="card-img-top" alt="...">
                  <div class="card-body">
                    <h5 class="card-title" >${td.key.templeName}</h5>
                    <p class="card-text" style="height: 95px; overflow: hidden;" >${td.key.description}</p>
                  </div>
                </div>
              </a>
            </div>
          </c:if>
        </c:forEach>          
      </div>
      <!-- Display Banner -->
      <div class="row mb-4 mt-4 ml-4">
        <div class="col-lg-4">
          <img src="static/images/shree ram.jpg" width="350px" height="200px" class="rounded" alt="">
        </div>
        <div class="col-lg-4">
          <img src="static/images/shree ram.jpg" width="350px" height="200px" class="rounded" alt="">
        </div>
        <div class="col-lg-4">
          <img src="static/images/shree ram.jpg" width="350px" height="200px" class="rounded" alt="">
        </div>
      </div>
    </div>

    <script>
      // let home_card = document.querySelector('.home_card');
      // console.log(home_card);

      
      // home_card.addEventListener('click',()=>{
      //   window.location = "template2.jsp";
      // });
    </script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
  </body>
</html>