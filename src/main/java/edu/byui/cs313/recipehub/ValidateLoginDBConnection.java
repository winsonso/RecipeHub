/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.byui.cs313.recipehub;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author zaccianflone
 */
public class ValidateLoginDBConnection {
    
    private String username;
    private String password;
    private String rsPassword;
    //change this to change location of Database
    //private String dbUrl = "jdbc:postgresql://ec2-174-129-41-23.compute-1.amazonaws.com:5432/d7dgs18pf75krp?user=kxnmiindzdmaod&password=40fa571cf0785bbc25b56ae0f82b39676ee66e2fcb97ddadf070d56b833b6ed4&sslmode=disable";
    private String dbUrl = "jdbc:postgresql://ec2-23-21-224-106.compute-1.amazonaws.com:5432/dddmjubbtu6r84?user=gktfmzbqqxantd&password=04cd22340bf076d8466ea3fa5e71ea7666e367212c1120c1571cf6bf13d050c1&sslmode=disable";

    ValidateLoginDBConnection (String username, String password){
        this.username = username;
        this.password = password;
    }
    
    String executeValidateLogin(){
        
        try {
               // String dbUrl = "jdbc:postgresql://ec2-174-129-41-23.compute-1.amazonaws.com:5432/d7dgs18pf75krp?user=kxnmiindzdmaod&password=40fa571cf0785bbc25b56ae0f82b39676ee66e2fcb97ddadf070d56b833b6ed4&sslmode=disable";
                
          
                Connection connection = DriverManager.getConnection(dbUrl);
                String sql = "SELECT password FROM person WHERE username = ?";
                
                PreparedStatement stmt = connection.prepareStatement(sql);
                
                stmt.setString(1, username);
           
                
                ResultSet rs = stmt.executeQuery();
                
                 while (rs.next()){
                //there should always be only one result returned since username is unique    
                    rsPassword = rs.getString("password");
                }
                
                
                if (password.equals(rsPassword)){
                    
                    return "main.jsp"; //arbitrarily chosen 
                }
                else{
                    return "Incorrect Username or Password!";
                }
              
                }catch (SQLException ex) {
                
               System.out.println(ex);
               return "SQL issue";
            }
    }
    
        Integer getUserID(){
            try {
                Connection connection = DriverManager.getConnection(dbUrl);
                String sql = "SELECT id FROM person WHERE username = ?";
                Integer user_id = 0;
                PreparedStatement stmt = connection.prepareStatement(sql);
                
                stmt.setString(1, username);
           
                ResultSet rs = stmt.executeQuery();
                while (rs.next()){ 
                    user_id = rs.getInt("id");
                }
                return user_id;
                
            }catch (SQLException ex) {
                System.out.println(ex);
                return 0;
            }
        }
        
               String getFirstName(){
            try {
                Connection connection = DriverManager.getConnection(dbUrl);
                String sql = "SELECT first_name FROM person WHERE username = ?";
                String first_name = "";
                PreparedStatement stmt = connection.prepareStatement(sql);
                
                stmt.setString(1, username);
           
                ResultSet rs = stmt.executeQuery();
                while (rs.next()){ 
                    first_name = rs.getString("first_name");
                }
                return first_name;
                
            }catch (SQLException ex) {
                System.out.println(ex);
                return "";
            }
        }
    }
    
    
    

