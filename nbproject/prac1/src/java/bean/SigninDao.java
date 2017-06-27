/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;
import java.sql.*; 
/**
 *
 * @author Aparna
 */
public class SigninDao {
    
    public static boolean validate(user bean){
        boolean status = false;
        try{
            Connection con = Connectionprovider.getCon();
            PreparedStatement ps= con.prepareStatement(
            "select * from prac where username=? and password=?");
            ps.setString(1,bean.getusername());  
            ps.setString(2, bean.getpassword());  
              
            ResultSet rs=ps.executeQuery();  
            status=rs.next();  
              
}catch(Exception e){} 
        return status;
  
        }
        
    }
    
