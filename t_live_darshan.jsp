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
        <div class="row">
           
            
            <div class="col-6 mx-auto mt-5 border border-dark p-5 shadow-lg rounded">
                <c:if test="${!liveData.equals('NULL')}">
                    <svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
                        <symbol id="check-circle-fill" fill="currentColor" viewBox="0 0 16 16">
                        <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zm-3.97-3.03a.75.75 0 0 0-1.08.022L7.477 9.417 5.384 7.323a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 0 0-.01-1.05z"/>
                        </symbol>
                    </svg>
                    <div class="alert alert-success d-flex align-items-center" role="alert">
                        <svg class="bi flex-shrink-0 me-2" width="24" height="24" role="img" aria-label="Success:"><use xlink:href="#check-circle-fill"/></svg>
                        <div>
                        Your Link is already submitted 
                        </div>
                    </div>
                </c:if>
                        <form action="t_live_darshan.do" method="post">
                            <label for="live_darshan" class="form-label h4 ps-5 mb-3">Enter the Youtube Live Video Link</label>
                            <input type="text" class="form-control" name="live_darshan" id="live_darshan">
                            <c:if test="${!liveData.equals('NULL')}">
                                <p class="text-center mt-3">
                                    <input type="submit" class="btn btn-success mt-3 me-5 w-25 disabled" id="change_btn" value="Change">
                                    <a href="t_live_darshan.do?type=delete" class="btn btn-danger mt-3 ms-5 w-25">Delete</a>    
                                </p>
                            </c:if>
                            <c:if test="${liveData.equals('NULL')}">
                                <p class="text-center">
                                    <input type="submit" class="btn btn-success mt-3 w-50" value="Submit">
                                </p>
                            </c:if>
                        </form>
                    </div>
            
        </div>
    </div>
    
    <script>
        let change_btn = document.querySelector('#change_btn');
        let live_darshan_input = document.querySelector('#live_darshan');
       
        live_darshan_input.addEventListener('keyup', (e)=>{
            
            var inp = e.target.value;
            
            if(inp.length > 1) {
                change_btn.classList.remove('disabled');
            } else {
                change_btn.classList.add('disabled');                
            }
        });
    </script>    
      
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
      
  </body>
</html>
    