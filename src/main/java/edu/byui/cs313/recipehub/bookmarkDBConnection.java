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
import java.sql.ResultSet;
import java.util.List;
import java.util.ArrayList;
import java.util.Map;

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
    private Integer id;
    private String keywords;
    
    
    private String dbUrl = "jdbc:postgresql://ec2-23-21-224-106.compute-1.amazonaws.com:5432/dddmjubbtu6r84?user=gktfmzbqqxantd&password=04cd22340bf076d8466ea3fa5e71ea7666e367212c1120c1571cf6bf13d050c1&sslmode=disable";

    bookmarkDBConnection (String recipe_api_id, String recipe_name, String ingredients, String image_url, Integer person_id, String keywords) {
        this.recipe_api_id = recipe_api_id;
        this.recipe_name = recipe_name;
        this.ingredients = ingredients;
        this.image_url = image_url;
        this.person_id = person_id;
        this.keywords = keywords;
    }
    
    bookmarkDBConnection (Integer id) {
        this.id = id;
    }
    
    public ArrayList<ArrayList<String>> getBookmarks() {
            
        ArrayList<ArrayList<String>> results = new ArrayList<ArrayList<String>>();
        try {
            Connection conn = DriverManager.getConnection(dbUrl);
            String sql = "select id, recipe_api_id, recipe_name, ingredients, image_url, person_id, keywords from bookmarks where person_id=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            
            
                            
            while (rs.next()){
                ArrayList<String> record = new ArrayList<String>();
                record.add(rs.getString("id"));
                record.add(rs.getString("recipe_api_id"));
                record.add(rs.getString("recipe_name"));
                record.add(rs.getString("ingredients").replace("[", "").replace("]",""));
                record.add(rs.getString("image_url"));
                record.add(rs.getString("person_id"));
                record.add(rs.getString("keywords"));
                results.add(record);
            }
            
            return results;
            
        } catch(SQLException ex) {
            System.out.println(ex);
            ArrayList<String> record = new ArrayList<String>();
            record.add("System Error");
            results.add(record);
            return results;
        }
    }
    
    public String addBookmark(){
        try {
            Connection conn = DriverManager.getConnection(dbUrl);
            String sql = "Insert into bookmarks (recipe_api_id, recipe_name, ingredients, image_url, person_id, keywords) values(?,?,?,?,?,?)";
            
            PreparedStatement ps = conn.prepareStatement(sql);
            
            ps.setString(1, recipe_api_id);
            ps.setString(2, recipe_name);
            ps.setString(3, ingredients);
            ps.setString(4, image_url);
            ps.setInt(5, person_id);
            ps.setString(6, keywords);
            
            int rows = ps.executeUpdate();
            
            System.out.println("Rows impacted: " + rows);
            
            return "Bookmark added successfully.";
        }catch(SQLException ex) {
            System.out.println(ex);
            return ex.toString();
        }
    }
    
    public Integer deleteBookmark(){
        try {
            Connection conn = DriverManager.getConnection(dbUrl);
            String sql = "Delete from bookmarks where id=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            Integer rows = ps.executeUpdate();
            System.out.println("Rows impacted: " + rows);
            
            return rows;
            
        } catch(SQLException ex) {
            System.out.println(ex);
            return 0;
        }
    
    }
}
