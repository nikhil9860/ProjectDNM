/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.java.doctor.classfiles;

import com.java.DataBase.DoctorDataBaseHandler;
import com.java.POJO.AddHolidaysPojo;
import com.java.doctor.classfiles.LoginDoctorProcess;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author DELL
 */
public class Addholidays 
{
    public static boolean addholidays(AddHolidaysPojo ahp)
    {
        try {
            int Doctorid=1;
            String id;
            id = LoginDoctorProcess.session.get("uname").toString();
            System.out.println(id);
            Connection con=DoctorDataBaseHandler.getConnection();
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery("select Doctor_id from doctors where Doctor_uname='"+id+"';");
            if(rs.next())
            {
                Doctorid=rs.getInt(1);
            }
            String q="insert into holidays(doctor_id,date_from,date_to) values("+Doctorid+",'"+ahp.getFromdate()+"','"+ahp.getTodate()+"');";
            
            if(DoctorDataBaseHandler.doInsert(q))
                return true;
           
        } catch (SQLException ex) {
            Logger.getLogger(Addholidays.class.getName()).log(Level.SEVERE, null, ex);
        }
         return false;
    }
            
    
}
