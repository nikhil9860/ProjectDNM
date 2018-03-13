/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.java.DAO;

import com.java.DataBase.DoctorDataBaseHandler;
import com.java.POJO.ReceptionistPojo;
import com.java.doctor.classfiles.LoginDoctorProcess;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author nikhil
 */
public class ReceptionRegisterDAO {
    
//    for reception register
    
    public static boolean Register(ReceptionistPojo rcp)
    {
         try {
            int Doctorid=1;
            String id;
            id = LoginDoctorProcess.session.get("uname").toString();
            
            Connection con=DoctorDataBaseHandler.getConnection();
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery("select Doctor_id from Doctors where Doctor_uname='"+id+"';");
            if(rs.next())
            {
                Doctorid=rs.getInt(1);
            }
       
        String q="insert into Receptioninst(rname,rphoto,emailid,contact_no,gender,dateOfBirth,uname,password,doctor_id) values('"+rcp.getName()+"','"+rcp.getPhoto()+"','"+rcp.getEmailid()+"','"+rcp.getContactno()+"','"+rcp.getGender()+"','"+rcp.getDOB()+"','"+rcp.getUname()+"','"+rcp.getPassword()+"',"+Doctorid+")";
        if(DoctorDataBaseHandler.doInsert(q))
        return true; 
           
    } catch (SQLException ex) {
          Logger.getLogger(ReceptionRegisterDAO.class.getName()).log(Level.SEVERE, null, ex);
      }
    return false;
}
    
}
