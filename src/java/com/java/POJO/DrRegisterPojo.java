/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.java.POJO;

import com.java.password.PasswordAutoGenerate;

/**
 *
 * @author nikhil
 */
public class DrRegisterPojo {

   
    
    private String fullname;
    private String picture;
    private String doctor_email;
    private String doctor_contact_number;
    private String qualification;
    private String gender;
    private String category;
    private String clinicname;
    private String clinicaddress;
    private String cordinate;
    private String clinic_contact;
    private String clinic_landline;
    private String username;
    private String password;
    private String category_name;

    public DrRegisterPojo(String fullname, String username, String doctor_contact_number, String qualification, String gender, String category, String clinicname, String clinicaddress, String clinic_contact, String clinic_landline) {
        this.fullname = fullname;
        this.username = username;
        this.doctor_contact_number = doctor_contact_number;
        this.qualification = qualification;
        this.gender = gender;
        this.category = category;
        this.clinicname = clinicname;
        this.clinicaddress = clinicaddress;
        this.clinic_contact = clinic_contact;
        this.clinic_landline = clinic_landline;
    }

    public DrRegisterPojo() {
    }

    public DrRegisterPojo(String fullname, String username, String doctor_contact_number, String qualification, String clinicname, String clinicaddress, String clinic_contact, String clinic_landline) {
        this.fullname = fullname;
        this.username=username;
        this.doctor_contact_number = doctor_contact_number;
        this.qualification = qualification;
        this.clinicname = clinicname;
        this.clinicaddress = clinicaddress;
        this.clinic_contact = clinic_contact;
        this.clinic_landline = clinic_landline;
    }

    

    
    
    
    /**
     * @return the fullname
     */
    public String getFullname() {
        return fullname;
    }

    /**
     * @param fullname the fullname to set
     */
    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    /**
     * @return the picture
     */
    public String getPicture() {
        return picture;
    }

    /**
     * @param picture the picture to set
     */
    public void setPicture(String picture) {
        this.picture = picture;
    }

    /**
     * @return the doctor_email
     */
    public String getDoctor_email() {
        return doctor_email;
    }

    /**
     * @param doctor_email the doctor_email to set
     */
    public void setDoctor_email(String doctor_email) {
        this.doctor_email = doctor_email;
    }

    /**
     * @return the doctor_contact_number
     */
    public String getDoctor_contact_number() {
        return doctor_contact_number;
    }

    /**
     * @param doctor_contact_number the doctor_contact_number to set
     */
    public void setDoctor_contact_number(String doctor_contact_number) {
        this.doctor_contact_number = doctor_contact_number;
    }

    /**
     * @return the qualification
     */
    public String getQualification() {
        return qualification;
    }

    /**
     * @param qualification the qualification to set
     */
    public void setQualification(String qualification) {
        this.qualification = qualification;
    }

    /**
     * @return the gender
     */
    public String getGender() {
        return gender;
    }

    /**
     * @param gender the gender to set
     */
    public void setGender(String gender) {
        this.gender = gender;
    }

    /**
     * @return the category
     */
    public String getCategory() {
        return category;
    }

    /**
     * @param category the category to set
     */
    public void setCategory(String category) {
        this.category = category;
    }

    /**
     * @return the clinicname
     */
    public String getClinicname() {
        return clinicname;
    }

    /**
     * @param clinicname the clinicname to set
     */
    public void setClinicname(String clinicname) {
        this.clinicname = clinicname;
    }

    /**
     * @return the clinicaddress
     */
    public String getClinicaddress() {
        return clinicaddress;
    }

    /**
     * @param clinicaddress the clinicaddress to set
     */
    public void setClinicaddress(String clinicaddress) {
        this.clinicaddress = clinicaddress;
    }

    /**
     * @return the cordinate
     */
    public String getCordinate() {
        return cordinate;
    }

    /**
     * @param cordinate the cordinate to set
     */
    public void setCordinate(String cordinate) {
        this.cordinate = cordinate;
    }

    /**
     * @return the clinic_contact
     */
    public String getClinic_contact() {
        return clinic_contact;
    }

    /**
     * @param clinic_contact the clinic_contact to set
     */
    public void setClinic_contact(String clinic_contact) {
        this.clinic_contact = clinic_contact;
    }

    /**
     * @return the clinic_landline
     */
    public String getClinic_landline() {
        return clinic_landline;
    }

    /**
     * @param clinic_landline the clinic_landline to set
     */
    public void setClinic_landline(String clinic_landline) {
        this.clinic_landline = clinic_landline;
    }

    /**
     * @return the username
     */
    public String getUsername() {
        return username;
    }

    /**
     * @param username the username to set
     */
    public void setUsername(String username) {
        this.username = username;
    }

    /**
     * @return the password
     */
    public String getPassword() {
        return password;
    }

    /**
     * @param password the password to set
     */
    public void setPassword(String password) {
        this.password = PasswordAutoGenerate.getPass();
    }
    
     /**
     * @return the category_name
     */
    public String getCategory_name() {
        return category_name;
    }

    /**
     * @param category_name the category_name to set
     */
    public void setCategory_name(String category_name) {
        this.category_name = category_name;
    }
    
}
