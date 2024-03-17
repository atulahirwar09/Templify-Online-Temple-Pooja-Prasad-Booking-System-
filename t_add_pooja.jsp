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

    <nav class="ms-5 py-1" style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb">
        <ol class="breadcrumb">
          <li class="breadcrumb-item active">Pooja's</li>
          <li class="breadcrumb-item" aria-current="page">Add Pooja</li>
        </ol>
    </nav>

    <div class="container-fluid">
        <div class="row mt-2 justify-content-center">
            <div class="col-sm-5 border border-dark rounded p-5">
                <form action="t_add_pooja.do" method="post" class="row g-3">
                  <h3 class="text-center">ADD POOJA</h3>
                  <hr>
                    <div class="col-md-12">
                      <label for="name" class="form-label">Name</label> <span class="text-danger">*</span>
                      <input type="text" name="pooja_name" class="form-control" required id="name">
                    </div>
                    <div class="row mt-2">
                      <label for="pt1" class="form-label">Reporting Time<span class="text-danger">*</span></label> 
                      <div class="col-md-5">
                        <input type="time" name="pooja_time1" class="form-control" required id="pt1" placeholder="like 11:00, 07:30">
                      </div>
                      to
                      <div class="col-md-5">
                        <input type="time" name="pooja_time2" class="form-control" required id="pt2" placeholder="like 11:00, 07:30">
                      </div>
                    </div>
                    <div class="col-12">
                      <label for="frequency" class="form-label">Frequency</label> <span class="text-danger">*</span>
                      <input type="text" name="frequency" class="form-control" required id="frequency" placeholder="like Daily, As Per Mahurat, Only Friday">
                    </div>
                    <div class="col-12">
                      <label for="persons" class="form-label">Persons</label> <span class="text-danger">*</span>
                      <input type="number" name="persons" class="form-control" required id="persons" placeholder="like 1,2">
                    </div>
                    <div class="col-12">
                      <label for="duration" class="form-label">Duration</label> <span class="text-danger">*</span>
                      <input type="text" name="duration" class="form-control" required id="duration" placeholder="like 20, 40 (Mins)">
                    </div>
                      <div class="col-md-6">
                        <label for="desc" class="col-md-4 col-form-label">Description<span class="text-danger">*</span></label>
                        <div class="col-md-8">
                            <textarea name="description" required id="desc" cols="55" rows="2"></textarea>
                        </div>
                    </div>
                    
                    <div class="col-md-12">
                      <label for="amount" class="form-label">Amount</label> <span class="text-danger">*</span>  
                      <input type="text" name="amount" required class="form-control" id="amount">
                    </div>
                    <div class="col-12">
                      <button type="submit" class="btn btn-primary w-100">Next</button>
                    </div>
                  </form>
            </div>
        </div>
    </div>

    <script>
     
    </script>    
      
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
      
  </body>
</html>
    