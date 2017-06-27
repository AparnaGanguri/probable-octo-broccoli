<%-- 
    Document   : process.jsp
    Created on : Jun 21, 2017, 2:11:38 PM
    Author     : Aparna
--%>

<%@page import="bean.SigninDao" contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="obj" class="bean.user"/>  
  
<jsp:setProperty property="*" name="obj"/>  
  
<%  
boolean status=SigninDao.validate(obj);  
if(status){  
out.println("You are successfully registered");
session.setAttribute("session","TRUE");
}
  else
{
    out.print("Usename or password error");
%>

<%  
}  
%>