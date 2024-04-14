package org.apache.jsp.JSP.Common_0020Pages;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class footer_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"CommonModules/Styles/footer.css\"/>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        <div class=\"footerDiv\">\r\n");
      out.write("        <div class=\"footerFlexDiv\">\r\n");
      out.write("            <div class=\"footerInsideDiv\">\r\n");
      out.write("            <img  class=\"footerLogo\" src=\"CommonModules/Assets/DEA-Logo.png\" alt=\"Logo\">\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"footerTextDiv\"> \r\n");
      out.write("            <div class=\"footerInsideDiv\">\r\n");
      out.write("                <h1 class='header'>Contact</h1>\r\n");
      out.write("                <p class='footerDis'>011-1234567<br>\r\n");
      out.write("                    contact@dietme.com<br>\r\n");
      out.write("                    310/A,Pitipana Road,<br>\r\n");
      out.write("                    Homagama,Sri Lanka.\r\n");
      out.write("                </p>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class='footerInsideDiv'>\r\n");
      out.write("                <h1 class='header' >Connect</h1>\r\n");
      out.write("                <div class=\"socialMediaDiv\">\r\n");
      out.write("                    <img class=\"footerIcons\"  src=\"CommonModules/Assets/facebook.png\" alt='facebook image'>\r\n");
      out.write("                    <img class=\"footerIcons\" src=\"CommonModules/Assets/instergram.png\" alt='instergram image'>\r\n");
      out.write("                    <img class=\"footerIcons\" src=\"CommonModules/Assets/whatsapp.png\" alt='whatsapp image'>\r\n");
      out.write("                </div>\r\n");
      out.write("                <h2 class=\"openHours\">Open Hours</h2>\r\n");
      out.write("                <p class='footerDis'>06.00 AM - 08.00 PM</p>\r\n");
      out.write("            </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"footerPlaceHolder\"></div>\r\n");
      out.write("            <p class='alrightRecived' >Alright Received @ Team Hydra 2024</p>\r\n");
      out.write("    </div>\r\n");
      out.write("        \r\n");
      out.write("    </body>\r\n");
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
