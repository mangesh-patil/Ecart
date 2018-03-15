/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.myproject;

/**
 *
 * @author Mangesh
 */
public class Products {
    int pid;
    String name,description,category,availability,price,deliverycharges;

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getAvailability() {
        return availability;
    }

    public void setAvailability(String availability) {
        this.availability = availability;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getDeliverycharges() {
        return deliverycharges;
    }

    public void setDeliverycharges(String deliverycharges) {
        this.deliverycharges = deliverycharges;
    }
    
}
