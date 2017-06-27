<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
  
<hr/>  
  

<%  
String profile_msg=(String)request.getAttribute("profile_msg");  
if(profile_msg!=null){  
out.print(profile_msg);  
}  
String login_msg=(String)request.getAttribute("login_msg");  
if(login_msg!=null){  
out.print(login_msg);  
}  
 %>  
 <br/>  
 <head>
     <link rel="stylesheet" type="text/css" href="styles.css">
     <style>
        
     </style>
 </head>
    
    <body background="img_nature.jpg">
    <center>
        
        
	<div ID="wrapper">
            <h1> SignIn Form</h1>
	<form method="POST" action="process.jsp" onsubmit="return Validate()" name="vForm">
		
	<div>
	<input type="text" name="UserID" class="textInput" placeholder="UserID">
	<%--<div id="Firstname_error" class="val_error"></div>--%>
	</div>
        <%--<p align="center" class="big">--%>
            
        <div>
            <input type="password" name="password" class="textInput" placeholder="password" value=""/><br>
	</div>
		
	<div>
            <input type="submit" value="SignIn" name="SignIn"/>
        </div>    
	</div>	
    </form>
    </center>
    </body>
