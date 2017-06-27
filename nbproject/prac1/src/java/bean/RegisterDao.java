/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;
import java.sql.*;
import javax.servlet.*;
import java.io.*;
/**
 *
 * @author Aparna
 */
public class RegisterDao {
    public void service(ServletRequest req,ServletResponse res)
    {
     //public static boolean validate(user bean){
        //boolean status = false;
        PrintWriter pw=null;
        try{
            String s1=req.getParameter("FirstName");
            String s2=req.getParameter("LastName");
            String s3=req.getParameter("Mobile.no");
            String s4=req.getParameter("Email");
            String s5=req.getParameter("username");
            String s6=req.getParameter("password");
            pw=res.getWriter();
            Connection con = Connectionprovider.getCon();
            PreparedStatement ps= con.prepareStatement(
            "Insert into prac values(?,?,?,?,?,?)");
            ps.setString(1,s1);  
            ps.setString(2,s2);
            ps.setString(3,s3 );
            ps.setString(4,s4 );
            ps.setString(5,s5 );
            ps.setString(6,s6 );
              
           ps.executeUpdate();
           pw.println("<html><body>");
            pw.println("<center><h1>You have Successfully Registered</h1>");
            pw.println("<h3><a href=SignIn.jsp>SignIn</a></h3></center>");
            pw.println("</body></html>");
            
            
              
}catch(Exception e){ 
        pw.println(e);
        }
  
}
        
}
    