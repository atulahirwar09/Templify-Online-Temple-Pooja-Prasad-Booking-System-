<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <script src="https://kit.fontawesome.com/fa2f46837d.js" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">    <link rel="stylesheet" href="static/css/style.css">
    <link rel="stylesheet" href="static/css/style.css">
    <title>Temple</title>
    <style>
      .custum-file-upload {
        height: 200px;
        width: 300px;
        display: flex;
        flex-direction: column;
        align-items: space-between;
        gap: 20px;
        cursor: pointer;
        align-items: center;
        justify-content: center;
        border: 2px dashed #cacaca;
        background-color: rgba(255, 255, 255, 1);
        padding: 1.5rem;
        border-radius: 10px;
        box-shadow: 0px 48px 35px -48px rgba(0,0,0,0.1);
      }

      .custum-file-upload .icon {
        display: flex;
        align-items: center;
        justify-content: center;
      }

      .custum-file-upload .icon svg {
        height: 80px;
        fill: rgba(75, 85, 99, 1);
      }

      .custum-file-upload .text {
        display: flex;
        align-items: center;
        justify-content: center;
      }

      .custum-file-upload .text span {
        font-weight: 400;
        color: rgba(75, 85, 99, 1);
      }

      .custum-file-upload input {
        display: none;
      }
    </style>
</head>
  <body>
    <!-- Header -->
    <%@ include file="trustee_header.jsp"%>
    
    <c:if test="${templePic.path eq null}">
    <div class="alert alert-warning d-flex justify-content-center mt-2" role="alert">
      <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-exclamation-triangle-fill flex-shrink-0 me-2" viewBox="0 0 16 16" role="img" aria-label="Warning:">
        <path d="M8.982 1.566a1.13 1.13 0 0 0-1.96 0L.165 13.233c-.457.778.091 1.767.98 1.767h13.713c.889 0 1.438-.99.98-1.767L8.982 1.566zM8 5c.535 0 .954.462.9.995l-.35 3.507a.552.552 0 0 1-1.1 0L7.1 5.995A.905.905 0 0 1 8 5zm.002 6a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
      </svg>
      <div>
        Please Complete the Profile Section First
      </div>
    </div>
  </c:if>
    <div class="container rounded ">
      <div class="row p-3 mt-lg-3 rounded-3">
            <div class="col-lg-4 border border-dark p-lg-3 gradient-div1 rounded-start border-end-0">
              <c:if test="${templePic.path eq null}">
                <form action="profile_temple.do" method="post" enctype="multipart/form-data">
                  <div class="text-center">
                    <img src="static/images/upload.png" id="profile_image" height="200px" class="border border-secondary rounded-circle" alt="">
                    <input type="file" class="d-none" name="profilepic" id="upload_profile_pic">
                    <p class="h6 mt-md-2">Click Here to upload profile pic</p>
                  </div>
                  <div class="text-center mt-md-3">
                    <span id="name_msg" class=""></span>
                    <input type="button" id="upload_btn" class="btn btn-outline-success w-50 mt-3 ms-3" style="cursor: not-allowed;" value="Upload">
                  </div> 
                  <hr>
                </form>
              </c:if>
              
              <c:if test="${templePic.path ne null}">
                <div class="ps-3">
                  <img src="fetch_image.do?type=profile_pic&path=${templePic.path}" alt="" class="rounded-circle border bg-success" height="250" width="250">
                </div>
                <div class="">
                  <a href="#" class="btn btn-dark mt-4 disabled">Change Photo</a>
                  <a href="edit_profile.do?pic_id=${templePic.templePicId}&path=${templePic.path}" class="btn btn-danger mt-4 ms-1">Remove Photo</a>
                </div>
              </c:if>

              <div>
                
              </div>
            </div>
            <div class="col-lg-8 p-5 border border-primary gradient-div2 rounded-end ">
              <h2 class="text-center" style="font-family: Verdana, Geneva, Tahoma, sans-serif;">Profile</h2>
              <hr>
              <form class="row g-3">

                <div class="col-12">
                  <label for="input_temple_name" class="form-label">Temple Name <span class="text-danger">*</span></label>
                  <input type="text" class="form-control" value="${templeTrustee.templeName}" id="input_temple_name" placeholder="Enter Temple Name">
                </div>
                <div class="col-12">
                  <label for="input_trustee_name" class="form-label">Trustee Name <span class="text-danger">*</span></label>
                  <input type="text" class="form-control" value="${templeTrustee.trusteeName}" id="input_trustee_name" placeholder="Enter Trustee Name">
                </div>
                <div class="col-md-12">
                  <label for="website" class="form-label">Website <span class="text-danger">*</span></label>
                  <input type="text" class="form-control" value="${templeTrustee.website}" id="website" placeholder="Enter Website Name">
                </div>
                <div class="col-md-12">
                  <label for="address" class="form-label">Address <span class="text-danger">*</span></label>
                  <input type="text" class="form-control" value="${templeTrustee.address}" id="address" placeholder="Enter Address Name">
                </div>
                <div class="col-md-12">
                  <label for="description" class="form-label">Description <span class="text-danger">*</span></label>
                  <input type="text" class="form-control" value="${templeTrustee.description}" id="description" placeholder="Enter Description Name">
                </div>
                
                <div class="col-12 text-center mt-3">
                  <button type="button" style="cursor: not-allowed;" class="btn btn-outline-success w-50">Update Details</button>
                </div>
              </form>
            </div>
        </div>
        <div class="row border border-danger">
          
        </div>
    </div>
    
    <script>
       let profile_image = document.querySelector('#profile_image');
       let upload_profile_pic = document.querySelector('#upload_profile_pic');
       let name_msg = document.querySelector('#name_msg');
       let upload_btn = document.querySelector('#upload_btn');

       
       profile_image.addEventListener('click' , ()=> {
         upload_profile_pic.click();
         
        });
        
        
        const getFileName = (event) => {
          const files = event.target.files;
          const fileName = files[0].name;
          name_msg.innerHTML = fileName;
          upload_btn.type="submit";
          upload_btn.style.removeProperty("cursor");
        }
        upload_profile_pic.addEventListener('change', getFileName);
    </script>    
      
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
      
  </body>
</html>