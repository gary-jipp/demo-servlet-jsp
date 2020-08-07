package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HelloServlet extends HttpServlet {
  public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
    // Save something to the request so our JSP can access it
    request.setAttribute("mydata", "This is some Data");

    // Get the Application Dispay-Name from web.xml and save that
    String AppName = request.getServletContext().getServletContextName();
    request.setAttribute("appName", AppName);

    // Get the version attribute and save to request object
    String version = request.getServletContext().getInitParameter("version");
    request.setAttribute("version", version);

    // We saved the name of the JSP file for this servlet in web.xml
    String page = getInitParameter("page");
    String jspName = response.encodeRedirectURL(page);

    // Forward to the JSP
    ServletContext context = request.getSession().getServletContext();
    RequestDispatcher dispatcher = context.getRequestDispatcher(jspName);
    dispatcher.forward(request, response);
  }
}