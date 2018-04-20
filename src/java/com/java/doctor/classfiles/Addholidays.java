/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.java.doctor.classfiles;


import com.java.DataBase.DoctorDataBaseHandler;
import com.java.POJO.AddHolidaysPojo;
import com.java.POJO.ReceptionistPojo;
import com.java.doctor.classfiles.LoginDoctorProcess;
import com.opensymphony.xwork2.ModelDriven;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.SessionAware;
/**
 *
 * @author DELL
 */
public class Addholidays implements ModelDriven<AddHolidaysPojo>, ServletRequestAware,SessionAware
{
    AddHolidaysPojo ahp = new AddHolidaysPojo();
    Map<String, Object> session;
    ArrayList<AddHolidaysPojo> allHolidays=new ArrayList<AddHolidaysPojo>();
    HttpServletRequest req;
            public String execute()
            {
                    try {
                          
                           
             int Doctorid=1;
            String id;
            id = session.get("uname").toString();
            
            Connection con=DoctorDataBaseHandler.getConnection();
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery("select doctor_id from Doctors where doctor_uname='"+id+"';");
            if(rs.next())
            {
                Doctorid=rs.getInt(1);
            }
                           
                           
                           
                              
                        ResultSet rs1=con.createStatement().executeQuery("select * from Holidays where doctor_id ="+Doctorid+"");
           
                       while(rs1.next())
                        {
                            AddHolidaysPojo u=new AddHolidaysPojo(rs1.getInt("holiday_id"),rs1.getString("date_from"), rs1.getString("date_to"));
                            allHolidays.add(u);
                        
           
                        }
                        req.setAttribute("allHolidays", allHolidays);
        
                        return "success";
                  
               } 
                        catch(Exception e)
                        {
                            
                            System.out.println(e);
                            
                        }
            
            
                    return "fail";
            }
            public String AddHolidays()
            {
                try {
            int Doctorid=1;
            String id;
            id = session.get("uname").toString();
            
            Connection con=DoctorDataBaseHandler.getConnection();
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery("select doctor_id from Doctors where doctor_uname='"+id+"';");
            if(rs.next())
            {
                Doctorid=rs.getInt(1);
            }
            
            String q="insert into Holidays(doctor_id,date_from,date_to) values("+Doctorid+",'"+ahp.getFrom_date()+"','"+ahp.getTo_date()+"');";
            
            if(DoctorDataBaseHandler.doInsert(q))
                
                return "success";
            
          
        } catch (SQLException ex) 
        {
            System.out.println(ex);
            
        }
 
                 return "fail";
             }
     public  String deleteHolidays()
    {
        
        try{
            
           Connection con = DoctorDataBaseHandler.getConnection();
                    Statement st=con.createStatement();
                    String q="delete from  Holidays where holiday_id="+req.getParameter("holiday_id")+"";
                   if((st.executeUpdate(q)>0))
                                return "success";
              }catch(Exception e)
        {
            System.out.println(e);
        }
        
        return "fail";
        }
    
    @Override
    public AddHolidaysPojo getModel() 
    {
      return ahp;  
    }

    @Override
    public void setServletRequest(HttpServletRequest hsr) 
    {
        req=hsr;
    }

    @Override
    public void setSession(Map<String, Object> map)
    {
            session=map;
    }
    
}