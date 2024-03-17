<script src="https://kit.fontawesome.com/fa2f46837d.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="static/css/style.css">
<nav class="navbar navbar-expand-lg navbar-light gradient-div1">
    <div class="container-fluid">
      <a class="navbar-brand link-dark" href="dashboard.do">
        <img src="static/images/logo.png" alt="" width="30" height="24" class="d-inline-block align-text-top">
        TEMPLE
      </a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <div class="m-auto">
          <a href="dashboard.do" class="text-decoration-none h3 text-dark text-capitalize me-auto ms-5">${templeTrustee.templeName}</a>
        </div>
        <div class="dropdown">
            <button class="btn btn-outline-dark dropdown-toggle px-5" type="button" id="dropdownMenu" data-bs-toggle="dropdown" aria-expanded="false">
                <i class="fa-regular fa-user"></i>&nbsp;&nbsp; ${templeTrustee.trusteeName}
            </button>
            <ul class="dropdown-menu" aria-labelledby="dropdownMenu">
              <li><a class="dropdown-item" href="dashboard.do"><i class="fa-solid fa-house me-2"></i> Home</a></li>
              <li><a class="dropdown-item" href="profile_temple.do"><i class="fa-solid fa-gopuram me-2"></i> Profile</a></li>
              <li><a class="dropdown-item" href="logout.do?type=trustee"><i class="fa-solid fa-right-from-bracket me-2"></i> Logout</a></li>
            </ul>
          </div>

      </div>
    </div>
</nav>