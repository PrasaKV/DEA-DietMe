/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


// Registration and Login form Validation 
function validate() {
        var password = document.getElementById("password").value;
        var confirmPassword = document.getElementById("confirmpassword").value;
        var email = document.getElementById("email").value;
        var fullname = document.getElementById('fullname').value;
        
        if (fullname.trim() === '') {
          alert('Please enter your full name');
          return false;
        }
        
        if (email.trim() === '') {
           alert('Please enter your email address');
           return false;
        }
        
        if (password.trim() === '') {
           alert('Please enter your password');
           return false;
        }
        
        if (confirmPassword.trim() === '') {
           alert('Please enter your confirm password');
           return false;
        }

        
        // Check if email and password are not empty
        if (email.trim() === "" || password.trim() === "") {
            alert("Please enter both email and password.");
            return false;
        }
        
        var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        if (!emailRegex.test(email)) {
            alert("Please enter a valid email address");
            return false;
        }
        
        // Check if password contains at least one uppercase letter
        var uppercaseRegex = /[A-Z]/;
        if (!uppercaseRegex.test(password)) {
            alert("Password must contain at least one uppercase letter");
            return false;
        }
        
        // Check if password contains at least one lowercase letter
        var lowercaseRegex = /[a-z]/;
        if (!lowercaseRegex.test(password)) {
            alert("Password must contain at least one lowercase letter");
            return false;
        }
        
        // Check if password contains at least one symbol
        var symbolRegex = /[$&+,:;=?@#|'<>.^*()%!-]/;
        if (!symbolRegex.test(password)) {
            alert("Password must contain at least one symbol");
            return false;
        }
        
        // Check if password is at least 8 characters long
        if (password.length < 8) {
            alert("Password must be at least 8 characters long");
            return false;
        }
        
        // Check if passwords match
        if (password !== confirmPassword) {
            alert("Passwords do not match");
            return false;
        }
        
        return true;
    }