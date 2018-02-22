/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.java.DAO;

import com.java.DataBase.DataBaseHandler;
import java.sql.DatabaseMetaData;
import com.java.POJO.DrRegisterPojo;

/**
 *
 * @author nikhil
 */
public class DrRegisterDAO {
    
    
    public static void register(DrRegisterPojo pojo){
        
//        if(DataBaseHandler.doInsert()){
//            return true;
//        }
//        return false;
        
            System.out.println(pojo.getDoctor_email());

    }
    
}
