<%-- 
    Document   : SearchImage
    Created on : 8 Jun, 2023, 5:02:50 PM
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
            
             background: rgb(98,208,181);
          background: linear-gradient(0deg, rgba(98,208,181,1) 3%, rgba(253,187,45,0.1518732492997199) 100%);
            
        }
        header {
    display: flex;
    justify-content:space-between;
    align-items: center;
  
   
    
}


header li {
    list-style: none;
    display: inline-block;
    padding: 0 20px;
}

.logo{
    font-family:monospace;
    font-size: 25px;
    padding-left: 10px;
}


header a {
    text-decoration: none;
    color: #555;
    transition: all 0.3s ease 0s;
    font-size: 20px;
    font-family: math;
}
header a:hover {
   
    color: buttontext;
}


        .allUploads {
           
            display: flex;
            align-items: center;
            flex-direction: row;
           
        }

        .allUploads .box{
            gap:15px;
            max-width: 100vw;
            columns: 5 340px;



        }
        .box img{
            width: 100%;
        }



    </style>
    <body>
        <header class="header">
            <h3 class="logo">Eyeshot</h3>                  
            <ul class="navbar">
                <li><a href="profile.jsp">Home</a>

                </li>
                <li><a href="explore.jsp">Explore</a>

                </li>
                <li id="signUp"><a href="LoginSign.jsp">login/SignUp</a></li>

                <li><a href="upLoad.jsp">Upload</a></li>
            </ul> 
        </header>
        <div class="allUploads">
            <div class="box">


                <%

                    String search = request.getParameter("search");
                    ArrayList<Photo> all = new Upload_DAO(DatabaseConnection.getConnection()).getImagesByTitle(search);
                    for (Photo c : all) {
                        byte[] imageData = c.getBlobData().getBytes(1, (int) c.getBlobData().length());
                        String emailName=c.getEmail();
                        String encoded = Base64.getEncoder().encodeToString(imageData);
                        String pic = "data:image/jpg;base64," + encoded;


                %>

                <img  src=<%=pic%> />
                
                    <%=emailName%>
               


                <%}%>
            </div>






        </div>
    </body>
</html>
