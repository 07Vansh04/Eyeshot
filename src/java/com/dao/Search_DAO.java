/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dao;

import static com.sun.corba.se.spi.presentation.rmi.StubAdapter.request;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author USER
 */
public class Search_DAO {
   Connection con=null;
    public Search_DAO(Connection con)
    {
        this.con=con;
    }
    
    public List<String> fetchNameListFromDatabase(String search) {
        List<String> suggestions = new ArrayList<>();
        try {
            
            
            String q = "select title from album where title like ? limit 4;";
            PreparedStatement psmt = con.prepareStatement(q);
          
psmt.setString(1, search+"%");

             
            ResultSet rs = psmt.executeQuery();
          
           while (rs.next()) {

               
               suggestions.add(rs.getString("title"));

            }
           return suggestions;
        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }

    public String convertNameListToJson(List<String> nameList) {
        StringBuilder jsonBuilder = new StringBuilder();
        jsonBuilder.append("[");
        for (int i = 0; i < nameList.size(); i++) {
           String name = nameList.get(i);
            jsonBuilder.append("\"").append(name).append("\"");
            if (i < nameList.size() - 1) {
                jsonBuilder.append(",");
            }
        }
        jsonBuilder.append("]");
        return jsonBuilder.toString();
    }
    
}
