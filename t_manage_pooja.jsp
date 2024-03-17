<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <script src="https://kit.fontawesome.com/fa2f46837d.js" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">    <link rel="stylesheet" href="static/css/style.css">
    <title>Temple</title>
  </head>
  <body>
    <!-- Header -->
    <%@ include file="trustee_header.jsp"%>
    <%@ include file="trustee_menu.jsp"%>

    <div class="container">
        <div>
          <div class="row mt-4">
            <div class="col-4">
              <h3 class="text-decoration-underline text-success">Pooja Details</h3>
            </div>
            <div class="col-8">
              <form class="d-flex">
                <input class="form-control me-2 w-75 ms-5" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success" type="submit">Search</button>
              </form>
            </div>
          </div>
        </div>
        <p class="text-muted mt-3">
          Following Pooja's are performed under the explicit instructions and directions of competent priests only.
        </p>

        <c:if test="${!poojaData.isEmpty()}">
            <div class="accordion" id="parent_accordion">
            <c:forEach var="pd" items="${poojaData}" varStatus="x">
                <c:if test="${x.count le 10}">

                <div class="accordion-item">
                    <h2 class="accordion-header" id="heading_${x.count}">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#btn_${x.count}" aria-expanded="false" aria-controls="flush-collapseOne">
                        <c:out value="${x.count}. ${pd.name}" />
                    </button>
                    </h2>
                    <div id="btn_${x.count}" class="accordion-collapse collapse" aria-labelledby="heading_${x.count}" data-bs-parent="#parent_accordion">
                    <div class="accordion-body ">

                        <div class="p-3 bg-light">
                        <p class="text-center h3 bg-light p-1">Pooja Detail's</p>
                        <div class="row">
                            <p class="border border-secondary p-2 rounded">
                            <b>Description : </b>
                            <c:out value="${pd.description}" />
                            </p>
                            <div class="col-6 border border-secondary p-2 rounded-start">
                            <div>
                                <b class="ms-2">Pooja Time : </b> <c:out value="${pd.poojaTime}" />
                            </div>
                            <hr>
                            <div >
                                <b class="ms-2">Frequency : </b> <c:out value="${pd.frequency}" />
                            </div>
                            </div>
                            <div class="col-6 border border-secondary p-2 rounded-end">
                            <div>
                                <b class="ms-2">Persons : </b> <c:out value="${pd.persons}" />
                            </div>
                            <hr>
                            <div>
                                <b class="ms-2">Duration : </b> <c:out value="${pd.duration}" />
                            </div>
                            </div>
                            <p class="mt-2 border border-secondary rounded p-2">
                            <b>Amount : </b>
                            <c:out value="${pd.amount}" />
                            </p>  
                        </div>
                        </div>
                        <!-- Prasad Details -->
                        <div class="p-3 bg-light">
                        <p class="text-center h3 bg-light">Prasad Detail's</p>
                        <div class="row">
                            <p class="border border-dark p-2 rounded">
                            <b>Prasad Name : </b>
                            <c:out value="${pd.prasadId.name}" />
                            </p>
                        
                            <p class="mt-2 border border-dark p-2 rounded">
                            <b>Quantity : </b>
                            <c:out value="${pd.prasadId.quantity}" />
                            </p>  

                            <p class="mt-2 border border-dark p-2 rounded">
                            <b>Amount : </b>
                            <c:out value="${pd.prasadId.price}" />
                            </p>  
                        </div>
                        <div class="text-center mt-2">
                            <a href="#" class="btn btn-success w-25 p-2">Edit</a>
                            <a href="t_edit_pooja.do?type=delete&pooja_id=${pd.poojaId}&prasad_id=${pd.prasadId.prasadId}&pooja_name=${pd.name}" class="btn btn-danger w-25 p-2">Delete</a>
                        </div>
                        </div>
                    </div>
                    </div>
                </div>
                </c:if>
                </c:forEach>
            </div>
        </c:if>
    </div>

    <c:if test="${poojaData.isEmpty()}">
        <div class="alert alert-warning d-flex justify-content-center" role="alert">
            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-exclamation-triangle-fill flex-shrink-0 me-2" viewBox="0 0 16 16" role="img" aria-label="Warning:">
              <path d="M8.982 1.566a1.13 1.13 0 0 0-1.96 0L.165 13.233c-.457.778.091 1.767.98 1.767h13.713c.889 0 1.438-.99.98-1.767L8.982 1.566zM8 5c.535 0 .954.462.9.995l-.35 3.507a.552.552 0 0 1-1.1 0L7.1 5.995A.905.905 0 0 1 8 5zm.002 6a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
            </svg>
            <div>
              No Record Found 
            </div>
          </div>
    </c:if>



    <script>
     
    </script>    
      
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
      
  </body>
</html>
    