

<!DOCTYPE html>
<html>
<head>
	<title>Form validation in Javascript</title>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body background="img_nature.jpg">
<div ID="wrapper">
    <h1>Registration Form</h1>
	<form method="POST" action="RegisterDao.java" onsubmit="return Validate()" name="vForm">
		
		<div>
			<input type="text" name="Firstname" class="textInput" placeholder="Firstname">
			<div id="Firstname_error" class="val_error"></div>
		</div>
		<div>
			<input type="text" name="Lastname" class="textInput" placeholder="Lastname">
			<div id="Lastname_error" class="val_error"></div>
		</div>
		<div>
			<input type="text" name="UserID" class="textInput" placeholder="UserID">
			<div id="name_error" class="val_error"></div>
		</div>
		<div>
			<input type="text" name="Mobileno" class="textInput" placeholder="Mobileno">
			<div id="number_error" class="val_error"></div>
		</div>
		<div>
			<input type="email" name="email" class="textInput" placeholder="Email">
			<div id="email_error" class="val_error"></div>
		</div>
		<div>
			<input type="password" name="password" class="textInput" placeholder="Password">
		</div>
		<div>
			<input type="password" name="password_confirmation" class="textInput" placeholder="password confirmation">
			<div id="password_error" class="val_error"></div>
		</div>
		<div>
			<input type="submit" class="btn" name="register" value="Register">
		</div>
	</form>
</div>
</body>
</html>
<!-- add javascript here -->
<script type="text/javascript">

	// GETTING ALL INPUT TEXT FIELDS
	var Firstname = document.forms["vForm"]["Firstname"];
	var Lastname = document.forms["vForm"]["Lastname"]
	var UserID = document.forms["vForm"]["UserID"];
	var Mobileno = document.forms["vForm"]["Mobileno"];
	var email = document.forms["vForm"]["email"];
	var password = document.forms["vForm"]["password"];
	var password_confirmation = document.forms["vForm"]["password_confirmation"];
	
	// GETTING ALL ERROR OBJECTS
	var Firstname_error = document.getElementById("Firstname_error");
	var Lastname_error = document.getElementById("Lastname_error");
	var name_error = document.getElementById("name_error");
	var number_error= document.getElementById("number_error");
	var email_error = document.getElementById("email_error");
	var password_error = document.getElementById("password_error");
	
	// SETTING ALL EVENT LISTENERS
	
	UserID.addEventListener("blur", nameVerify, true);
	email.addEventListener("blur", emailVerify, true);
	
	function Validate(){
		// VALIDATE FIRSTNAME
		if(Firstname.value == ""){
			Firstname_error.textContent = "Firstname is required";
			Firstname.style.border = "1px solid red";
			Firstname.focus();
			return false;
		}
		// VALIDATE LASTNAME
		if(Lastname.value == ""){
			Lastname_error.textContent = "Lastname is required";
			Lastname.style.border = "1px solid red";
			Lastname.focus();
			return false;
		}
		// VALIDATE USERNAME
		if(UserID.value == ""){
			name_error.textContent = "Username is required";
			UserID.style.border = "1px solid red";
			UserID.focus();
			return false;
		}
		//VALIDATE Mobile.no
		var Mobile = /^\+?([0-9]{2})\)?[-. ]?([0-9]{4})[-. ]?([0-9]{4})$/;
		if((Mobileno.value.match(Mobile)) 
			number_error.textContent = "Invalid Mobileno";
			Mobileno.style.border = "1px solid red";
			Mobileno.focus();
			return false;
		}
		
		// VALIDATE EMAIL
		if(email.value == ""){
		email_error.textContent = "Email is required";
		email.style.border = "1px solid red";
		email.focus();
		return false;
		
 
        
		// VALIDATE PASSWORD
		if (password.value != password_confirmation.value) {
			password_error.textContent = "The two passwords do not match";
			password.style.border = "1px solid red";
			password_confirmation.style.border = "1px solid red";
			password.focus();
			return false;
		}
		// PASSWORD REQUIRED
		if (password.value == "" || password_confirmation.value == "") {
			password_error.textContent = "Password required";
			password.style.border = "1px solid red";
			password_confirmation.style.border = "1px solid red";
			password.focus();
			return false;
		}
	}
	// ADD EVENT LISTENERS
	function nameVerify(){
		if (UserID.value != "") {
			name_error.innerHTML = "";
			UserID.style.border = "1px solid #110E0F";
			return true;
		}
	}
	function emailVerify(){
		if (email.value != "") {
		var at="@"
        var dot="."
        var lat=str.indexOf(at)
        var lstr=str.length
        var ldot=str.indexOf(dot)
        if (str.indexOf(at)==-1){
        email_error.textContent ="Invalid E-mail ID";
		email.style.border = "1px solid red";
			email.focus();
		return false
        }else
        return true
        }
		
		/*email_error.innerHTML = "";
		email.style.border = "1px solid #110E0F";
		return true;
		}*/
	}
</script>




<%--<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Registration Form</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style type=text/css>
		.container{
					width: 500px;
					clear: bottom;
                                        height: 500px;
				}
                .container input {
                                        width: 30%;
                                        clear: both;
                                }
		
				
			p.big{
					line-height:200%;
				}
      </style>
      <script>
            function Mobileno(inputtxt)  
        {  
            var Mobileno = /^\+?([0-9]{2})\)?[-. ]?([0-9]{4})[-. ]?([0-9]{4})$/;  
            if((inputtxt.value.match(Mobileno))  
        {  
            return true;  
        }  
        else  
        {  
        alert("please enter valid mobile number");  
        return false;  
        }  
        }  
        function emailcheck(str) {
 
        var at="@"
        var dot="."
        var lat=str.indexOf(at)
        var lstr=str.length
        var ldot=str.indexOf(dot)
        if (str.indexOf(at)==-1){
        alert("Invalid E-mail ID")
 
        return false
        }else
        return true
        }
      </script>
                
    </head>
     <body background="img_nature.jpg">
         
	 <center>
         <h1>Thank u for choosing us please enter your details</h1>
        <form action="RegisterDao.java">
            <div class="container">
            <p align="left" class= "big">
            First Name:<input type="text" name="FirstName" value=""/></br>
            Last Name:<input type="text" name="LastName" value=""/></br>
            
            Mobile NO:<input type="number" onclick="Mobileno()"name="Mobile.no" value=""/></br>
            Email:<input type="text" onclick="emailcheck()" name="Email" value=""/></br>
            UserName:<input type="text" name="username" value=""/></br>
            Password:<input type="password" name="password" value=""/></br>
            </p>

            <p align="center"><input type="submit"  value="Register"/></p>
            </div>
        </form>
    </center> 
    </body>
</html>
--%>
