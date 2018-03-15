/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.myproject;
import java.io.*;
import java.sql.*;
import java.util.*;

/**
 *
 * @author Mangesh
 */
public class DateConverter {
    public static String getCurrentDate()
    {
        Calendar cal=Calendar.getInstance();
        int m=cal.get(Calendar.MONTH)+1;
        int d=cal.get(Calendar.DATE);
        int y=cal.get(Calendar.YEAR);
        String date=y+"-"+m+"-"+d;
        return date;
    }
    public static String getDeliveryDate()
    {
        Calendar cal=Calendar.getInstance();
        int m=cal.get(Calendar.MONTH)+1;
        int d=cal.get(Calendar.DATE);
        if(d>=28)
        {
            d=4;
        }
        else
        {
            d=d+3;
        }
        int y=cal.get(Calendar.YEAR);
        String date=y+"-"+m+"-"+d;
        return date;
    }
    public static String ConvertToSQL(String date)
    {
        String[] date1=date.split("-");
        String str=date1[2]+"-"+date1[1]+"-"+date1[0];
        return date;
    }
    public static String ConvertToStandard(String date)
    {
        String[] date1=date.split("-");
        
        String str=date1[2]+"-"+date1[1]+"-"+date1[0];
        return date;
    }
    
}
