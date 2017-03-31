/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.byui.cs313.recipehub;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author zaccianflone
 */
public class SignupDBConnection {
    
      private String firstName;
      private String lastName;
      private String username;
      private String email;
      private String password;
      
      //change this to change location of Database
      private String dbUrl = "jdbc:postgresql://ec2-174-129-41-23.compute-1.amazonaws.com:5432/d7dgs18pf75krp?user=kxnmiindzdmaod&password=40fa571cf0785bbc25b56ae0f82b39676ee66e2fcb97ddadf070d56b833b6ed4&sslmode=disable";
      
      SignupDBConnection (String firstName, String lastName, String username, String email, String password){
          this.firstName = firstName;
          this.lastName = lastName;
          this.username = username;
          this.email = email;
          this.password = password;
      }
      
      public String executeSignup(){
          
          try {
                
                Connection connection = DriverManager.getConnection(dbUrl);
                String sql = "INSERT INTO person (first_name, last_name, email, username, password) VALUES (?, ?, ?, ?, ?)";
                
                PreparedStatement stmt = connection.prepareStatement(sql);
                
                stmt.setString(1, firstName);
                stmt.setString(2, lastName);
                stmt.setString(3, email);
                stmt.setString(4, username);
                stmt.setString(5, password);
                
                int rows = stmt.executeUpdate();
                
                System.out.println("Rows impacted :" + rows);
                
                return "User Created Successfully!";
                  
                }catch (SQLException ex) {
                
               System.out.println(ex);
               return "Unable to Create User -- Try Another Username";
               
            }
          
          
      }
    
}
