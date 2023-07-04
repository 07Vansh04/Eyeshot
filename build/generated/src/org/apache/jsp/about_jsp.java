package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class about_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("    <title>About Us</title>\r\n");
      out.write("    <style>\r\n");
      out.write("        /* CSS styles */\r\n");
      out.write("        body {\r\n");
      out.write("            font-family: Arial, sans-serif;\r\n");
      out.write("            margin: 0;\r\n");
      out.write("            padding: 0;\r\n");
      out.write("            background-image: url(\"img/insung-yoon-JHsGucAy7r0-unsplash.jpg\");\r\n");
      out.write("            \r\n");
      out.write("                background-repeat: no-repeat;\r\n");
      out.write("                background-attachment: fixed;\r\n");
      out.write("                background-size: cover;\r\n");
      out.write("        }\r\n");
      out.write("        header {\r\n");
      out.write("            background-color: #333;\r\n");
      out.write("            color: #fff;\r\n");
      out.write("            padding: 10px;\r\n");
      out.write("            height: 60px;\r\n");
      out.write("        }\r\n");
      out.write("        .container {\r\n");
      out.write("            max-width: 800px;\r\n");
      out.write("            margin: 0 auto;\r\n");
      out.write("            padding: 20px;\r\n");
      out.write("        \r\n");
      out.write("        }\r\n");
      out.write("        .team-section {\r\n");
      out.write("            background-image: url(\"team-background.jpg\");\r\n");
      out.write("            background-size: cover;\r\n");
      out.write("            background-position: center;\r\n");
      out.write("            padding: 40px;\r\n");
      out.write("            text-align: center;\r\n");
      out.write("        }\r\n");
      out.write("        .team-section h2 {\r\n");
      out.write("            color: #fff;\r\n");
      out.write("            margin-bottom: 20px;\r\n");
      out.write("        }\r\n");
      out.write("        .team-wrapper {\r\n");
      out.write("            background-color: antiquewhite;\r\n");
      out.write("            opacity: 90%;\r\n");
      out.write("            padding: 20px;\r\n");
      out.write("            border-radius: 10px;\r\n");
      out.write("            display: flex;\r\n");
      out.write("            justify-content: space-between;\r\n");
      out.write("            align-items: center;\r\n");
      out.write("        }\r\n");
      out.write("        .profile {\r\n");
      out.write("            display: flex;\r\n");
      out.write("            align-items: center;\r\n");
      out.write("        }\r\n");
      out.write("        .profile img {\r\n");
      out.write("            width: 100px;\r\n");
      out.write("            height: 100px;\r\n");
      out.write("            border-radius: 50%;\r\n");
      out.write("            margin-right: 20px;\r\n");
      out.write("            object-fit: cover;\r\n");
      out.write("        }\r\n");
      out.write("        .profile h3 {\r\n");
      out.write("            margin: 0;\r\n");
      out.write("        }\r\n");
      out.write("        .social-icons {\r\n");
      out.write("            list-style-type: none;\r\n");
      out.write("            padding: 0;\r\n");
      out.write("            margin: 0;\r\n");
      out.write("            display: flex;\r\n");
      out.write("        }\r\n");
      out.write("        .social-icons li {\r\n");
      out.write("            margin-right: 10px;\r\n");
      out.write("        }\r\n");
      out.write("        .contact-form {\r\n");
      out.write("            max-width: 500px;\r\n");
      out.write("            margin: 40px auto;\r\n");
      out.write("        }\r\n");
      out.write("        .contact-form input,\r\n");
      out.write("        .contact-form textarea {\r\n");
      out.write("            width: 100%;\r\n");
      out.write("            padding: 10px;\r\n");
      out.write("            margin-bottom: 20px;\r\n");
      out.write("        }\r\n");
      out.write("        .contact-form button {\r\n");
      out.write("            background-color: #333;\r\n");
      out.write("            color: #fff;\r\n");
      out.write("            padding: 10px 20px;\r\n");
      out.write("            border: none;\r\n");
      out.write("            cursor: pointer;\r\n");
      out.write("        }\r\n");
      out.write("        footer {\r\n");
      out.write("            background-color: #333;\r\n");
      out.write("            color: #fff;\r\n");
      out.write("            text-align: center;\r\n");
      out.write("            padding: 20px;\r\n");
      out.write("            \r\n");
      out.write("        }\r\n");
      out.write("    </style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("    <header>\r\n");
      out.write("        <h1>About Us</h1>\r\n");
      out.write("    </header>\r\n");
      out.write("    <div class=\"container\">\r\n");
      out.write("        <section class=\"team-section\">\r\n");
      out.write("            <h2>Meet Our Team</h2>\r\n");
      out.write("            <div class=\"team-wrapper\">\r\n");
      out.write("                <div class=\"profile\">\r\n");
      out.write("                    \r\n");
      out.write("                    <img src=\"img/vansh.jpg\" alt=\"\"/>\r\n");
      out.write("                    <div>\r\n");
      out.write("                        <h3>Vansh Navgotri</h3>\r\n");
      out.write("                        <ul class=\"social-icons\">\r\n");
      out.write("                            <li><a href=\"#\"><img <img style=\"width: 50px;height: 50px;\" src=\"img/icons8-linkedin-50.png\" alt=\"linked\"></a></li>\r\n");
      out.write("                            \r\n");
      out.write("                            <li><a href=\"#\"><img <img style=\"width: 50px;height: 50px;\" src=img/icons8-twitter-squared-50.png alt=\"Twitter\"></a></li>\r\n");
      out.write("                            \r\n");
      out.write("                            \r\n");
      out.write("                            <li ><a href=\"#\"><img style=\"width: 30px;height: 30px;margin-top: 10px;\" src=\"img/icons8-instagram-64.png\" alt=\"Instagram\"></a></li>\r\n");
      out.write("                            \r\n");
      out.write("                        </ul>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"profile\">\r\n");
      out.write("                    \r\n");
      out.write("                    <img src=\"img/nikhil.jpg\" alt=\"\"/>\r\n");
      out.write("                    <div>\r\n");
      out.write("                        <h3>Nikhil Mahajan</h3>\r\n");
      out.write("                        <ul class=\"social-icons\">\r\n");
      out.write("                            <li><a href=\"#\"><img <img style=\"width: 50px;height: 50px;\" src=\"img/icons8-linkedin-50.png\" alt=\"linked\"></a></li>\r\n");
      out.write("                            \r\n");
      out.write("                            <li><a href=\"#\"><img <img style=\"width: 50px;height: 50px;\" src=img/icons8-twitter-squared-50.png alt=\"Twitter\"></a></li>\r\n");
      out.write("                            \r\n");
      out.write("                            \r\n");
      out.write("                            <li ><a href=\"#\"><img style=\"width: 30px;height: 30px;margin-top: 10px;\" src=\"img/icons8-instagram-64.png\"  alt=\"Instagram\"></a></li>\r\n");
      out.write("                        </ul>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </section>\r\n");
      out.write("        <section>\r\n");
      out.write("            <h2 style=\"color: #fff;text-align:  center;\">Contact Us</h2>\r\n");
      out.write("            <form class=\"contact-form\" method=\"POST\">\r\n");
      out.write("                <input style=\"background-color: transparent;border-radius: 10px;color: #fff;\" type=\"text\" name=\"name\" placeholder=\"Your Name\" required>\r\n");
      out.write("                <input style=\"background-color: transparent;border-radius: 10px;color: #fff;\" type=\"email\" name=\"email\" placeholder=\"Your Email\" required>\r\n");
      out.write("                <textarea  style=\"background-color: transparent;border-radius: 10px;color: #fff;\" name=\"message\" placeholder=\"Your Message\" required></textarea>\r\n");
      out.write("                <button type=\"submit\">Send Message</button>\r\n");
      out.write("            </form>\r\n");
      out.write("        </section>\r\n");
      out.write("    </div>\r\n");
      out.write("    <footer>\r\n");
      out.write("        Made with Love and Passion\r\n");
      out.write("    </footer>\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
