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
        body{
            background: linear-gradient(-225deg, #E3FDF5 0%, #FFE6FA 100%);
        }

    </style>

  </head>
  <body>
    <c:import url="header.jsp" />
    
   <div class="container p-4">
    <c:forEach var="td" items="${templeData}" varStatus="x">
        <c:if test="${td.key.templeTrusteeId eq param.tt_Id}">
            <div class="row bg-light bg-gradient rounded p-2" style="height: 390px;">
                <div class="col-md-4 mt-2">
                    <img src="fetch_image.do?type=profile_pic&path=${td.value[0].path}" class="w-100 img-fluid border border-dark rounded" style="max-height: 350px; height: 350px;" alt="">
                </div>
                <div class="col-md-8 ps-5">
                    <h1 class="mt-3">${td.key.templeName}</h1>
                    <p class="fs-4">
                        ${td.key.address}
                    </p>
                    <p class="" style="height: 158px; overflow: hidden;">
                        ${td.key.description}
                    </p>
                    <div class="mt-3 p-3">
                        <a href="#" class="btn btn-outline-info w-50">Live Darshan</a>
                        <a href="#" class="btn btn-outline-success w-25">Donation</a>
                    </div>
                </div>
            </div>
            <div class="row mt-2 bg-light bg-gradient rounded">
                <div class="col">
                    <table class="table table-hover">
                        <thead class="">
                          <tr>
                            <th scope="col">Sr No.</th>
                            <th scope="col">Pooja Name</th>
                            <th scope="col">Timing</th>
                            <th scope="col">Frequency</th>
                            <th scope="col">Duration</th>
                            <th scope="col">Amount</th>
                            <th scope="col">Booking</th>
                          </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="pd" items="${td.value[1]}" varStatus="y">
                                <tr>
                                    <th scope="row">${y.count}</th>
                                    <td>${pd.name}</td>
                                    <td>${pd.poojaTime}</td>
                                    <td>${pd.frequency}</td>
                                    <td>${pd.duration}</td>
                                    <td>${pd.amount}</td>
                                    <td><a href="#" class="btn btn-success rounded-pill w-75">Book</a></td>
                                </tr>
                            </c:forEach>
        
                        </tbody>
                      </table>
                </div>
            </div>
        </c:if>
    </c:forEach>
   </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
  </body>
</html>