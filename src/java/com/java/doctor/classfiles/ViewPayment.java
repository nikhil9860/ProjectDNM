/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.java.doctor.classfiles;


import com.java.DataBase.DoctorDataBaseHandler;
import com.java.POJO.PaymentPojo;
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
public class ViewPayment implements ServletRequestAware,SessionAware
{
     Map<String, Object> session;
           HttpServletRequest req;
    ArrayList<PaymentPojo> allPayment=new ArrayList<PaymentPojo>();
   
    
    public String viewPayment()
    {
        try {
            Connection con=DoctorDataBaseHandler.getConnection();
            
            String q="select * from Payment where appointment_id in (select appointment_id from appointments where doctor_id="+session.get("doctor_id")+");";
           System.out.println(q);
           Statement st1=con.createStatement(); 
           ResultSet rs;
            rs = st1.executeQuery(q);
           String name="";
           String date="";
            while(rs.next())
            {
                String q2="select patient_name from patient where patient_id in(select patient_id from appointments where appointment_id="+rs.getInt("appointment_id")+");";
                
                System.out.println(q2);
                
                 Statement st2=con.createStatement(); 
                    ResultSet rs2;
                     rs2 = st2.executeQuery(q2);
                     while(rs2.next())
                     {
                         name=rs2.getString("patient_name");
                     }
                     System.out.println(name);
                String q3="select appointment_date from appointments where appointment_id="+rs.getInt("appointment_id")+";";
                System.out.println(q3);     
                Statement st3=con.createStatement(); 
                    ResultSet rs3;
                     rs3 = st3.executeQuery(q3);
                     while(rs3.next())
                     {
                         date=rs3.getDate("appointment_date").toString();
                     }
                     System.out.println(date);
                
                     
                 PaymentPojo p=new PaymentPojo(rs.getInt("appointment_id"), rs.getInt("fees"), rs.getString("payment_status"),name,date);
                        allPayment.add(p);
                        System.out.println("added...");
            
            }
            System.out.println("out while in if...");
           req.setAttribute("allPayment", allPayment);
            return "success";
           }
            catch (SQLException ex) 
            {
                System.out.println(ex);
            }
        return "fail";
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
        
   


