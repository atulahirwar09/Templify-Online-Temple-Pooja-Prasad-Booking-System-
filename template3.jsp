<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>OTP Input Form</title>
    <!-- Add Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <!-- Add custom styles for OTP input -->
    <style>
        .otp-input {
            width: 2em;
            text-align: center;
            margin: 0 5px;
            padding: 5px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 1.2em;
        }

        .error-message {
            color: red;
            margin-top: 5px;
        }
    </style>
</head>

<body>

    <div class="container mt-5">
        <h2 class="text-center mb-2">Enter OTP</h2>
        <p class="text-center mb-4">We have sent a verification otp in your email</p>
        <form id="otpForm" class="text-center">
            <div class="form-group">
                <input type="text" class="otp-input" id="digit1" maxlength="1" required>
                <input type="text" class="otp-input" id="digit2" maxlength="1" required>
                <input type="text" class="otp-input" id="digit3" maxlength="1" required>
                <input type="text" class="otp-input" id="digit4" maxlength="1" required>
                <input type="text" class="otp-input" id="digit5" maxlength="1" required>
                <input type="text" class="otp-input" id="digit6" maxlength="1" required>
            </div>

            <div class="error-message mb-4" id="error-message"></div>

            <button type="button" class="btn btn-primary" onclick="validateOTP()">Submit</button>
        </form>
    </div>

    <!-- Add Bootstrap JS and Popper.js -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>

    <script>
        function validateOTP() {
            var digit1 = document.getElementById('digit1').value;
            var digit2 = document.getElementById('digit2').value;
            var digit3 = document.getElementById('digit3').value;
            var digit4 = document.getElementById('digit4').value;
            var digit5 = document.getElementById('digit5').value;
            var digit6 = document.getElementById('digit6').value;

            var otp = digit1 + digit2 + digit3 + digit4 + digit5 + digit6;

            var errorMessage = document.getElementById('error-message');

            // Check if OTP is exactly 6 digits
            if (/^\d{6}$/.test(otp)) {
                errorMessage.innerHTML = ''; // Clear error message
                alert('OTP is valid!'); // You can replace this with your own validation logic
            } else {
                errorMessage.innerHTML = 'Please enter a valid 6-digit OTP.';
            }
        }
    </script>

</body>

</html>
