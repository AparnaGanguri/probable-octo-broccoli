<%-- 
    Document   : welcome
    Created on : Jun 20, 2017, 1:58:10 PM
    Author     : Aparna
--%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            p.big {
                line-height:200%;
            }
        </style>
    </head>
    <body background="img_forest.jpg">
    <center>
        <p class="big">
 <font size="5" color="white"> <%="welcome to our site "+request.getParameter("username")+" here is your Info"%></font></br>
 <font size="3" color="yellow"><%="Firstname: "+request.getParameter("FirstName")%></font></br>
 <font size="3" color="yellow"><%="Lastname: "+request.getParameter("LastName")%></font></br>
 <font size="3" color="yellow"><%="Mobile.no: "+request.getParameter("Mobile.no")%></font></br>
 <font size="3" color="yellow"><%="Email: "+request.getParameter("Email")%></font></br>
        </p>
    </center>
    </body>
</html>
