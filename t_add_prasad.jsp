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
          <li class="breadcrumb-item">Add Pooja</li>
          <li class="breadcrumb-item" aria-current="page">Add Prasad</li>
        </ol>
    </nav>

    <div class="container-fluid">
        <div class="row mt-2 justify-content-center">
            <div class="col-sm-5 border border-dark rounded p-5">
                <form action="t_add_prasad.do" method="post" enctype="multipart/form-data" class="row g-3">
                  <h3 class="text-center">ADD PRASAD</h3>
                  <hr>
                    <div class="col-md-12">
                      <label for="name" class="form-label">Name</label> <span class="text-danger">*</span>
                      <input type="text" name="prasad_name" class="form-control" required id="name">
                    </div>
                    
                    <div class="col-12">
                      <label for="Quantity" class="form-label">Quantity</label> <span class="text-danger">*</span>
                      <input type="number" name="quantity" class="form-control" required id="Quantity" placeholder="like 1,2">
                    </div>

                    <div class="col-12">
                      <label for="p_pic" class="form-label">Prasad Picture</label> <span class="text-danger">*</span>
                      <input type="file" multiple name="p_pic" class="form-control" required id="p_pic" placeholder="like 1,2">
                    </div>
                    
                    <div class="col-md-12">
                      <label for="amount" class="form-label">Amount</label> <span class="text-danger">*</span>  
                      <input type="text" pattern="[0-9]{2,}" placeholder="10 or more rs" name="p_amount" required class="form-control" id="amount">
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
    