<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="css/upload.css" rel="stylesheet" type="text/css"/>

        <link href='https://fonts.googleapis.com/css?family=Lato:100,200,300,400,500,600,700' rel='stylesheet' type='text/css'>
 <style>
            body{
                background-image: url("img/uploadimg.jpg");
                background-repeat: no-repeat;
                background-attachment: fixed;
                background-size: cover;
                
            }
            .container{
                
                background-color: transparent;
             
                border-radius: 20px;
                box-shadow: rgba(0, 0, 0, 0.24) 0px 3px 8px;
                position: absolute;
                width: 100%;
                left: 40vw;
                top: 15vh;
                
            }
            @media only screen and (max-width: 600px) {
    .container{
        align-content: space-between;
        width: 100vw;
        left:9vw;
        
    }
}



        </style>    

    </head>
    <body>
        <div class="container" >
        <form class="form" action="UploadServlet" method="post" enctype="multipart/form-data" autocomplete="off">

            <h1><strong>File upload</strong> </h1>

            <div class="form-group">
                <label for="title">Title </label>
                <input type="text" name="title" id="title" class="form-controll"/>
            </div>
            <div class="form-group">
                <label for="caption">Caption </label>
                <input type="text" name="caption" id="caption" class="form-controll"/>
            </div>
            <div class="form-group">
               
            <input type="file" id="images" name="images">
            </div>

          
            <div class="form-group">
                <button type="submit">Upload images</button>
            </div>

        </form>

        </div>

    </body>
</html>
