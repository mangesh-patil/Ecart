/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.myproject;

/**
 *
 * @author Mangesh
 */
public class Users {
    int uid;
    double contact;

    public double getContact() {
        return contact;
    }

    public void setContact(double contact) {
        this.contact = contact;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

   

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    String name,address,email,password;

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
}
