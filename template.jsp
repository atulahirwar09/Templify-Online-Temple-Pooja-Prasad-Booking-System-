<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>4-Digit OTP Form</title>
  <script src="https://kit.fontawesome.com/fa2f46837d.js" crossorigin="anonymous"></script>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">    <link rel="stylesheet" href="static/css/style.css">
  <style>
  .form {
    display: flex;
    align-items: center;
    flex-direction: column;
    justify-content: space-around;
    width: 400px;
    background-color: white;
    border-radius: 12px;
    padding: 20px;
    border: 1px solid black;
  }

.title {
  font-size: 20px;
  font-weight: bold;
  color: black
}

.message {
  color: #a3a3a3;
  font-size: 14px;
  margin-top: 4px;
  text-align: center
}

.inputs {
  margin-top: 10px
}

.inputs input {
  width: 32px;
  height: 32px;
  text-align: center;
  border: none;
  border-bottom: 1.5px solid #d2d2d2;
  margin: 0 10px;
}

.inputs input:focus {
  border-bottom: 1.5px solid royalblue;
  outline: none;
}

.action {
  margin-top: 24px;
  padding: 12px 16px;
  border-radius: 8px;
  border: none;
  background-color: royalblue;
  color: white;
  cursor: pointer;
  align-self: end;
  width: 200px;
}
  </style>
</head>
<body>
  <div class="container">
    <div class="row">
      <div class="col-6">
        <form action="#" class="form" id="otpForm" method="post">
          <div class="title">OTP</div>
          <div class="title">Verification Code</div>
          <p class="message">We have sent a verification code to your mobile number</p> 
          <div class="inputs"> 
            <input required maxlength="1" type="text" name="num3" class="otp-input" id="otp3" autocomplete="off" oninput="handleInput(event, document.getElementById('otp4'))">
            <input required maxlength="1" type="text" name="num4" class="otp-input" id="otp4" autocomplete="off" oninput="handleInput(event, document.getElementById('otp5'))"> 
            <input required maxlength="1" type="text" name="num5" class="otp-input" id="otp5" autocomplete="off" oninput="handleInput(event, document.getElementById('otp6'))"> 
            <input required maxlength="1" type="text" name="num6" class="otp-input" id="otp6" autocomplete="off" oninput="handleInput(event, null)" onpaste="handlePaste(event)"> 
          </div> 
          <p class="mt-4 w-100 text-center">
            <input type="submit" class="btn btn-outline-success w-50" value="Verify"> 
          </p>
        </form>
      </div>
    </div>
  </div>
  <!-- <div class="container mt-5">
    <div class="row justify-content-center">
      <div class="col-md-6">
        <h2 class="text-center mb-4">Enter 4-Digit OTP</h2>
        <form id="otpForm" method="POST">
          <div class="mb-3">
            <input type="text" class="form-control otp-input" id="otp1" name="otp1" maxlength="1" required>
          </div>
          <div class="mb-3">
            <input type="text" class="form-control otp-input" id="otp2" name="otp2" maxlength="1" required>
          </div>
          <div class="mb-3">
            <input type="text" class="form-control otp-input" id="otp3" name="otp3" maxlength="1" required>
          </div>
          <div class="mb-3">
            <input type="text" class="form-control otp-input" id="otp4" name="otp4" maxlength="1" required>
          </div>
          <div id="error-message" class="error-message text-center" style="display:none;">Please enter a valid 4-digit OTP.</div>
          <button type="submit" class="btn btn-primary btn-block">Submit</button>
        </form>
      </div>
    </div>
  </div> -->

  <script>
    const form = document.getElementById('otpForm');
    const otpFields = document.querySelectorAll('.otp-input');

    form.addEventListener('submit', function(event) {
      event.preventDefault();

      let otp = '';
      otpFields.forEach(function(field) {
        otp += field.value;
      });

      if (/^\d{4}$/.test(otp)) {
        // Here, you can submit the form or perform further actions.
        console.log("Form submitted successfully!");
      } else {
        document.getElementById('error-message').style.display = 'block';
      }
    });

    // Remove error class on input focus
    otpFields.forEach(function(field) {
      field.addEventListener('input', function() {
        if (/^\d{1}$/.test(field.value)) {
          field.classList.remove('error');
        }
      });
    });

    function handleInput(e, nextInput) {
      const maxLength = 1;
      const inputValue = e.target.value;

      if (inputValue.length > maxLength) {
        e.target.value = inputValue.slice(0, maxLength);
      }

      if (inputValue && nextInput) {
        nextInput.focus();
      }
    }

    function handlePaste(e) {
      e.preventDefault();
      const pasteData = e.clipboardData.getData('text/plain');
      const otpInputs = document.querySelectorAll('.otp-input');

      for (let i = 0; i < otpInputs.length; i++) {
        otpInputs[i].value = pasteData[i] || '';
      }
    }

    function clearOTPInputs() {
      const otpInputs = document.querySelectorAll('.otp-input');
      for (let i = 0; i < otpInputs.length; i++) {
        otpInputs[i].value = '';
      }
      document.getElementById('otp1').focus();
    }

  </script>
</body>
</html>
