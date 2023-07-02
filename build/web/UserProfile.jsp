<%-- 
    Document   : UserProfile
    Created on : 4 Mar, 2023, 3:38:48 PM
    Author     : hp
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.dao.Upload_DAO"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.helper.DatabaseConnection"%>
<%@page import="java.util.Base64"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.dao.User_DAO"%>
<%@page import="com.entities.Photo"%>
<%@page import="com.entities.User"%>

<%
    User user = (User) session.getAttribute("csmr");
    User_DAO u = new User_DAO();
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
         <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User_Profile</title>
        <link href="css/homecss.css" rel="stylesheet" type="text/css"/>
        <link href="css/UserProfile.css" rel="stylesheet" type="text/css"/>

        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Trirong">
       
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"/>
        
     
    </head>


    <header class="header">
        <h3 class="logo" style="color: black;">Eyeshot</h3>                  
        <ul class="navbar">
            <li><a href="explore.jsp">Explore</a>
               
            </li>
            <li id="signUp"><a href="Logout">Logout</a></li>
            <li ><a href="UserProfile.jsp"><%=user.getName()%></a></li>
            <li><a href="upLoad.jsp">Upload</a></li>
        </ul> 
    </header>



    <!--middle starts-->


    <div class="bg-image"></div>

    <div class="bg-text">
        <form action="EditUserProfile" method="Post" enctype="multipart/form-data">

            <div><img class="userProfile" 
                      <%
                          boolean b = u.isDefault(user.getEmail());

                          if (b == false) {
                      %>

                      src="userPics/default.jpg" alt="Pic"
                      <%
                      } else {

                          String pic = "data:image/jpg;base64," + u.getImage(user.getEmail());

                      %>
                      src=<%=pic%>    

                      <%}%>

                      />

            </div>

            <input class="filed" type="file" name="file" />
            <button type="submit">Submit</button>
        </form>


    </div>





    <!--middle Ends-->      
 <hr style="margin-top: 160px;">
 <div class="allUploads">
     <div class="box">
       


        <%

           
            ArrayList<Photo> al = new Upload_DAO(DatabaseConnection.getConnection()).getImagesByEmail(user.getEmail());
            
            out.println();
            for (Photo c : al) {
               
                byte [] imageData = c.getBlobData().getBytes(1, (int) c.getBlobData().length());
            String encoded = Base64.getEncoder().encodeToString(imageData);
            String pic = "data:image/jpg;base64," + encoded;
            
            

        %>
        <img  style="border-radius: 10px;" src=<%=pic%> />

        <%} %>
        
        </div>


    </div>


</html>
