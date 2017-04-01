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
 * @author JL5372
 */
public class bookmarkDBConnection {
    
    private String recipe_api_id;
    private String recipe_name;
    private String ingredients;
    private String image_url;
    private Integer person_id;
    
    
    private String dbUrl = "jdbc:postgresql://ec2-23-21-224-106.compute-1.amazonaws.com:5432/dddmjubbtu6r84?user=gktfmzbqqxantd&password=04cd22340bf076d8466ea3fa5e71ea7666e367212c1120c1571cf6bf13d050c1&sslmode=disable";

    bookmarkDBConnection (String recipe_api_id, String recipe_name, String ingredients, String image_url, Integer person_id) {
        this.recipe_api_id = recipe_api_id;
        this.recipe_name = recipe_name;
        this.ingredients = ingredients;
        this.image_url = image_url;
        this.person_id = person_id;
    }
    
    public String addBookmark(){
        try {
            Connection conn = DriverManager.getConnection(dbUrl);
            String sql = "Insert into bookmarks (recipe_api_id, recipe_name, ingredients, image_url, person_id) values(?,?,?,?,?)";
            
            PreparedStatement ps = conn.prepareStatement(sql);
            
            ps.setString(1, recipe_api_id);
            ps.setString(2, recipe_name);
            ps.setString(3, ingredients);
            ps.setString(4, image_url);
            ps.setInt(5, person_id);
            
            int rows = ps.executeUpdate();
            
            System.out.println("Rows impacted: " + rows);
            
            return "Bookmark added successfully.";
        }catch(SQLException ex) {
            System.out.println(ex);
            return ex.toString();
        }
    }
}
