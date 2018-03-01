/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.java.DataBase;

import com.mysql.jdbc.exceptions.MySQLIntegrityConstraintViolationException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.SQLIntegrityConstraintViolationException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author nikhil
 */
public class DataBaseHandler {
    
    private static  Connection con;
    
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
    
    public static boolean doLogin(String sql){
        
        try{
            
            Statement s = getConnection().createStatement(); 
            ResultSet rs = s.executeQuery(sql);
            if(rs.next()){
                return true;
            }
            
            
        }catch(Exception e){
            e.printStackTrace();
        }
        
        return false;
    }
    
    
    public static boolean doInsert(PreparedStatement ps){
        try{
                
            ps.executeUpdate();
            
            return true;
        }catch(Exception e){
            e.printStackTrace();
        }
        return false;
    }
    
    
    public  static boolean viewAllDoctors(String sql){
         try{
             
             ResultSet rs = getConnection().createStatement().executeQuery(sql);
             while (rs.next()) {                 
                 System.out.println(rs.getString(2));
                 return true;
             }
             
         }catch(Exception e){
             e.printStackTrace();
         }
        
        return false;
    }
    
    public  static  boolean deleteDoctor(String sql){
        
        try{
            
            getConnection().createStatement().executeUpdate(sql);
            return true;
            
        }catch(Exception e){
            e.printStackTrace();
        }
        
        return false;
    }
    
    
}
