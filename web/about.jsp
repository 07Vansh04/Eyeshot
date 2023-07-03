<!DOCTYPE html>
<html>
<head>
    <title>About Us</title>
    <style>
        /* CSS styles */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-image: url("img/insung-yoon-JHsGucAy7r0-unsplash.jpg");
            
                background-repeat: no-repeat;
                background-attachment: fixed;
                background-size: cover;
        }
        header {
            background-color: #333;
            color: #fff;
            padding: 10px;
            height: 60px;
        }
        .container {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
        
        }
        .team-section {
            background-image: url("team-background.jpg");
            background-size: cover;
            background-position: center;
            padding: 40px;
            text-align: center;
        }
        .team-section h2 {
            color: #fff;
            margin-bottom: 20px;
        }
        .team-wrapper {
            background-color: antiquewhite;
            opacity: 90%;
            padding: 20px;
            border-radius: 10px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .profile {
            display: flex;
            align-items: center;
        }
        .profile img {
            width: 100px;
            height: 100px;
            border-radius: 50%;
            margin-right: 20px;
            object-fit: cover;
        }
        .profile h3 {
            margin: 0;
        }
        .social-icons {
            list-style-type: none;
            padding: 0;
            margin: 0;
            display: flex;
        }
        .social-icons li {
            margin-right: 10px;
        }
        .contact-form {
            max-width: 500px;
            margin: 40px auto;
        }
        .contact-form input,
        .contact-form textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
        }
        .contact-form button {
            background-color: #333;
            color: #fff;
            padding: 10px 20px;
            border: none;
            cursor: pointer;
        }
        footer {
            background-color: #333;
            color: #fff;
            text-align: center;
            padding: 20px;
            
        }
    </style>
</head>
<body>
    <header>
        <h1>About Us</h1>
    </header>
    <div class="container">
        <section class="team-section">
            <h2>Meet Our Team</h2>
            <div class="team-wrapper">
                <div class="profile">
                    
                    <img src="img/vansh.jpg" alt=""/>
                    <div>
                        <h3>Vansh Navgotri</h3>
                        <ul class="social-icons">
                            <li><a href="#"><img <img style="width: 50px;height: 50px;" src="img/icons8-linkedin-50.png" alt="linked"></a></li>
                            
                            <li><a href="#"><img <img style="width: 50px;height: 50px;" src=img/icons8-twitter-squared-50.png alt="Twitter"></a></li>
                            
                            
                            <li ><a href="#"><img style="width: 30px;height: 30px;margin-top: 10px;" src="img/icons8-instagram-64.png" alt="Instagram"></a></li>
                            
                        </ul>
                    </div>
                </div>
                <div class="profile">
                    
                    <img src="img/nikhil.jpg" alt=""/>
                    <div>
                        <h3>Nikhil Mahajan</h3>
                        <ul class="social-icons">
                            <li><a href="#"><img <img style="width: 50px;height: 50px;" src="img/icons8-linkedin-50.png" alt="linked"></a></li>
                            
                            <li><a href="#"><img <img style="width: 50px;height: 50px;" src=img/icons8-twitter-squared-50.png alt="Twitter"></a></li>
                            
                            
                            <li ><a href="#"><img style="width: 30px;height: 30px;margin-top: 10px;" src="img/icons8-instagram-64.png"  alt="Instagram"></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>
        <section>
            <h2 style="color: #fff;text-align:  center;">Contact Us</h2>
            <form class="contact-form" method="POST">
                <input style="background-color: transparent;border-radius: 10px;color: #fff;" type="text" name="name" placeholder="Your Name" required>
                <input style="background-color: transparent;border-radius: 10px;color: #fff;" type="email" name="email" placeholder="Your Email" required>
                <textarea  style="background-color: transparent;border-radius: 10px;color: #fff;" name="message" placeholder="Your Message" required></textarea>
                <button type="submit">Send Message</button>
            </form>
        </section>
    </div>
    <footer>
        Made with Love and Passion
    </footer>
</body>
</html>
