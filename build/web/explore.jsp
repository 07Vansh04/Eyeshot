<%-- 
    Document   : explore
    Created on : 17 Apr, 2023, 8:00:06 PM
    Author     : hp
--%>

<%@page import="java.util.Base64"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.dao.Upload_DAO"%>
<%@page import="com.entities.Photo"%>
<%@page import="com.helper.DatabaseConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    </head>
    <style>
        body{
            box-sizing: 0px;
        }
        .name{
            border-radius: 10px;
         
           
        }
            
        .allUploads {
            display: flex;
            align-items: center;
        }
        
        .allUploads .box{
             gap:15px;
             max-width: 100vw;
             columns: 5 340px;
             padding: 15px;
              
              
            
           }
           .box img{
               width: 100%;
           }
              
               
                
                               
            
    </style>
    <body>
        <div class="allUploads">
            <div  style="" class="box">


        <%

           
            ArrayList<Photo> al = new Upload_DAO(DatabaseConnection.getConnection()).getAllImages();
            for (Photo c : al) {
                byte [] imageData = c.getBlobData().getBytes(1, (int) c.getBlobData().length());
                 String emailName=c.getEmail();
                String encoded = Base64.getEncoder().encodeToString(imageData);
            String pic = "data:image/jpg;base64," + encoded;
            
            

        %>

        <img  style="border-radius: 20px;position: relative;" src=<%=pic%> />
        <div class="name">
            <img style="width: 17px;height: 17px;display: inline-block;padding-left: 10px;" src="img/icons8-vintage-camera-50.png" alt=""/>
            <p style="display: inline-block;padding: 0px;padding-left: 4px;"><%=emailName%></p>
            
           
        </div>
        <%}%>
        </div>






    </div>
    </body>
</html>
