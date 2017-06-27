<%-- 
    Document   : Homepage
    Created on : Jun 21, 2017, 4:25:28 PM
    Author     : Aparna
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 <!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->

    <title>HOME PAGE</title>
    <!--<style>
        body{
            background-image:"C:\Users\Aparna\Documents\NetBeansProjects\prac1\web\img.jpg";
        }
        </style>-->
   </head>
   <body background="img_nature.jpg">
        <center> 
        <h1>Welcome To Home page Of NY State</h1>
       <a href ="SignIn.jsp"><input type="submit" value="SignIn" /></a>
       <a href ="Register.jsp"><input type="submit" value="Register"/></a>
        </center>  
        
    </body>
</html>

<!--<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body bg color="red" text="white">
    <center>
        <%="welcome to our site"+request.getParameter("Username")%>
          <%="Firstname"+request.getParameter("Firstname")%>
          <%="Lastname"+request.getParameter("Lastname")%>
          <%="Mobile.no"+request.getParameter("Mobile.no")%>
          <%="Email"+request.getParameter("Email")%>
    </center>
    </body>
</html>-->