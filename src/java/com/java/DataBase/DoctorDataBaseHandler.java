/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.java.DataBase;

import static com.java.DataBase.DataBaseHandler.getConnection;
import com.mysql.jdbc.exceptions.MySQLIntegrityConstraintViolationException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author nikhil
 */
public class DoctorDataBaseHandler {
    
     private static  Connection con;


//to get a static database connecton    
    public static Connection  getConnection(){
        
        try {
                
            Class.forName("com.mysql.jdbc.Driver");
            
            con = DriverManager.getConnection("jdbc:mysql://localhost/DNM","root","");
            
            return con ;
            
        } catch (SQLException ex) {
            if(ex instanceof MySQLIntegrityConstraintViolationException){
                
            }
            Logger.getLogger(DataBaseHandler.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DataBaseHandler.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return null;
        
    }
   
//    for doctor login
    public static boolean login(String q){
        try{
                
            con=getConnection();
            Statement s=con.createStatement();
            
            ResultSet rs=s.executeQuery(q);
            if(rs.next())
                        return true;
            else 
                return false; 
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return false;
    }
    
   
    
    public static boolean doInsert(String q){
        try{
                
            con=getConnection();
            Statement s=con.createStatement();
            
            if(s.executeUpdate(q)>0)
                        return true;
            else 
                return false; 
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return false;
    }
    
    
    
    
}
