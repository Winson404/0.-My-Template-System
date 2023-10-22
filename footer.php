  
  <?php include 'sweetalert_messages.php'; ?>

 <!--  <footer class="main-footer">
    <div class="row p-3">
      <div class="col-lg-4 col-md-6 col-sm-6 col-12 bg-white">
        <label>Mission</label>
        <p class="text-sm text-justify text-muted">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Rem ipsam saepe culpa, quia dolor recusandae obcaecati eligendi assumenda pariatur sapiente tempora iusto excepturi quasi minima voluptates ipsum reiciendis corrupti. Laudantium.</p>
      </div>
      <div class="col-lg-4 col-md-6 col-sm-6 col-12 bg-white">
        <label>Vision</label>
        <p class="text-sm text-justify text-muted">Lorem ipsum dolor sit amet consectetur adipisicing elit. Cumque vel deleniti in adipisci, facere quisquam amet aliquid qui, repudiandae, asperiores illum cupiditate voluptatibus? Natus optio minima veniam perspiciatis, deserunt. Eveniet.</p>
      </div>
      <div class="col-lg-4 col-md-6 col-sm-6 col-12 bg-white">
        <label>Contact Us</label>
        <p class="text-sm text-justify text-muted"><i class="fa-solid fa-phone"></i> +63 9123456789</p>
        <p class="text-sm text-justify text-muted"><i class="fa-solid fa-envelope"></i> admin@gmail.com</p>
      </div>
    </div>
    <div class="dropdown-divider"></div>
    <strong>Copyright &copy; 2023 <a href="#">TEMPLATE SYSTEM</a>.</strong>
    All rights reserved.
    <div class="float-right d-none d-sm-inline-block">
      <b>Version</b> 3.2.0
    </div>
  </footer> -->
  
  <!-- jQuery -->
  <script src="plugins/jquery/jquery.min.js"></script>
  <!-- Bootstrap 4 -->
  <script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
  <!-- AdminLTE App -->
  <script src="dist/js/adminlte.min.js"></script>


  <script>
  	 // HIDE/SHOW PASSWORD
    function myFunction() {
      var x = document.getElementById("password");
      if (x.type === "password") {
        x.type = "text";
      } else {
        x.type = "password";
      }
    }


    // SHOW/HIDE PASSWORDS
    function showPassword() {
      var x = document.getElementById("mynewpassword");
      var y = document.getElementById("cpassword");
      if (x.type === "password" || y.type === "password") {
        x.type = "text";
        y.type = "text";
      } else {
        x.type = "password";
        y.type = "password";
      }
   }


    // IMAGE PREVIEW
    function getImagePreview(event) {
      var image=URL.createObjectURL(event.target.files[0]);
      var imagediv= document.getElementById('preview');
      var newimg=document.createElement('img');
      imagediv.innerHTML='';
      newimg.src=image;
      newimg.width="90";
      newimg.height="90";
      newimg.style['border-radius']="50%";
      newimg.style['display']="block";
      newimg.style['margin-left']="auto";
      newimg.style['margin-right']="auto";
      newimg.style['box-shadow']="rgba(100, 100, 111, 0.2) 0px 7px 29px 0px";
      imagediv.appendChild(newimg);
    }


    // LETTER ONLY
    function lettersOnly(input) {
      var regex = /[^a-z ]/gi;
      input.value = input.value.replace(regex, "");
    }



    // EMAIL VALIDATION
    function validation() {
      var email = document.getElementById("email").value;
      var pattern =/.+@(gmail)\.com$/;
      // var pattern =/.+@(gmail|yahoo)\.com$/;
      var form = document.getElementById("form");

      if(email.match(pattern)) {
          document.getElementById('text').style.color = 'green';
          document.getElementById('text').innerHTML = '';
          document.getElementById('submit_button').disabled = false;
          document.getElementById('submit_button').style.opacity = (1);
      } 
      else {
          document.getElementById('text').style.color = 'red';
          document.getElementById('text').innerHTML = 'Domain must be @gmail.com';
          document.getElementById('submit_button').disabled = true;
          document.getElementById('submit_button').style.opacity = (0.4);
          
      }
    }



    // AUTO CALCULATE AGE
    function calculateAge() {
      var birthdate = new Date(document.getElementById("birthdate").value);
      var now = new Date();

      var ageInMilliseconds = now.getTime() - birthdate.getTime();
      var ageInSeconds = ageInMilliseconds / 1000;
      var ageInMinutes = ageInSeconds / 60;
      var ageInHours = ageInMinutes / 60;
      var ageInDays = ageInHours / 24;
      var ageInWeeks = ageInDays / 7;
      var ageInMonths = ageInDays / 30.44;
      var ageInYears = ageInDays / 365;

      var age = Math.floor(ageInYears);

      if (ageInDays >= 365) {
        var ageDescription = age + " year" + (age > 1 ? "s" : "") + " old";
      } else if (ageInDays >= 30) {
        var ageDescription = Math.floor(ageInMonths) + " month" + (Math.floor(ageInMonths) > 1 ? "s" : "") + " old";
      } else if (ageInDays >= 7) {
        var ageDescription = Math.floor(ageInWeeks) + " week" + (Math.floor(ageInWeeks) > 1 ? "s" : "") + " old";
      } else {
        var ageDescription = Math.floor(ageInDays) + " day" + (Math.floor(ageInDays) > 1 ? "s" : "") + " old";
      }

      document.getElementById("txtage").value = ageDescription;
    }




    /*MAKE PASSWORD MORE SECURED / VALIDATE PASSWORD*/
    const passwordField = document.getElementById('password');
    const passwordMessage = document.getElementById('password-message');
    passwordField.addEventListener('input', () => {
      const password = passwordField.value;
      let errors = [];

      // Check password length
      if (password.length < 8) {
        errors.push('Password must be at least 8 characters long.');
      }

      // Check if password contains a special character
      if (!/[ `!@#$%^&*()_+\-=\[\]{};':"\\|,.<>\/?~]/.test(password)) {
        errors.push('Password must contain at least one special character.');
      }

      // Display error messages if any
      if (errors.length > 0) {
        passwordMessage.innerText = errors.join(' ');
        passwordMessage.classList.add('error');
      } else {
        passwordMessage.innerText = '';
        passwordMessage.classList.remove('error');
      }
    });



    // PASSWORD MATCHING
    function validate_password() {
      var pass = document.getElementById('password').value;
      var confirm_pass = document.getElementById('cpassword').value;
      if (pass != confirm_pass) {
        document.getElementById('wrong_pass_alert').style.color = '#e60000';
        document.getElementById('wrong_pass_alert').innerHTML = 'X Password did not matched!';
        document.getElementById('submit_button').disabled = true;
        document.getElementById('submit_button').style.opacity = (0.4);
      } else {
        document.getElementById('wrong_pass_alert').style.color = 'green';
        document.getElementById('wrong_pass_alert').innerHTML = '✓ Password matched!';
        document.getElementById('submit_button').disabled = false;
        document.getElementById('submit_button').style.opacity = (1);
      }
    }

  </script>


  </div>
</body>
</html>